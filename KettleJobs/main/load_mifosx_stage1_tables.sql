CREATE TABLE `stage1_acc_gl_journal_entry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL,
  `office_id` bigint(20) NOT NULL,
  `reversal_id` bigint(20) DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `loan_transaction_id` bigint(20) DEFAULT NULL,
  `savings_transaction_id` bigint(20) DEFAULT NULL,
  `reversed` tinyint(1) NOT NULL DEFAULT '0',
  `ref_num` varchar(100) DEFAULT NULL,
  `manual_entry` tinyint(1) NOT NULL DEFAULT '0',
  `entry_date` date NOT NULL,
  `type_enum` smallint(5) NOT NULL,
  `amount` decimal(19,6) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `entity_type_enum` smallint(5) DEFAULT NULL,
  `entity_id` bigint(20) DEFAULT NULL,
  `createdby_id` bigint(20) NOT NULL,
  `lastmodifiedby_id` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `lastmodified_date` datetime NOT NULL,
  `is_running_balance_caculated` tinyint(4) NOT NULL DEFAULT '0',
  `office_running_balance` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `organization_running_balance` decimal(19,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `stage1_acc_product_mapping`;
CREATE TABLE `stage1_acc_product_mapping` (
  `product_name` varchar(100) NOT NULL,
  `gl_code` varchar(45) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_type` smallint(5) DEFAULT NULL,
  `financial_account_type` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `stage1_roles_activity` (
	`ACTIVITY_ID` SMALLINT(6) NOT NULL,
	`ROLE_ID` SMALLINT(6) NOT NULL,
	PRIMARY KEY (`ACTIVITY_ID`, `ROLE_ID`),
	INDEX `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `stage1_activity_mapping` (
	`ACTIVITY_ID` SMALLINT(6) NOT NULL,
	`PERMISSION_ID` SMALLINT(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `stage1_client_fees_account` (
	`client_id` INT(10) NOT NULL,
	`fee_account_id` INT(11) NOT NULL,
	`amount` INT(10) NOT NULL,
	`charge_id` INT(10) NOT NULL,
	`amount_paid_derived` INT(10) NOT NULL,
	`amount_outstanding_derived` INT(10) NOT NULL,
	`is_paid_derived` INT(10) NOT NULL,
	`is_active` INT(10) NOT NULL,
	`charge_due_date` DATE NOT NULL,
	`transaction_date` DATE NULL DEFAULT NULL,
	`transaction_id` INT(11) NULL DEFAULT NULL,
	`office_id` INT(10) NOT NULL
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;


CREATE TABLE `stage1_center_meeting` (
  `center_id` bigint(20) NOT NULL,
  `meeting_date` date NOT NULL,
  UNIQUE KEY `unique_calendar_instance_id_meeting_date` (`center_id`,`meeting_date`)
) ENGINE=InnoDB;

CREATE TABLE `stage1_client_attendance` (
  `client_id` bigint(20) NOT NULL,
  `center_id` bigint(20) NOT NULL,
  `meeting_date` date NOT NULL,
  `attendance_type_enum` smallint(5) NOT NULL
) ENGINE=InnoDB;