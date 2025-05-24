# Use official Nginx base image
FROM nginx:alpine

# Remove default Nginx index file
RUN rm -rf /usr/share/nginx/html/*

# Copy custom index.html to Nginx's root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server (default CMD is already fine in base image)
