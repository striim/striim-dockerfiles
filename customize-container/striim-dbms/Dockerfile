###############################################
#
# Striim Metadata Repository image
#
##############################################

FROM striim/basejdk:latest
LABEL maintainer="support@striim.com"

ARG STRIIM_DBMS_URL


# Download striim-dbms rpm and install
RUN cd /tmp \
    && wget --quiet --no-check-certificate -O striim-dbms.rpm "$STRIIM_DBMS_URL" \
    && rpm -i striim-dbms.rpm \
    && rm -rf striim-dbms.rpm

# Expose DB port and start the service
EXPOSE 1527
CMD ["/opt/striim/sbin/striim-dbms","start"]
