FROM nginx:alpine

# Copy website files
COPY . /app/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 3874
EXPOSE 3874

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 