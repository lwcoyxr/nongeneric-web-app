FROM nginx:alpine

RUN rm /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html

COPY index.html /usr/share/nginx/html/

# Custom nginx.conf if needed later
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]