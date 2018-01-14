FROM kter/nginx-vts-module:2018011421241515932690

COPY _site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
