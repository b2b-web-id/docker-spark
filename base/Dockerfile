FROM b2bwebid/debian:bookworm
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget && \
    apt-get clean
RUN apt-get install -y openjdk-17-jdk
RUN cd /opt && \
    wget http://repo.kalamangga.net/apache/spark/spark-3.4.1-bin-hadoop3.tgz && \
    tar -xvzf spark-3.4.1-bin-hadoop3.tgz && \
    rm spark-3.4.1-bin-hadoop3.tgz
