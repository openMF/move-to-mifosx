INSERT INTO `x_registered_table` (`registered_table_name`,`application_table_name`) VALUES ('address', 'm_client');
INSERT INTO `x_registered_table` (`registered_table_name`,`application_table_name`) VALUES ('customer details', 'm_client');
INSERT INTO `x_registered_table` (`registered_table_name`,`application_table_name`) VALUES ('relatives', 'm_client');

INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_address_CHECKER', 'address', 'DELETE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_address', 'address', 'DELETE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_address_CHECKER', 'address', 'UPDATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_address', 'address', 'UPDATE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'READ_address', 'address', 'READ', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_address_CHECKER', 'address', 'CREATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_address', 'address', 'CREATE', 1);

INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_customer details_CHECKER', 'customer details', 'DELETE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_customer details', 'customer details', 'DELETE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_customer details_CHECKER', 'customer details', 'UPDATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_customer details', 'customer details', 'UPDATE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'READ_customer details', 'customer details', 'READ', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_customer details_CHECKER', 'customer details', 'CREATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_customer details', 'customer details', 'CREATE', 1);

INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_relatives_CHECKER', 'relatives', 'DELETE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'DELETE_relatives', 'relatives', 'DELETE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_relatives_CHECKER', 'relatives', 'UPDATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'UPDATE_relatives', 'relatives', 'UPDATE', 1);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'READ_relatives', 'relatives', 'READ', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_relatives_CHECKER', 'relatives', 'CREATE', 0);
INSERT INTO `m_permission` (`id`, `grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('datatable', 'CREATE_relatives', 'relatives', 'CREATE', 1);