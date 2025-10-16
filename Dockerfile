FROM nginx:alpine

# Copy the global nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the actual server configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose the HTTP port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
