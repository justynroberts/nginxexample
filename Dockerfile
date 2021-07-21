From ubuntu

#Lets install NGINX
RUN apt-get -y update && apt -y install nginx

#Module locations found by logging into container & running nginx -V
COPY /files/glibc-nginx-1.18.0-ngx_http_ot_module.so  /usr/lib/nginx/modules/ngx_http_opentracing_module.so
COPY /files/glibc-libinstana_sensor.so /usr/local/lib/libinstana_sensor.so
COPY /files/instana-config.json /etc/instana-config.json
COPY sample.conf /etc/nginx/nginx.conf

#ignore this stuff below  its just for testing.
EXPOSE 80/tcp

CMD /usr/sbin/nginx && tail -f /dev/null
