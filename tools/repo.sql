-- 
-- Created by SQL::Translator::Producer::MySQL
-- Created on Sat Dec 26 22:17:47 2009
-- 
SET foreign_key_checks=0;

--
-- Table: `conflicts`
--
CREATE TABLE `rpm_conflicts` (
  `id` int(11) not null auto_increment,
  `rpm_package_id` int(11) not null,
  `name` varchar(255),
  `flags` varchar(255),
  `epoch` varchar(255),
  `version` varchar(255),
  `release` varchar(255),
  INDEX `id_pkg_idx` (`id`, `rpm_package_id`),
  PRIMARY KEY(`id`)
);

--
-- Table: `db_info`
--
-- CREATE TABLE `db_info` (
--  `dbversion` INTEGER,
--  `checksum` varchar(255)
-- );

--
-- Table: `files`
--
CREATE TABLE `rpm_files` (
  `id` int(11) not null auto_increment,
  `rpm_package_id` int(11) not null,
  `name` varchar(255),
  `type` varchar(255),
  INDEX `id_pkg_idx` (`id`, `rpm_package_id`),
  PRIMARY KEY(`id`)
);

--
-- Table: `obsoletes`
--
CREATE TABLE `rpm_obsoletes` (
  `id` int(11) not null auto_increment,
  `rpm_package_id` int(11) not null,
  `name` varchar(255),
  `flags` varchar(255),
  `epoch` varchar(255),
  `version` varchar(255),
  `release` varchar(255),
  INDEX `id_pkg_idx` (`id`, `rpm_package_id`),
  PRIMARY KEY(`id`)
);

--
-- Table: `packages`
--
CREATE TABLE `rpm_packages` (
  `id` int(11) not null auto_increment,
  `repo_id` int(11) not null,
  `key` varchar(255),
  `name` varchar(255),
  `arch` varchar(255),
  `version` varchar(255),
  `epoch` varchar(255),
  `release` varchar(255),
  `summary` varchar(255),
  `description` text,
  `url` varchar(255),
  `time_file` INTEGER,
  `time_build` INTEGER,
  `rpm_license` varchar(255),
  `rpm_vendor` varchar(255),
  `rpm_group` varchar(255),
  `rpm_buildhost` varchar(255),
  `rpm_sourcerpm` varchar(255),
  `rpm_header_start` INTEGER,
  `rpm_header_end` INTEGER,
  `rpm_packager` varchar(255),
  `size_package` INTEGER,
  `size_installed` INTEGER,
  `size_archive` INTEGER,
  `location_href` varchar(255),
  `location_base` varchar(255),
  `checksum_type` varchar(255),
  INDEX packagename (`name`),
  INDEX packagekey (`key`),
  INDEX repo_idx (`repo_id`),
  PRIMARY KEY (`id`)
);

--
-- Table: `provides`
--
CREATE TABLE `rpm_provides` (
  `id` int(11) not null auto_increment,
  `rpm_package_id` int(11) not null,
  `name` varchar(255),
  `flags` varchar(255),
  `epoch` varchar(255),
  `version` varchar(255),
  `release` varchar(255),
  `pkgKey` INTEGER,
  INDEX providesname (`name`),
  INDEX `id_pkg_idx` (`id`, `rpm_package_id`),
  PRIMARY KEY(`id`)
);

--
-- Table: `requires`
--
CREATE TABLE `rpm_requires` (
  `id` int(11) not null auto_increment,
  `rpm_package_id` int(11) not null,
  `name` varchar(255),
  `flags` varchar(255),
  `epoch` varchar(255),
  `version` varchar(255),
  `release` varchar(255),
  `pkgKey` INTEGER,
  `pre` enum('0','1'),
  INDEX requiresname (`name`),
  INDEX `id_pkg_idx` (`id`, `rpm_package_id`),
  PRIMARY KEY(`id`)
);

SET foreign_key_checks=1;

