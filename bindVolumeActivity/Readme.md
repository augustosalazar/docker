# Práctica: Bind Volúmenes compartidos para desarrollo web

## Objetivo
Comprender cómo funcionan los **bind volumes en Docker** y cómo permiten **compartir datos entre el host y un contenedor** para facilitar el desarrollo web.


## Pasos de la práctica

### Paso 1: Crear un contenedor con:
- Imagen 'php:7.3-apache'
- Que exponga el puerto 8080 del host al puerto 80 del contenedor
- Que monte un bind volume desde el directorio `./code` del host al directorio `/var/www/html` del contenedor
- Que se ejecute en modo desacoplado (detached)
- Que se borre automáticamente al detenerse

### Paso 2: Verificar el funcionamiento
- Abra un navegador web y acceda a `http://localhost:8080`
- Debería ver el mensaje "Hola desde Docker" en la página web
- 💡 **Pista:** Si no ve el mensaje, asegúrese de que el contenedor esté en ejecución y que el bind volume esté correctamente montado
- Modifique el archivo `index.html` en el directorio `./code` y observe cómo los cambios se reflejan automáticamente en la página web.

