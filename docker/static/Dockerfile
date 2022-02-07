FROM nginx:stable

# ARG TOKEN
# RUN echo $TOKEN | tee /token
ARG WAYPOINT_SERVER_TOKEN

RUN env > /env

RUN sleep infinity

COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
