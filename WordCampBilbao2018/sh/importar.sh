#Descargar e instalar WordPress
wp core download --locale=es_ES
#Crear el wp-config.php
wp config create --dbname=ejemplo --dbuser=root --dbpass=root --dbprefix=wcb_
#Crear Base de Datos
wp db create
#Instalar WordPress
wp core install --url=http://wcbilbao.local --admin_user=fgr --admin_password=fgr --admin_email=info@fgrweb.es --title="WordCamp Bilbao 2018"
#Renombrar wp-content
mv wp-content _wp-content
#Descomprimir wp-content original
tar -xvf backup.tar
#Importar Base de Datos
wp db import BD-local.sql
#Reemplazar URL
wp search-replace 'http://wpcli.local' 'http://wcbilbao.local'