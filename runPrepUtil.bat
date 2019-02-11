@echo off
REM 
REM This application depends on there being a java runtime engine (JRE) at version 7 vers71 or better
REM Set the following parameters based on your setup
REM
REM JREDIR - base directory where JDK or JRE is installed
REM
REM NOTE: anything else that is configurable is in the properties file. Use generic.properties as a guide

set PROPFILE=DND-POC.properties
set INPUTDIR=.
set JREDIR=jre1.8.0_201
set JAVA=%JREDIR%\bin\java
echo Using path %JAVA% for JRE
%JAVA% -cp "DMPrepTool.jar;lib/*" ca.hferguson.app.DMPrepUtility config.properties