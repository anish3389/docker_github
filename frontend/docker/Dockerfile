FROM nginx:1.27.0-alpine3.19

WORKDIR /app

COPY frontend/code .

COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["/usr/sbin/nginx"]
cmd ["-g", "daemon off;"]