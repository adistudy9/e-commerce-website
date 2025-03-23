# Use official NGINX image as the base image
FROM nginx:latest

# Expose port 81 to make it accessible
EXPOSE 81

# Copy custom NGINX configuration (optional, if needed)
# COPY nginx.conf /etc/nginx/nginx.conf

# Optionally, copy your static HTML files or app content to the default NGINX directory
# COPY ./html /usr/share/nginx/html

# Start NGINX with the default configuration
CMD ["nginx", "-g", "daemon off;"]
