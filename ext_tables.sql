#
# Table structure for table 'tx_commentsipbl_local'
#
CREATE TABLE tx_commentsipbl_local (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	ipaddr varchar(255) DEFAULT '' NOT NULL,
	comment text,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY ipaddr (ipaddr)
);
