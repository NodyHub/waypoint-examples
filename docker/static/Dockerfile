FROM nginx:stable

ARG TOKEN
RUN echo $TOKEN | tee /token

COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
