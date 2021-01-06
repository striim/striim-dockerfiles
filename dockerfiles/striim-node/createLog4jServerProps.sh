#!/bin/sh

STRIIM_HOME=/opt/striim

rm ${STRIIM_HOME}/conf/log4j.server.properties

sed -e 's/@@rootLogger@@/'${STRIIM_L4J_ROOT_LOGGER}'/g' ${STRIIM_HOME}/conf/log4j.server.tmpl.properties > ${STRIIM_HOME}/conf/log4j.server.bak.properties
sed -i 's/@@MaxFileSize@@/'${STRIIM_L4J_MAX_FILE_SIZE}'/g' ${STRIIM_HOME}/conf/log4j.server.bak.properties
sed -i 's/@@MaxBackupIndex@@/'${STRIIM_L4J_MAX_BACKUP_IDX}'/g' ${STRIIM_HOME}/conf/log4j.server.bak.properties

mv ${STRIIM_HOME}/conf/log4j.server.bak.properties ${STRIIM_HOME}/conf/log4j.server.properties
