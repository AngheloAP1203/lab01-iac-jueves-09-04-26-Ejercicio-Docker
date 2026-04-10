FROM nginx:alpine

# Borramos la config por defecto y ponemos la nuestra
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Copiamos las webs al contenedor
COPY src/webs/web1 /usr/share/nginx/html/web1
COPY src/webs/web2 /usr/share/nginx/html/web2

EXPOSE 4000 4001
