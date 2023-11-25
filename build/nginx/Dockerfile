FROM alpine:3.18
RUN apk add --no-cache nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/http.d/default.conf
COPY run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
expose 80
ENTRYPOINT ["/tmp/run.sh"]