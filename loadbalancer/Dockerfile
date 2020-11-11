FROM alpine:3.10
WORKDIR /www
RUN apk update \
	&& apk add nginx \
	&& adduser -D -g 'www' www \
	&& mkdir /run/nginx \
	&& mkdir /run/openrc \
	&& touch /run/openrc/softlevel \
	&& chown -R www:www /var/lib/nginx \
	&& chown -R www:www /www 
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT  nginx
