FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY dist/demo-app . 
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
RUN sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf

RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
