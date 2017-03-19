#############################################################################################
# Dockerfile to build MongoDB container images
# Based on Ubuntu
#############################################################################################

FROM ubuntu

MAINTAINER Deepak Agrawal

######################################## Setup Ansible ######################################
RUN apt-get update
RUN apt-get install curl sshpass -y
RUN apt-get install gcc -y
RUN apt-get install python-dev -y
RUN apt-get install libffi-dev libssl-dev -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2.7 get-pip.py
RUN pip install markupsafe
RUN pip install boto
RUN pip install ansible==2.1.2.0
RUN ansible --version

######################################## Setup Nginx ########################################
RUN apt-get install -y vim wget dialog net-tools
RUN apt-get install -y nginx
EXPOSE 80
#############################################################################################