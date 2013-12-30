Move To Mifosx
--------------

A migration tool to migrate data from Mifos 2.x to MifosX

####Installing Kettle
You can download Pentaho Data Integration (PDI), also known as Kettle, from Sourceforge.net. Go to http://community.pentaho.com/ Download> Data Integration.

####Prerequisites
Kettle requires the Sun Java Runtime Environment (JRE) version 1.5 (also called 5.0 in some naming schemes) or newer. You can obtain a JRE for free from http://java.sun.com/.

####Installation
PDI does not require installation. Simply unpack the zip file into a folder of your choice. On Unix-like operating systems, you will need to make the shell scripts executable by using the chmod command:

cd Kettle
chmod +x *.sh

####Spoon Introduction
Spoon is the graphical tool with which you design and test every PDI process. The other PDI components execute the processes designed with Spoon, and are executed from a terminal window.

####Starting Spoon
Start Spoon by executing spoon.bat on Windows, or spoon.sh on Unix-like operating systems. As soon as Spoon starts, a dialog window appears asking for the repository connection data. Click the No Repository button.

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
