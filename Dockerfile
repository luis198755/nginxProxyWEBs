# Use a lightweight web server as the base image
FROM nginx:latest
#FROM nginx:alpine

# Copy the HTML and CSS files to the web server root directory
COPY Luis/ /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
