SET PDIPATH=I:\Devspace\opensourcetools\data-integration\
SET KETTLEPATH=C:\Users\nayan\Documents\GitHub\move-to-mifosx\KettleJobs\
SET DESTDB=mifostenant-ceda

echo DROP DATABASE IF EXISTS `%DESTDB%`; > dropdb.sql
echo CREATE DATABASE `%DESTDB%`;  > createdb.sql

mysql -uroot -pmysql < dropdb.sql
mysql -uroot -pmysql < createdb.sql
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_ddl.sql
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_datatables.sql
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_migration_stored_procedures.sql

%PDIPATH%kitchen.bat /file:%KETTLEPATH%Stage1\Stage1.kjb /level:Basic > transformationLog_%DESTDB%.log

