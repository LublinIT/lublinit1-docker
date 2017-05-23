FROM nginx

RUN rm -v /etc/nginx/nginx.conf

COPY nginx/nginx.conf /etc/nginx
COPY build/ /usr/share/nginx/html

VOLUME /usr/share/nginx/html
VOLUME /etc/nginx
VOLUME /var/log/nginx/log

EXPOSE 80
