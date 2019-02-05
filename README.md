# Simple Lighttpd DockerFile
Simple lighttpd server Ubuntu 18.04 based dockerfile.

# Usage:
docker build -t "test/lighttpd" https://raw.githubusercontent.com/stdnwbeheer/lighttpd/master/Dockerfile

After the build process is complete, run with the following commands:
``` bash
docker volume create lighttpd-www
docker run -d -p 80:80 -v lighttpd-www:/var/www/html:rw test/lighttpd
```
Change the index.lighttpd.html file in /var/lib/docker/volumes/lighttpd-www/_data to your liking.
