############################################################
# Dockerfile to build code bootcamp server application images
# Based on docker
############################################################

# Set the base image to official docker:1.8
FROM docker:1.8

# File Author / Maintainer
MAINTAINER Rafael Hernandez <https://github.com/fikipollo>

################## BEGIN INSTALLATION ######################

RUN apk update \
    && apk add --no-cache curl make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg python \
    && apk add nodejs \
    && apk add git \
    && npm install --global docker-browser-server \
    && cd /usr/local/ \
    && git config --system http.sslverify false \
    && git clone https://github.com/Blahah/command_line_bootcamp.git

COPY configs/entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

##################### INSTALLATION END #####################

# Expose port 8080 (docker-browser-server)
EXPOSE :8080

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
