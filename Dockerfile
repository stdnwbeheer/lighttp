# Use Ubuntu 18.04 as base image.
FROM UBUNTU:18.04
# Maintainer of the Dockerfile
MAINTAINER netwerkbeheer <netwerkbeheer@staedion.nl>
# Run the installation
RUN apt-get update \
    && apt-get -y install lighttpd wget \
    && cd / && wget -N http... \
    && apt-get -y purge wget \
    && apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean
# Expose port 80 to the host.    
EXPOSE 80
# Set the entrypoint script.
ENTRYPOINT ["docker-entrypoint.sh"]
