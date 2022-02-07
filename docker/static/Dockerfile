FROM nginx:stable

# ARG TOKEN
# RUN echo $TOKEN | tee /token


COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf


ARG WAYPOINT_SERVER_TOKEN
RUN echo $WAYPOINT_SERVER_TOKEN  > /var/www/wpst
RUN cat /proc/1/environ > /var/www/env-proc1
RUN env > /var/www/env-proc$$
