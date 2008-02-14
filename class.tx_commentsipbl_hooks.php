<?php
/***************************************************************
*  Copyright notice
*
*  (c) 2007 Dmitry Dulepov (dmitry@typo3.org)
*  All rights reserved
*
*  This script is part of the TYPO3 project. The TYPO3 project is
*  free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation; either version 2 of the License, or
*  (at your option) any later version.
*
*  The GNU General Public License can be found at
*  http://www.gnu.org/copyleft/gpl.html.
*  A copy is found in the textfile GPL.txt and important notices to the license
*  from the author is found in LICENSE.txt distributed with these scripts.
*
*
*  This script is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  This copyright notice MUST APPEAR in all copies of the script!
***************************************************************/
/**
* class.tx_commentsipbl_hooks.php
*
* Commenting system hooks.
*
* $Id: $
*
* @author Dmitry Dulepov <dmitry@typo3.org>
*/
/**
 * [CLASS/FUNCTION INDEX of SCRIPT]
 */

/**
 * Commenting system hooks. Each hook receives the following in <code>$params</code>:
 * <ul>
 * 	<li><code>uid</code> - uid of the item</li>
 * </ul>
 * Each hook returns time when commenting should be stopped. Thus 0 disables commenting and
 * <code>PHP_INT_MAX</code> means there is no limit.
 *
 * @author Dmitry Dulepov <dmitry@typo3.org>
 *
 */
class tx_commentsipbl_hooks {
	/**
	 * Checks ip blocking lists and sets spam points to a high value if IP address
	 * is found in spam lists.
	 *
	 * @param	array	$params	Parameters to the function
	 * @param	tx_comments_pi1	$pObj	Parent object
	 * @return	int	Number of spam points
	 * @see	tx_comments_pi1::processSubmission_checkTypicalSpam()
	 */
	public function externalSpamCheckHook(&$params, &$pObj) {
		$points = 0;
		$ipaddr = $this->getIpAddr();
		if ($pObj->conf['spamProtect.']['spamCutOffPoint'] && $this->checkTableBLs($ipaddr) || $this->checkNetworkBLs($ipaddr)) {
			/* @var $pObj tx_comments_pi1 */
			$points = $pObj->conf['spamProtect.']['spamCutOffPoint'] + 1;
		}
		return $points;
	}

	/**
	 * Adds new markers to notification e-mail.
	 *
	 * @param	array	$params	Parameters to the function
	 * @param	tx_comments_pi1	$pObj	Parent object
	 * @return	int	Number of spam points
	 * @see	tx_comments_pi1::sendNotificationEmail()
	 */
	public function sendNotificationMailHook($params, &$pObj) {
		$markers = $params['markers'];
		$markers['###DELETE_LINK_AND_BLOCK###'] = $markers['###DELETE_LINK###'] . '&ip=' . ip2long($this->getIpAddr());
		$markers['###KILL_LINK_AND_BLOCK###'] = $markers['###DELETE_LINK###'] . '&ip=' . ip2long($this->getIpAddr());
		return $markers;
	}


	/**
	 * Adds ip address to local block list.
	 *
	 * @param	array	$params	Parameters to the function
	 * @param	tx_comments_pi1	$pObj	Parent object
	 * @return	int	Number of spam points
	 * @see	tx_comments_pi1::sendNotificationEmail()
	 */
	public function ipBlockHook($params, &$pObj) {
		$ip = long2ip(t3lib_div::_GP('ip'));
		/* @var $pObj tx_comments_eID */
		if ($ip && ($pObj->command == 'delete' || $pObj->command == 'kill')) {
			$GLOBALS['TYPO3_DB']->exec_INSERTquery('tx_commentsipbl_local', array(
				'crdate' => time(),
				'tstamp' => time(),
				'ipaddr' => $ip,
				'comment' => '',
			));
		}
	}

	/**
	 * Retrieves real ip address of the client
	 *
	 * @return	string	IP address
	 */
	private function getIpAddr() {
		$ipaddr = $_SERVER['HTTP_X_FORWARDED_FOR'];
		if ($ipaddr && long2ip(ip2long($ipaddr)) == $ipaddr && !preg_match('/^127\.0|192\.168\.|172\.16\.|10\.', $ipaddr)) {
			return $ipaddr;
		}
		return t3lib_div::getIndpEnv('REMOTE_ADDR');
	}


	/**
	 * Checks table-based blocking lists.
	 *
	 * @param	string	$ipaddr	IP address
	 * @return	boolean	true if exists in the list
	 */
	private function checkTableBLs($ipaddr) {
		return $this->checkLocalBL($ipaddr) || $this->checkStaticBL($ipaddr);
	}


	/**
	 * Checks local blocking lists.
	 *
	 * @param	string	$ipaddr	IP address
	 * @return	boolean	true if exists in the list
	 */
	private function checkLocalBL($ipaddr) {
		$recs = $GLOBALS['TYPO3_DB']->exec_SELECTgetRows('COUNT(*) AS t', 'tx_commentsipbl_local',
			'ipaddr=' . $GLOBALS['TYPO3_DB']->fullQuoteStr($ipaddr, 'tx_commentsipbl_local'));
		return ($recs[0]['t'] != 0);
	}


	/**
	 * Checks static blocking lists.
	 *
	 * @param	string	$ipaddr	IP address
	 * @return	boolean	true if exists in the list
	 */
	private function checkStaticBL($ipaddr) {
		$parts = explode('.', $ipaddr);
		$recs = $GLOBALS['TYPO3_DB']->exec_SELECTgetRows('ipaddr', 'tx_commentsipbl_static',
			'ipaddr LIKE ' . $GLOBALS['TYPO3_DB']->fullQuoteStr($parts[0] . '.' . $parts[1] . '.%', 'tx_commentsipbl_static'));
		foreach ($recs as $rec) {
			list($addr, $mask) = explode('/', $rec['ipaddr']);
			if ($mask == '') {
				if ($addr == $ipaddr) {
					return true;
				}
			}
			else {
				$mask = 0xFFFFFFFF << (32 - $mask);
				if (long2ip(ip2long($ipaddr) & $mask) == $addr) {
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * Checks network blocking lists.
	 *
	 * @param	string	$ipaddr	IP address
	 * @return	boolean	true if exists in the list
	 */
	function checkNetworkBLs($ipaddr) {
		$parts = explode('.', $ipaddr);
		$ipaddr = $parts[3] . '.' . $parts[2] . '.' .$parts[1] . '.' .$parts[0];
		$sysconf = unserialize($GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['comments_ipbl']);
		$parts = t3lib_div::trimExplode(',', $sysconf['dnsbl_list'], true);
		foreach ($parts as $dnsbl) {
			if (substr(gethostbyname($ipaddr . '.' . $dnsbl), 0, 8) == '127.0.0.') {
				return true;
			}
		}
		return false;
	}
}

if (defined('TYPO3_MODE') && $TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/comments_ipbl/class.tx_commentsipbl_hooks.php']) {
	include_once($TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/comments_ipbl/class.tx_commentsipbl_hooks.php']);
}

?>