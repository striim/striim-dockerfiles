
function validateEmailAndSendEULA()
{
    DATE=$(($(date +%s%N)/1000000)) # Works on Linux but fails on OSX
    FIRST_NAME=$1
    LAST_NAME=$2
    COMPANY_NAME=$3
    COMPANY_EMAIL_ADDRESS=$4
read -r -d '' JSON << EOM
{
"submittedAt": "$DATE",
"fields": [
{
"name": "email",
"value": "$COMPANY_EMAIL_ADDRESS"
},{
"name": "accepted_eula",
"value": true
},
{
"name": "firstname",
"value": "$FIRST_NAME"
},
{
"name": "lastname",
"value": "$LAST_NAME"
},
{
"name": "company",
"value": "$COMPANY_NAME"
}
],
"skipValidation": false
}
EOM
    
 	RESP=$(curl -L -w "\\n@%{http_code}\\n" POST --data "$JSON" \
 	    "https://api.hsforms.com/submissions/v3/integration/submit/4691734/f9738296-bde3-402e-bb86-6b0565f06369" \
 	    -H "Content-type: application/json; charset=UTF-8" -s 2>/dev/null)
 	    
 	RESP_CODE=$(echo $RESP | awk -F'@' '{print $3}')
	    
	if [[ $RESP_CODE != 200 ]] && [[ $RESP == *"BLOCKED_EMAIL"* ]]; then
	   date=`date +"%a %b %d %H:%M:%S UTC %Y"`
 	   echo "$date : Email address needs to be a valid company email address"
       exit 1
    elif [[ $RESP_CODE != 200 ]]; then
       date=`date +"%a %b %d %H:%M:%S UTC %Y"`
       echo "$date : Something went wrong. If you continue to have issues, please email support@striim.com."
       exit 1
 	fi

}

function dockerPwCheck()
{
	if [ -f /run/secrets/admin_password ]; then
	   STRIIM_ADMIN_PASSWORD=$(cat /run/secrets/admin_password)
	fi

	if [ -f /run/secrets/db_password ]; then
	   STRIIM_METADATAREPO_PWD=$(cat /run/secrets/db_password)
	fi

	if [ -f /run/secrets/keystore_password ]; then
	   STRIIM_KEYSTORE_PASSWORD=$(cat /run/secrets/keystore_password)
	fi

	if [ -f /run/secrets/system_password ]; then
	   STRIIM_SYSTEM_PASSWORD=$(cat /run/secrets/system_password)
	fi
}

function k8PwCheck()
{
	if [ -f /etc/secret-volume/admin_password ]; then
	   STRIIM_ADMIN_PASSWORD=$(cat /etc/secret-volume/admin_password)
	fi

	if [ -f /etc/secret-volume/db_password ]; then
	   STRIIM_METADATAREPO_PWD=$(cat /etc/secret-volume/db_password)
	fi

	if [ -f /etc/secret-volume/keystore_password ]; then
	   STRIIM_KEYSTORE_PASSWORD=$(cat /etc/secret-volume/keystore_password)
	fi

	if [ -f /etc/secret-volume/system_password ]; then
	   STRIIM_SYSTEM_PASSWORD=$(cat /etc/secret-volume/system_password)
	fi
}

dockerPwCheck
k8PwCheck

STRIIM_CONF_UPDATED_FILE="/opt/striim/conf/startUp.properties.updated"
STRIIM_CONF_FILE="/opt/striim/conf/startUp.properties" 

# Check for mounted startUp.properties.update if it exists, replace /opt/striim/conf/startUp.properties and dont do all the sed commands
if [ -f "${STRIIM_CONF_UPDATED_FILE}" ]; then
    date=`date +"%a %b %d %H:%M:%S UTC %Y"`
    echo "$date : Found mounted Striim startUp.properties."
    
    cp ${STRIIM_CONF_UPDATED_FILE} ${STRIIM_CONF_FILE}
    
    date=`date +"%a %b %d %H:%M:%S UTC %Y"`
    echo "$date : Copied over existing Striim startUp.properties."
    
    if [[ ! -z "${STRIIM_METADATAREPO_ADDR}" ]]; then
	  sed -i -e s#\\#.*MetaDataRepositoryLocation\=.*#MetaDataRepositoryLocation\=${STRIIM_METADATAREPO_ADDR}#g $STRIIM_CONF_FILE
	  
	  #Handle case where it's already been uncommented
	  sed -i -e s#MetaDataRepositoryLocation\=.*#MetaDataRepositoryLocation\=${STRIIM_METADATAREPO_ADDR}#g $STRIIM_CONF_FILE
	fi
	
	if [[ ! -z "${STRIIM_ADMIN_PASSWORD}" ]] && [[ ! -z "${STRIIM_METADATAREPO_PWD}" ]] && [[ ! -z "${STRIIM_SYSTEM_PASSWORD}" ]] && [[ ! -z "${STRIIM_KEYSTORE_PASSWORD}" ]]; then
	  STRIIM_PASSWORDS=`/opt/striim/bin/sksConfig.sh -a ${STRIIM_ADMIN_PASSWORD} -s ${STRIIM_SYSTEM_PASSWORD} -t ${STRIIM_METADATAREPO_DB} -p ${STRIIM_METADATAREPO_PWD} -k ${STRIIM_KEYSTORE_PASSWORD}`
	fi
else
	if [[ ! -z "${STRIIM_CLUSTER_NAME}" ]]; then
	  sed -i -e s#WAClusterName\=.*#WAClusterName\=${STRIIM_CLUSTER_NAME}#g $STRIIM_CONF_FILE
	fi

	if [[ ! -z "${STRIIM_ADMIN_PASSWORD}" ]] && [[ ! -z "${STRIIM_METADATAREPO_PWD}" ]] && [[ ! -z "${STRIIM_SYSTEM_PASSWORD}" ]] && [[ ! -z "${STRIIM_KEYSTORE_PASSWORD}" ]]; then
	  STRIIM_PASSWORDS=`/opt/striim/bin/sksConfig.sh -a ${STRIIM_ADMIN_PASSWORD} -s ${STRIIM_SYSTEM_PASSWORD} -t ${STRIIM_METADATAREPO_DB} -p ${STRIIM_METADATAREPO_PWD} -k ${STRIIM_KEYSTORE_PASSWORD}`
	fi
	if [[ ! -z "${STRIIM_COMPANY_NAME}" ]]; then
	  sed -i -e s#CompanyName\=.*#CompanyName\=${STRIIM_COMPANY_NAME}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_PRODUCT_KEY}" ]]; then
	  sed -i -e s#\\#.*ProductKey\=.*#ProductKey\=${STRIIM_PRODUCT_KEY}#g $STRIIM_CONF_FILE
  
	  #Handle case where it's already been uncommented and the product key has already been added.
	  sed -i -e s#ProductKey\=.*#ProductKey\=${STRIIM_PRODUCT_KEY}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_LICENSE_KEY}" ]]; then
	  sed -i -e s#\\#.*LicenceKey\=.*#LicenceKey\=${STRIIM_LICENSE_KEY}#g $STRIIM_CONF_FILE
  
	  #Handle case where it's already been uncommented and the license key has already been added.
	  sed -i -e s#LicenceKey\=.*#LicenceKey\=${STRIIM_LICENSE_KEY}#g $STRIIM_CONF_FILE
	else
	  if [ -z "$STRIIM_ACCEPT_EULA" -o "$STRIIM_ACCEPT_EULA" != "Y" ]; then
			echo "You're attempting to start a Striim server with a trial license."
			echo "If you have an existing license, please make sure you have"
			echo "set the env STRIIM_LICENSE_KEY variable with your existing license."
			echo "If you wish to continue with the trail license,"
			echo "the Striim End-User License Agreement (EULA) must be accepted "
			echo "before Striim can start. The EULA can be downloaded from the link"
			echo "http://www.striim.com/evaluation-agreement/"
			echo ""
			echo "The EULA can be accepted by setting STRIIM_ACCEPT_EULA env variable to Y"
			echo "Please see docker compose on how to set environment variables"
			echo "https://docs.docker.com/compose/environment-variables/"
			exit 1
		fi
	
		if [ -z "$STRIIM_FIRST_NAME" ] || [ -z "$STRIIM_LAST_NAME" ] || [ -z "$STRIIM_COMPANY_NAME" ] || [ -z "$STRIIM_COMPANY_EMAIL_ADDRESS" ]; then
		   echo "Trial license requires additional information."
		   echo "Please make sure you have entered your First Name, Last Name, Company Name and Company Email Address."
		   echo "You must set STRIIM_FIRST_NAME env variable with your first name,"
		   echo "STRIIM_LAST_NAME env variable with your last name,"
		   echo "STRIIM_COMPANY_NAME env variable with your company name and"
		   echo "STRIIM_COMPANY_EMAIL_ADDRESS env variable with your company email address."
		   echo "If you continue to have issues, please email support@striim.com."
		   exit 1
		fi
	
		validateEmailAndSendEULA $STRIIM_FIRST_NAME $STRIIM_LAST_NAME $STRIIM_COMPANY_NAME $STRIIM_COMPANY_EMAIL_ADDRESS
	fi

	if [[ ! -z "${STRIIM_METADATAREPO_DB}" ]]; then
	  sed -i -e s#\\#.*MetadataDb\=.*#MetadataDb\=${STRIIM_METADATAREPO_DB}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_METADATAREPO_ADDR}" ]]; then
	  sed -i -e s#\\#.*MetaDataRepositoryLocation\=.*#MetaDataRepositoryLocation\=${STRIIM_METADATAREPO_ADDR}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_METADATAREPO_USER}" ]]; then
	  sed -i -e s#\\#.*MetaDataRepositoryUname\=.*#MetaDataRepositoryUname\=${STRIIM_METADATAREPO_USER}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_METADATAREPO_DBNAME}" ]]; then
	  sed -i -e s#\\#.*MetaDataRepositoryDBname\=.*#MetaDataRepositoryDBname\=${STRIIM_METADATAREPO_DBNAME}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_TRACK_FLM}" ]]; then
	  sed -i -e s#\\#.*TrackFLM\=.*#TrackFLM\=${STRIIM_TRACK_FLM}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_MAX_MEMORY}" ]]; then
	  sed -i -e s#\\#.*MEM_MAX\=.*#MEM_MAX\=${STRIIM_MAX_MEMORY}#g $STRIIM_CONF_FILE
	fi
	if [[ ! -z "${STRIIM_EVICTTHRESHOLD}" ]]; then
	  sed -i -e s#\\#.*EvictThreshold\=.*#EvictThreshold\=${STRIIM_EVICTTHRESHOLD}#g $STRIIM_CONF_FILE
	fi
fi
   

