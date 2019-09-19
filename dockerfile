FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY dist/demo-app . 
EXPOSE 80