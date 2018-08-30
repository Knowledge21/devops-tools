FROM httpd:2.4
EXPOSE 80

COPY ./public/index.html /usr/local/apache2/htdocs/
RUN chmod a+rx /usr/local/apache2/htdocs/index.html
