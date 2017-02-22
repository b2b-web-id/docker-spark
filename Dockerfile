FROM ryht/debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get upgrade -y
RUN apt-get install -y openjdk-7-jdk
RUN cd /opt && \
    wget http://www-us.apache.org/dist/spark/spark-1.6.3/spark-1.6.3-bin-without-hadoop.tgz && \
    tar -xvzf spark-1.6.3-bin-without-hadoop.tgz && \
    rm spark-1.6.3-bin-without-hadoop.tgz
EXPOSE 7077
CMD ["/opt/spark-1.6.3-bin-without-hadoop/sbin/start-master.sh"]
