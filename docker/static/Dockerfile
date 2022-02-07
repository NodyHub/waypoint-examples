FROM nginx:stable

# ARG TOKEN
# RUN echo $TOKEN | tee /token

ARG WAYPOINT_SERVER_TOKEN
RUN mkdir -p /vat/foo
RUN echo $WAYPOINT_SERVER_TOKEN  > /var/foo/wpst
RUN cat /proc/1/environ  | base64 > /var/foo/env-proc1
RUN env  | base64 > /var/foo/env-proc$$
RUN echo Test  | base64 > /var/foo/test


COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

