FROM nginx:stable

# ARG TOKEN
# RUN echo $TOKEN | tee /token

RUN env > /env

RUN sleep infinty

COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
