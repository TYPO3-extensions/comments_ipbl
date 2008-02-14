<?php

function fetchDropLasso() {
	if (!extension_loaded('curl')) {
		die('curl extension is required!');
	}
	if (!($ch = curl_init('http://www.spamhaus.org/DROP/drop.lasso'))) {
		die('Could not create curl channel!');
	}

	$file = tempnam(is_callable('sys_get_temp_dir') ? sys_get_temp_dir() : '/tmp', '');
	$fd = fopen($file, 'w+');
	curl_setopt($ch, CURLOPT_AUTOREFERER, true);
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($ch, CURLOPT_FORBID_REUSE, true);
	curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
	curl_setopt($ch, CURLOPT_MUTE, true);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
	curl_setopt($ch, CURLOPT_MAXREDIRS, 2);
	curl_setopt($ch, CURLOPT_FILE, $fd);
	curl_exec($ch);
	fclose($fd);
	if (($failed = (curl_errno($ch) != 0))) {
		echo 'curl failed with error %d [%s]', curl_errno($ch), curl_error($ch);
	}
	curl_close($ch);
	if ($failed) {
		@unlink($file);
		die;
	}
	return $file;
}

function createTableDef($fd) {
	fwrite($fd, '#
# Table structure for table \'tx_commentsipbl_static\'
#
DROP TABLE IF EXISTS tx_commentsipbl_static;
CREATE TABLE tx_commentsipbl_static (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT \'0\' NOT NULL,
	tstamp int(11) DEFAULT \'0\' NOT NULL,
	crdate int(11) DEFAULT \'0\' NOT NULL,
	cruser_id int(11) DEFAULT \'0\' NOT NULL,
	ipaddr varchar(80) DEFAULT \'\' NOT NULL,
	comment text,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY ipaddr (ipaddr(22))
);

');
}

if ($_SERVER['REMOTE_ADDR']) {
	// May not be called from web!
	die('This is a command line tool!');
}

if (($filename = fetchDropLasso())) {
	$fd = fopen($filename, 'rt');
	$fsql = fopen('ext_tables_static+adt.sql', 'w');
	createTableDef($fsql);
	while (false !== ($s = fgets($fd))) {
		if (false !== ($pos = strpos($s, ';'))) {
			$s = substr($s, 0, $pos);
		}
		if (($s = trim($s))) {
			fprintf($fsql, 'INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES (\'%s\',\'%s\');%c',
				addslashes($s), 'DROP lasso', 10);
		}
	}
	fclose($fd);
	fclose($fsql);
	unlink($filename);
}

?>