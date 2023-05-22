# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the HTML and CSS files to the appropriate location in the container
COPY index.html /usr/share/nginx/html/
COPY custom.css /usr/share/nginx/html/
COPY simplecalculator.js /usr/share/nginx/html/

# Expose the default HTTP port
EXPOSE 80

# Start the Nginx web server when the container starts
CMD ["nginx", "-g", "daemon off;"]