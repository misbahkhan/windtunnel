FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y software-properties-common apt-transport-https vim
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.6 python3-pip
RUN pip3 install "airflow[celery, postgres]"
RUN pip3 install "redis"
RUN echo "set -o vi" >> ~/.bashrc
ADD run.sh .
ENTRYPOINT ["sh", "run.sh"]
