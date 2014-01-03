#!/bin/bash
# Mifos to Mifos X

PDI_HOME="/opt/pentaho/kettle"
KETTLE_JOBS_PATH="/home/nayan/Documents/GitHub/move-to-mifosx/KettleJobs"
DEST_DB="mifostenant-gk"

MYSQL_ARGS="-u root -ppassword"

echo "USE $DEST_DB" | mysql $MYSQL_ARGS

mysql $MYSQL_ARGS $DEST_DB < $KETTLE_JOBS_PATH/main/load_mifosx_ddl.sql
mysql $MYSQL_ARGS $DEST_DB < $KETTLE_JOBS_PATH/main/load_mifosx_datatables.sql
mysql $MYSQL_ARGS $DEST_DB < $KETTLE_JOBS_PATH/main/load_mifosx_migration_stored_procedures.sql
mysql $MYSQL_ARGS $DEST_DB < $KETTLE_JOBS_PATH/main/load_mifosx_stage1_tables.sql

$PDI_HOME/kitchen.sh /file:`readlink -f $KETTLE_JOBS_PATH/Stage1/Stage1.kjb`
