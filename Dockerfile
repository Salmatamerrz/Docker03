FROM httpd:latest

# Copy the HTML file
COPY index.html /usr/local/apache2/htdocs/

# Copy configuration file to listen on port 9999
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Open port 9999 in the container
EXPOSE 9999

# Add environment variable
ENV CONTAINER docker

# Add startup command to echo the variable
CMD ["/bin/sh", "-c", "echo The container is $CONTAINER && httpd-foreground"]