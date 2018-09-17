#!/bin/sh

JAVA_HOME=/usr
LIB=../lib

CLASSPATH=.
CLASSPATH=$CLASSPATH:$LIB/*

if [[ -z "${MEMORY_OPTIONS}" ]]; then
	MEMORY_OPTIONS="-Xms512m -Xmx512m"
fi

if [[ -z "${GC_OPTIONS}" ]]; then
	GC_OPTIONS="-server -XX:+UseParNewGC"
fi

$JAVA_HOME/bin/java $MEMORY_OPTIONS -Dlog4j.configuration=log4j.xml -cp ${CLASSPATH} com.ksoft.cengine.core.Launcher


