STRIIM_CONF_FILE="/opt/striim/conf/startUp.properties"


if [[ ! -z "${STRIIM_CLUSTER_NAME}" ]]; then
  echo "WAClusterName=${STRIIM_CLUSTER_NAME}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_CLUSTER_PASSWORD}" ]]; then
  STRIIM_CLUSTER_PASSWORD=`/opt/striim/bin/passwordEncryptor.sh ${STRIIM_CLUSTER_PASSWORD}`
  echo "WAClusterPassword=${STRIIM_CLUSTER_PASSWORD}"  >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_ADMIN_PASSWORD}" ]]; then
  STRIIM_ADMIN_PASSWORD=`/opt/striim/bin/passwordEncryptor.sh ${STRIIM_ADMIN_PASSWORD}`
  echo "WAAdminPassword=${STRIIM_ADMIN_PASSWORD}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_COMPANY_NAME}" ]]; then
  echo "CompanyName=${STRIIM_COMPANY_NAME}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_PRODUCT_KEY}" ]]; then
  echo "ProductKey=${STRIIM_PRODUCT_KEY}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_LICENSE_KEY}" ]]; then
  echo "LicenceKey=${STRIIM_LICENSE_KEY}" >>$STRIIM_CONF_FILE
fi
echo "Interfaces=`hostname -i`" >> $STRIIM_CONF_FILE
if [[ ! -z "${STRIIM_METADATAREPO_DB}" ]]; then
  echo "MetadataDb=${STRIIM_METADATAREPO_DB}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_METADATAREPO_ADDR}" ]]; then
  echo "MetaDataRepositoryLocation=${STRIIM_METADATAREPO_ADDR}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_METADATAREPO_PWD}" ]]; then
  STRIIM_METADATAREPO_PWD=`/opt/striim/bin/passwordEncryptor.sh ${STRIIM_METADATAREPO_PWD}`
  echo "MetaDataRepositoryPass=${STRIIM_METADATAREPO_PWD}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_METADATAREPO_USER}" ]]; then
  echo "MetaDataRepositoryUname=${STRIIM_METADATAREPO_USER}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_METADATAREPO_DBNAME}" ]]; then
  echo "MetaDataRepositoryDBname=${STRIIM_METADATAREPO_DBNAME}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_TRACK_FLM}" ]]; then
  echo "TrackFLM=${STRIIM_TRACK_FLM}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_MAX_MEMORY}" ]]; then
  echo "MEM_MAX=${STRIIM_MAX_MEMORY}" >>$STRIIM_CONF_FILE
fi
if [[ ! -z "${STRIIM_EVICTTHRESHOLD}" ]]; then
  echo "EvictThreshold=${STRIIM_EVICTTHRESHOLD}" >>$STRIIM_CONF_FILE
fi
