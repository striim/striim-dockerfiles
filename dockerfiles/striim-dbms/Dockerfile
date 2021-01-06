###############################################
#
# Striim Metadata Repository image
#
##############################################

FROM openjdk:8
LABEL maintainer="support@striim.com"

ARG STRIIM_RPM_TAG
ENV STRIIM_RPM_TAG=$STRIIM_RPM_TAG
ENV STRIIM_RPM_REPO "http://striimers.striim.com/index.php/Welcome/download?path=striim-downloads/Releases/${STRIIM_RPM_TAG}"


ENV STRIIM_DBMS_DEB $STRIIM_RPM_REPO/striim-dbms-$STRIIM_RPM_TAG-Linux.deb

# Downlaod and install vim
RUN apt-get update \
    && apt-get -y install vim \
    && apt-get -y install sudo

# Download striim-dbms 
RUN cd /tmp \
    && wget --quiet --no-check-certificate -O striim-dbms-$STRIIM_RPM_TAG-Linux.deb "$STRIIM_DBMS_DEB"

COPY striim-dbms /tmp/striim-dbms

EXPOSE 1527

RUN useradd -r striim && adduser striim sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER striim
WORKDIR /opt/striim

CMD [ "sh", "-c", "/tmp/striim-dbms $STRIIM_RPM_TAG" ]
