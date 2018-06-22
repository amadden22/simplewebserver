## Simple webserver container
# Using Alpine base image and Apache Web server

# Pull the Alpine base image

FROM alpine: latest
MAINTAINER <admin@acme.com>

# Update and install the application
RUN apk update && apk upgrade && apk add httpd \

RUN echo "This container image was build on:" > /var/www/html/index.html

RUN date >> /var/www/html/index.html

EXPOSE 8080

# Start the service
ENTRYPOINT ["http"]

#confirm container curl http://localhost:8080
