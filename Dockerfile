# To test:
# docker build -t chryzrose/dotorg .
# docker run --rm chryzrose/dotorg
# curl -s -D - http://localhost:8000 | grep "Professional Portfolio"
# -- should return two lines, the title and the body, retcode 0
FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY chryzrose.org.conf /etc/nginx/conf.d/chryzrose.org.conf
COPY site /usr/share/nginx/html
