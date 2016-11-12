#!/bin/sh

# $Id: RUN_TrlImport.sh,v 1.3 2005/01/22 21:59:15 jjanke Exp $

if [ $IDEMPIERE_HOME ]; then
  cd $IDEMPIERE_HOME/utils
fi
. ./myEnvironment.sh Server

echo	Import idempiere Translation - $IDEMPIERE_HOME \($ADEMPIERE_DB_NAME\)

# need to change this to reflect your language
export  AD_LANGUAGE=ca_ES

export  DIRECTORY=$IDEMPIERE_HOME/data/$AD_LANGUAGE

echo	This Procedure imports language $AD_LANGUAGE from directory $DIRECTORY

$JAVA_HOME/bin/java -cp $CLASSPATH org.compiere.install.Translation $DIRECTORY $AD_LANGUAGE import


echo	Done
