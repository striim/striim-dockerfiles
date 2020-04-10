###############################################
#
# Striim Metadata Repository image
#
##############################################

FROM openjdk:8
LABEL maintainer="support@striim.com"

ARG STRIIM_DBMS_URL


# Download striim-dbms rpm and install
RUN cd /tmp \
    && wget --quiet --no-check-certificate -O striim-dbms.deb "$STRIIM_DBMS_URL" \
    && dpkg -i striim-dbms.deb \
    && rm -rf striim-dbms.deb

# Expose DB port and start the service
EXPOSE 1527
CMD ["/opt/striim/sbin/striim-dbms","start"]
