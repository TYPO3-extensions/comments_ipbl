<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');

$TCA['tx_commentsipbl_local'] = array (
	'ctrl' => $TCA['tx_commentsipbl_local']['ctrl'],
	'interface' => array (
		'showRecordFieldList' => 'ipaddr,comment'
	),
	'feInterface' => $TCA['tx_commentsipbl_local']['feInterface'],
	'columns' => array (
		'ipaddr' => array (
			'exclude' => 1,
			'label' => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_local.ipaddr',
			'config' => array (
				'type' => 'input',
				'size' => '30',
				'eval' => 'trim,nospace,unique',
			)
		),
		'crdate' => array(
			'excude' => 1,
			'label' => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_local.crdate',
			'config' => array(
				'type' => 'input',
				'eval' => 'datetime',
				'readOnly' => true,
			),
		),
		'comment' => array (
			'exclude' => 1,
			'label' => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_local.comment',
			'config' => array (
				'type' => 'text',
				'cols' => '30',
				'rows' => '5',
			)
		),
	),
	'types' => array (
		'0' => array('showitem' => 'ipaddr;;;;1-1-1, crdate, comment')
	),
	'palettes' => array (
		'1' => array('showitem' => '')
	)
);



$TCA['tx_commentsipbl_static'] = array (
	'ctrl' => $TCA['tx_commentsipbl_static']['ctrl'],
	'interface' => array (
		'showRecordFieldList' => 'ipaddr,comment'
	),
	'feInterface' => $TCA['tx_commentsipbl_static']['feInterface'],
	'columns' => array (
		'ipaddr' => array (
			'exclude' => 1,
			'label' => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_static.ipaddr',
			'config' => array (
				'type' => 'input',
				'size' => '30',
				'eval' => 'trim,nospace,unique',
			)
		),
		'comment' => array (
			'exclude' => 1,
			'label' => 'LLL:EXT:comments_ipbl/locallang_db.xml:tx_commentsipbl_static.comment',
			'config' => array (
				'type' => 'text',
				'cols' => '30',
				'rows' => '5',
			)
		),
	),
	'types' => array (
		'0' => array('showitem' => 'ipaddr;;;;1-1-1, comment')
	),
	'palettes' => array (
		'1' => array('showitem' => '')
	)
);
?>