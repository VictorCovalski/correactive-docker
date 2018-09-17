FROM centos:7

RUN yum install -y java-1.8.0-openjdk-headless.x86_64;mkdir correactive

COPY ./correactive ./correactive

EXPOSE 2015

WORKDIR /correactive/bin/

CMD ["./run.sh"]