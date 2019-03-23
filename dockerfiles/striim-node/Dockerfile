###############################################
#
# Striim Node
#
##############################################

FROM striim/basejdk:latest
LABEL maintainer="support@striim.com"

ARG STRIIM_NODE_URL

RUN yum -y install vim

# Download and install striim-node
RUN cd /tmp && wget --quiet --no-check-certificate -O striim-node.rpm "$STRIIM_NODE_URL" \
    && rpm -i striim-node.rpm \
    && rm -rf striim-node.rpm

COPY createStriimProperties.sh /opt/striim/bin/createStriimProperties.sh
COPY createLog4jServerProps.sh /opt/striim/bin/createLog4jServerProps.sh
COPY striim-node /opt/striim/sbin/striim-node
COPY log4j.server.tmpl.properties /opt/striim/conf/log4j.server.tmpl.properties
 
ENV STRIIM_METADATAREPO_DB      "derby"
ENV STRIIM_METADATAREPO_ADDR    "172.17.0.2:1527"
ENV STRIIM_METADATAREPO_USER    "waction"
ENV STRIIM_METADATAREPO_PWD     "w@ct10n"
ENV STRIIM_METADATAREPO_DBNAME  "wactionrepos"
ENV STRIIM_CLUSTER_NAME         "dockerizedstriimcluster"
ENV STRIIM_CLUSTER_PASSWORD     "clusterpass"
ENV STRIIM_ADMIN_PASSWORD       "adminpass"
ENV STRIIM_COMPANY_NAME         "Striim"
ENV STRIIM_PRODUCT_KEY          ""
ENV STRIIM_LICENSE_KEY          ""
ENV STRIIM_TRACK_FLM            "false"
ENV STRIIM_MAX_MEMORY           "4096m"
ENV STRIIM_EVICTTHRESHOLD       ""
ENV STRIIM_L4J_ROOT_LOGGER      "warn"
ENV STRIIM_L4J_MAX_FILE_SIZE    "100MB"
ENV STRIIM_L4J_MAX_BACKUP_IDX   "4"

EXPOSE 9080
EXPOSE 5701
EXPOSE 54327

CMD ["/opt/striim/sbin/striim-node","start"]
