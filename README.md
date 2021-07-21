# Sample NGINX Instana Tracing.

Created as an example to the documentation at 
https://www.instana.com/docs/ecosystem/nginx/#distributed-tracing

Example is 1.18 version of NGINX - you will need to get the right binary for your distribution.

Logging into the container and running` nginx -v` gives lots of useful information if you are using non standard module locations.


to run :

Clone this repo
 ` cd nginxexample`
 `sudo chmod +x build`
`./build `


This will build, and deploy the ngx-tracing container locally.

------------
`docker logs ngx-tracing` should show :-

Instana C++ Sensor v1.1.2 has been loaded.


Supplied AS is, Let me know if I can help.
