DROP TABLE IF EXISTS `customer details`;
CREATE TABLE `customer details` (
  `client_id` bigint(20) NOT NULL,
  `Date Of Birth` date DEFAULT NULL,
  `Gender_cd_Gender` int(11) DEFAULT NULL,
  `Ethinicity_cd_Ethinicity` int(11) DEFAULT NULL,
  `Religion_cd_Religion` int(11) DEFAULT NULL,
  `BusinessActivities_cd_BusinessActivities` int(11) DEFAULT NULL,
  `MaritalStatus_cd_MaritalStatus` int(11) DEFAULT NULL,
  `EducationLevel_cd_EducationLevel` int(11) DEFAULT NULL,
  `Number Of Children` int(11) DEFAULT NULL,
  `Government Id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `fk_customer_details_client_id` FOREIGN KEY (`client_id`) REFERENCES `m_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `client_id` bigint(20) NOT NULL,
  `Physical Home Address` varchar(200) DEFAULT NULL,
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

DROP TABLE IF EXISTS `Relatives`;
CREATE TABLE `Relatives` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `SpouseFather_cd_Relationship` int(11) DEFAULT NULL,
  `First Name` varchar(2000) DEFAULT NULL,
  `Last Name` varchar(2000) DEFAULT NULL,
  `Gender_cd_Gender` int(11) DEFAULT NULL,
  `Date Of Birth` date DEFAULT NULL,
  `LivingStatus_cd_Living Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_client_id` (`client_id`),
  CONSTRAINT `fk_relatives_client_id` FOREIGN KEY (`client_id`) REFERENCES `m_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `luc`;
CREATE TABLE `luc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(20) NOT NULL,
  `Conducted_Date` date DEFAULT NULL,
  `Loan_Utilization_Status` varchar(500) NOT NULL,
  `LUC_Comments` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_loan_id` (`loan_id`),
  CONSTRAINT `fk_luc_loan_id` FOREIGN KEY (`loan_id`) REFERENCES `m_loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39791 DEFAULT CHARSET=utf8;