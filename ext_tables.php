<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');
$TCA['tx_commentsipbl_local'] = array (
	'ctrl' => array (
		'title'     => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_local',
		'label'     => 'ipaddr',
		'tstamp'    => 'tstamp',
		'crdate'    => 'crdate',
		'cruser_id' => 'cruser_id',
		'default_sortby' => "ORDER BY ipaddr",
		'dynamicConfigFile' => t3lib_extMgm::extPath($_EXTKEY).'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath($_EXTKEY).'icon_tx_commentsipbl_local.gif',
	),
);

$TCA['tx_commentsipbl_static'] = array (
	'ctrl' => array (
		'title'     => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_static',
		'label'     => 'ipaddr',
		'tstamp'    => 'tstamp',
		'crdate'    => 'crdate',
		'cruser_id' => 'cruser_id',
		'default_sortby' => "ORDER BY ipaddr",
		'dynamicConfigFile' => t3lib_extMgm::extPath($_EXTKEY).'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath($_EXTKEY).'icon_tx_commentsipbl_static.gif',
		'is_static'	=> true,
	),
);

t3lib_extMgm::addStaticFile($_EXTKEY,'static/ip_blocking_for_comments/', 'IP blocking for comments');
?>