FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY dist/demo-app . 
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
