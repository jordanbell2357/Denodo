@echo off
REM ---------------------------------------------------------------------------
REM  Environment variable JAVA_HOME must be set and exported
REM ---------------------------------------------------------------------------

set APPLICATION=.

:javabinconfig
SET JAVA_BIN="%JAVA_HOME%\jre\bin\java.exe"
IF EXIST %JAVA_BIN% GOTO main

SET JAVA_BIN="%JAVA_HOME%\bin\java.exe"

:main
IF EXIST %JAVA_BIN% (
	%JAVA_BIN% -Xmx128m -XX:MaxPermSize=128m -jar start.jar
	goto end
)

echo "Unable to execute %0: Environment variable JAVA_HOME must be set"
:end