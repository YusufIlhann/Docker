# FROM nginx
# COPY ./index.html /usr/share/nginx/html/index.html
# COPY ./health-check.conf /etc/nginx/conf.d/health-check.conf
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



