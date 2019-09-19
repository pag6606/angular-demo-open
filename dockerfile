FROM nginx:alpine
WORKDIR /usr/share/nginx/html/demo-app
COPY dist/ .
EXPOSE 80