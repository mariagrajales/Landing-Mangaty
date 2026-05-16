# Usamos una imagen ligera de Nginx basada en Alpine Linux
FROM nginx:stable-alpine

# Copiamos el contenido del proyecto al directorio donde Nginx sirve los archivos
COPY . /usr/share/nginx/html

# Exponemos el puerto 80 (estándar de Nginx)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]