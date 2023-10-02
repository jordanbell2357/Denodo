#!/bin/bash

    if [ -a "$JAVA_HOME/jre/bin/java" ]
    then
        JAVA_BIN="$JAVA_HOME/jre/bin/java"
    else
        JAVA_BIN="$JAVA_HOME/bin/java"
    fi
    if [ -a "$JAVA_BIN" ]
    then
        DERBY_HOME=`pwd`
        
        "$JAVA_BIN" -Xmx128m -XX:MaxPermSize=128m -jar start.jar
        exit 0
    else
        echo "Unable to execute $0: Environment variable JAVA_HOME must be set and exported"
        exit 1
    fi
