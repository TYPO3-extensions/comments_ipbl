<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');
t3lib_extMgm::addUserTSConfig('
	options.saveDocNew.tx_commentsipbl_local=1
');

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['comments']['externalSpamCheck'][$_EXTKEY] = 'EXT:comments_ipbl/class.tx_commentsipbl_hooks.php:tx_commentsipbl_hooks->externalSpamCheckHook';
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['comments']['sendNotificationMail'][$_EXTKEY] = 'EXT:comments_ipbl/class.tx_commentsipbl_hooks.php:tx_commentsipbl_hooks->sendNotificationMailHook';
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['comments']['eID_postProc'][$_EXTKEY] = 'EXT:comments_ipbl/class.tx_commentsipbl_hooks.php:tx_commentsipbl_hooks->ipBlockHook';

?>