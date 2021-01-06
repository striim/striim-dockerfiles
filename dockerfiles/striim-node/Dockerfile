###############################################
#
# Striim Node
#
##############################################

FROM openjdk:8
LABEL maintainer="support@striim.com"

ARG STRIIM_RPM_TAG
ENV STRIIM_RPM_TAG=$STRIIM_RPM_TAG
ENV STRIIM_RPM_REPO "http://striimers.striim.com/index.php/Welcome/download?path=striim-downloads/Releases/${STRIIM_RPM_TAG}"

ENV STRIIM_NODE_DEB $STRIIM_RPM_REPO/striim-node-$STRIIM_RPM_TAG-Linux.deb

# Downlaod and install vim
RUN apt-get update \
    && apt-get -y install vim \
    && apt-get install -y sudo

# Download striim-node
RUN cd /tmp \
    && wget --quiet --no-check-certificate -O striim-node-$STRIIM_RPM_TAG-Linux.deb "$STRIIM_NODE_DEB"

COPY createStriimProperties.sh /opt/striim/bin/createStriimProperties.sh
COPY createLog4jServerProps.sh /opt/striim/bin/createLog4jServerProps.sh
COPY striim-node /tmp/striim-node
COPY log4j.server.tmpl.properties /opt/striim/conf/log4j.server.tmpl.properties
 

EXPOSE 9080
EXPOSE 5701
EXPOSE 54327

RUN useradd -r striim && adduser striim sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER striim
WORKDIR /opt/striim
CMD [ "sh", "-c", "/tmp/striim-node $STRIIM_RPM_TAG" ]
