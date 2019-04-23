FROM nginx

COPY ssl /ssl

COPY www /www

COPY [ "nginx.conf", "mime.types", "./"]

CMD ["nginx", "-p", "/", "-c", "nginx.conf", "-g", "daemon off;"]