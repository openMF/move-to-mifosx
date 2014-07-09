Move To Mifosx
--------------
A migration tool to migrate data from Mifos 2.x to Mifos X 1.22.0

### LICENSE

Read the license at https://github.com/openMF/move-to-mifosx/blob/master/LICENSE.md

### Caution!

Since some of the Mifos feature are not supported in Mifos X, And if you are using these features then migration may result into inconsitant data for thoese features in Mifos X. before doing migration please do basic due diligence to see how data from Mifos will fit into Mifos X.

Some of them are listed here

* Mifos has loan product declining balance interest recalculation but not supported in Mifos X
* Mifos has interest compounding frequency in n * days or n * months where as Mifos X has only Daily / Monthly / Quarterly / Yearly
* Mifos has interest posting frequency in n * days or n * months where as Mifos X has only Monthly / Quarterly / Yearly

So migration tool will put nearest/garbage values if it finds any un-supported feature or values in Mifos.

### Installation and setup

####Prerequisites
Kettle requires the Sun Java Runtime Environment (JRE) version 1.5 (also called 5.0 in some naming schemes) or newer. You can obtain a JRE for free from http://java.sun.com/.

####Installing Kettle
You can download Pentaho Data Integration (PDI), also known as Kettle, from Sourceforge.net. Go to http://community.pentaho.com/ Download> Data Integration.

PDI does not require installation. Simply unpack the zip file into a folder of your choice. On Unix-like operating systems, you will need to make the shell scripts executable by using the chmod command:

cd Kettle
chmod +x *.sh

#### Configure source and destination database

Navigate to simple-jndi folder

```
cd <Kettle>/..\data-integration\simple-jndi\
```
And append below line to jdbc.properties file and save it.

```
SourceDB/type=javax.sql.DataSource
SourceDB/driver=org.gjt.mm.mysql.Driver
SourceDB/url=jdbc:mysql://000.00.00.00:3306/mifos?useUnicode=true&characterEncoding=UTF-8
SourceDB/user=conflux
SourceDB/password=confluxtech
DestinationDB/type=javax.sql.DataSource
DestinationDB/driver=org.gjt.mm.mysql.Driver
DestinationDB/url=jdbc:mysql://localhost:3306/mifosx?useUnicode=true&characterEncoding=UTF-8
DestinationDB/user=root
DestinationDB/password=****
```

#### Set PDIPATH and  KETTLEPATH

Edit the file start_data_migration.bat/.sh ( file located under *\move-to-mifosx\KettleJobs\main\ )

* SET PDIPATH=<path where PDI tool is located>\data-integration\ Ex:I:\Devspace\opensourcetools\data-integration\
* SET KETTLEPATH=<path where Migration jobs are located>\move-to-mifosx\KettleJobs\  Ex: C:\Users\nayan\Documents\GitHub\move-to-mifosx\KettleJobs\


### Run the migration tool

Either it can be run by executing the windows batch file start_data_migration.bat (On *nix machine run start_data_migration.sh) or running the main.kjb (located at \move-to-mifosx\KettleJobs\Stage1\ ) through Spoon user interface.

Note: If you are running through Spoon user interface make sure you have run the below steps

* mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_ddl.sql
* mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_datatables.sql
* mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\data_table_registered.sql
* mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_migration_stored_procedures.sql
* mysql -uroot -pmysql %DESTDB% < %KETTLEPATH%main\load_mifosx_stage1_tables.sql

