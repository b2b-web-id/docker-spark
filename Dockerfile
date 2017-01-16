FROM ryht/debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get install openjdk-8-jdk
RUN cd /opt && \
    wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.1-bin-hadoop2.7.tgz && \
    tar -xvzf spark-2.0.1-bin-hadoop2.7.tgz && \
    rm spark-2.0.1-bin-hadoop2.7.tgz
EXPOSE 7077
CMD ["/opt/spark-2.0.0-bin-hadoop2.7/sbin/start-master.sh"]
