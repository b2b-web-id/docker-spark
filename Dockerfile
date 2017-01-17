FROM ryht/debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN echo "deb http://ftp.de.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list && \
    apt-get update && \
    apt-get upgrade && \
    apt-get install openjdk-8-jdk
RUN cd /opt && \
    wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.1-bin-hadoop2.7.tgz && \
    tar -xvzf spark-2.0.1-bin-hadoop2.7.tgz && \
    rm spark-2.0.1-bin-hadoop2.7.tgz
EXPOSE 7077
CMD ["/opt/spark-2.0.0-bin-hadoop2.7/sbin/start-master.sh"]
