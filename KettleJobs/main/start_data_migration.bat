SET PDIPATH=E:\Projects\utilities\pentaho\data-integration\
SET KETTLEPATH=E:\Projects\Clients\secdep\secdepx\move-to-mifosx\KettleJobs\
SET SOURCEDUMP=E:\Projects\Clients\secdep\secdepx\move-to-mifosx\source_db_dump
SET DESTDB=secdepx
SET SOURCEDB=secdep


mysql -uroot -pmysql USE %SOURCEDB%;
mysql -uroot -pmysql %SOURCEDB% < %SOURCEDUMP%\source.sql

echo Dump is restored.

mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_ddl.sql
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_datatables.sql

mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\data_table_registered.sql
echo data_table are registered 
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_migration_stored_procedures.sql
echo migration stored procedures are restored.
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_stage1_tables.sql
echo stage tables are  restored.
echo Migration Started.

%PDIPATH%kitchen.bat /file:%KETTLEPATH%Stage1\main.kjb /level:Debugging > transformationLog_%DESTDB%.log