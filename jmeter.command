#!/bin/bash
echo "finding jmeter"
WORK_PATH=$(dirname $0)
JMETER_PATH=$WORK_PATH/apache-jmeter-3.3/bin
if [ ! -d "$JMETER_PATH"];
then
    echo "|-----------------|"
    echo "|  no path exits  |"
    echo "|-----------------|"
else
    echo "|-----------------|"
    echo "|creating log file|"
    echo "|-----------------|"
    cd $WORK_PATH/log
    LOG_FILE=$(date +%Y%m%d%H%M%S).log
    touch $LOG_FILE
    cd ${JMETER_PATH}
    echo "|-----------------|"
    echo "| running jmeter  |"
    echo "|-----------------|"
    sh jmeter -n -t $WORK_PATH/scripts/NutownAR.jmx -j $WORK_PATH/log/$LOG_FILE
fi
