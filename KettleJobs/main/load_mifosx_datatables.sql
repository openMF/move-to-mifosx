CREATE TABLE IF NOT EXISTS `personal info` (
  `client_id` bigint(20) NOT NULL,
  `Date Of Birth` date DEFAULT NULL,
  `Gender_cd_Gender` int(11) DEFAULT NULL,
  `MaritalStatus_cd_Marital Status` int(11) DEFAULT NULL,
  `Number Of Children` int(11) DEFAULT NULL,
  `Citizenship_cd_Citizenship` int(11) DEFAULT NULL,
  `EducationLevel_cd_Education Level` int(11) DEFAULT NULL,
  `BusinessActivities_cd_Activities` int(11) DEFAULT NULL,
  `PovertyStatus_cd_Poverty Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `fk_personal_info_client_id` FOREIGN KEY (`client_id`) REFERENCES `m_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `address` (
  `client_id` bigint(20) NOT NULL,
  `Physical Home Address` varchar(200) NOT NULL,
  `Work Place Address` varchar(200) DEFAULT NULL,
  `PO BOX` varchar(200) DEFAULT NULL,
  `City District` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Other_Phone` varchar(200) DEFAULT NULL,
  `Main_Telephone` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `fk_address_client_id` FOREIGN KEY (`client_id`) REFERENCES `m_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `call reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `MFI official` varchar(200) DEFAULT NULL,
  `Type of call` varchar(200) DEFAULT NULL,
  `Place of call` varchar(200) DEFAULT NULL,
  `Objective of call` varchar(2000) DEFAULT NULL,
  `Result of call` varchar(1000) DEFAULT NULL,
  `Follow-up date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_client_id` (`client_id`),
  CONSTRAINT `fk_call_reports_client_id` FOREIGN KEY (`client_id`) REFERENCES `m_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
