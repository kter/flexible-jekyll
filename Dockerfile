FROM openresty/openresty:alpine

COPY _site /usr/local/openresty/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
