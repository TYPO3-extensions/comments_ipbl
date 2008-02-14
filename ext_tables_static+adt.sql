#
# Table structure for table 'tx_commentsipbl_static'
#
DROP TABLE IF EXISTS tx_commentsipbl_static;
CREATE TABLE tx_commentsipbl_static (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	ipaddr varchar(80) DEFAULT '' NOT NULL,
	comment text,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY ipaddr (ipaddr(22))
);

INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('116.199.128.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('116.50.8.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('119.18.192.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('132.232.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('134.33.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('138.252.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('141.193.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('152.147.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('167.97.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('192.160.44.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.110.136.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.142.244.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.16.100.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.19.120.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.200.29.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.238.120.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.238.36.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.33.128.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.33.192.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('193.93.236.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('194.110.69.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('194.116.146.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('194.126.193.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('194.146.204.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.114.16.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.114.8.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.206.120.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.234.159.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.238.242.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.248.83.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.64.162.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.74.88.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('195.95.161.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('196.4.167.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('198.151.152.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('198.186.16.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('199.60.102.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('200.108.160.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('200.124.64.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('201.71.0.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('202.14.69.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('202.62.252.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.19.101.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.31.88.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.33.120.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.34.205.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.34.71.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('203.82.16.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.13.32.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.14.0.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.14.24.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.153.248.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.236.0.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.52.255.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.62.213.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.89.156.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('204.89.224.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('205.172.188.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('205.210.137.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('205.235.64.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('205.236.189.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('206.197.175.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('206.197.176.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('206.197.177.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('206.197.28.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('206.197.29.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('208.64.44.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('208.76.48.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('208.77.224.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('208.81.136.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('209.165.224.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('209.213.48.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('210.14.128.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('216.130.192.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('216.211.144.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('216.243.240.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('216.255.176.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('216.74.64.0/18','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('217.69.112.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('58.65.232.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('58.83.0.0/16','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('58.83.12.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('64.255.128.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('64.28.176.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('65.255.32.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('66.102.32.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('66.185.112.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('66.55.160.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('67.213.128.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('69.50.160.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('69.8.176.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('78.95.128.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('79.142.144.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('79.142.152.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('81.17.16.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('81.29.240.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('81.95.144.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('83.223.224.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('83.223.240.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('85.255.112.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('86.105.230.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('86.111.128.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('86.59.128.0/17','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('86.59.160.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('88.206.0.0/17','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('88.206.64.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('88.206.8.0/21','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('88.206.80.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('89.145.128.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('89.187.192.0/19','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('89.208.122.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('89.233.64.0/18','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('89.35.0.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.146.112.0/20','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.146.64.0/18','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.152.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.192.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.216.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.40.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.56.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.193.88.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.194.140.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.195.116.0/23','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.196.216.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.196.232.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.198.71.0/24','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.124.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.132.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.144.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.164.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.176.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.56.0/22','DROP lasso');
INSERT INTO tx_commentsipbl_static (ipaddr,comment) VALUES ('91.200.72.0/22','DROP lasso');
