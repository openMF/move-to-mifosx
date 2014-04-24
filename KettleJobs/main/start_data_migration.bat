SET PDIPATH=I:\Devspace\opensourcetools\data-integration\
SET KETTLEPATH=C:\Users\nayan\Documents\GitHub\move-to-mifosx\KettleJobs\
SET DESTDB=mifostenant-gk

mysql -uroot -pmysql USE %DESTDB%;
mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_migration_stored_procedures.sql

%PDIPATH%kitchen.bat /file:%KETTLEPATH%Stage1\Stage1.kjb /level:Error > transformationLog_%DESTDB%.log