############################################################
# Dockerfile to build MongoDB container images
# Based on Ubuntu
############################################################

FROM ubuntu

MAINTAINER Deepak Agrawal

# Update system
RUN apt-get update

########## Setup Nginx ##########
# Install necessary tools
RUN apt-get install -y vim wget dialog net-tools

# Download and Install Nginx
RUN apt-get install -y nginx

# Expose ports
EXPOSE 80

# when creating a new container
CMD service nginx start
##################################