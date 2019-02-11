# DMPrepTool
Runs after ImportExport Utility and before migrating content with Object Importer

This tool is run as part of an Active Navigation Data Migraiton project. It is intended for preparing the destination Content Server environment when the target folders don't necessarily exist, or where creating folders will yield categories for which there are no defaults.

When run, this tool will process all XML files it finds in the input directory as found in config.properties, and for each unique path it finds, it will check whether that folder exists or not. If the folder does not exist, it will create the folder (and any parent path folders as well).  On the first folder that gets created, it will then perform custom actions which depend on the config.properties file.
The two operations that can be currently done are stripping of categories, and resetting assigned permissions to read-only. See config.properties for more details of these operations.
The source files come from the ImportExport Utility that processes the Export from Active Navigation.

To run:
1) Go to the Clone or Download link and select download zip file;
2) Unpack the zip file to the location of your choice;
3) Get a JRE that is at version 8 build 201 or better.  You can download a zip with the JRE from here:
https://hferguson.ca/public_downloads/jre1.8.0_201.zip or you can use your own as found from oracle.com.
4) edit the config.properties file to set things like the location of your ICF files, your target environment, and your CS credentials. Please note that user account should have sufficient privileges to create folders anywhere in your system;
5) Edit the RunPrepUtil.bat and change the location of your JRE to the location you set for your JRE in step 3. 

For any questions, please contact hugh@hferguson.ca
