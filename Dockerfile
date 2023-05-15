# Philippe
FROM ubuntu:18.04
LABEL maintainer=philippe.yard@bnf.fr
RUN apt -y update
RUN apt -y install nginx git
EXPOSE 80
WORKDIR /var/www
RUN git clone https://github.com/diranetafen/static-website-example
RUN rm -rf html && ln -sf static-website-example html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
