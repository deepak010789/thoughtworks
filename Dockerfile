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

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/sites-available/default

# Copy a configuration file from the current directory
ADD default /etc/nginx/sites-available/default

# link default from sites-available to sites-enabled
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# create dir /etc/tier1
RUN mkdir /etc/tier1

# Expose ports
EXPOSE 80

# when creating a new container
# CMD service nginx start
# CMD ["nginx", "-g", "daemon off;"]
##################################