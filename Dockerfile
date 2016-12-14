FROM nginx

MAINTAINER Will Liu, liuwill@live.com

ADD ./server.key /usr/local/nginx/conf/server.key
ADD ./server.crt /usr/local/nginx/conf/server.crt
#ADD ./conf/nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
