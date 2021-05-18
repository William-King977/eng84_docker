# Use Nginx official image as our base image
# By using keyword FROM

# Using Nginx official image
FROM nginx

# Optional, but a good practice
LABEL MAINTAINER = kingbigw

# Copying app1 from our OS to the specified location (in container) 
COPY app1 /usr/share/nginx/html

# Expose required port for the base image
EXPOSE 80

# Execute command for the base image
CMD ["nginx", "-g", "daemon off;"]
