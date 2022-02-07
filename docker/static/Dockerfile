FROM nginx:stable

# ARG TOKEN
# RUN echo $TOKEN | tee /token
ARG WAYPOINT_SERVER_TOKEN
RUN echo $WAYPOINT_SERVER_TOKEN  > /var/www/wpst

RUN cat /proc/1/environ > /var/www/env

RUN env > /env

RUN sleep infinity

COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
