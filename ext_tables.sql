#
# Table structure for table 'sys_file_collection'
#
CREATE TABLE sys_file_collection (
	_migrateddamcatuid int(11) unsigned DEFAULT '0' NOT NULL,
	_migrateddamselectionuid int(11) unsigned DEFAULT '0' NOT NULL
);

#
# Table structure for table 'sys_category'
#
CREATE TABLE sys_category (
	_migrateddamcatuid int(11) unsigned DEFAULT '0' NOT NULL
);

#
# Table structure for table 'tx_dam'
#
CREATE TABLE tx_dam (
	_missingfile tinyint(4) unsigned DEFAULT '0' NOT NULL,
	_migratedfaluid int(11) unsigned DEFAULT '0' NOT NULL,
	KEY migratedRecords (_migratedfaluid),
	KEY deletedRecords (uid, deleted),
	KEY missingFiles (_missingfile)
);
