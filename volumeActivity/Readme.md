# Práctica: Volúmenes compartidos en Docker

## Objetivo

Comprender cómo funcionan los **volúmenes en Docker** y cómo permiten **compartir datos entre contenedores**, incluso cuando estos se ejecutan de forma independiente.

Al finalizar esta práctica, el estudiante será capaz de:
- Crear y usar un volumen Docker
- Montar un mismo volumen en múltiples contenedores
- Verificar la persistencia y el intercambio de datos entre contenedores

---

## Descripción de la actividad

Inicie dos contenedores llamados **`c1`** y **`c2`** en **modo desacoplado (detached)** utilizando **el mismo volumen Docker**.

- Un contenedor debe **escribir un archivo** en el volumen.
- El otro contenedor debe **leer ese archivo** desde el mismo volumen.

El volumen debe llamarse **`my_shared_volume`** y debe montarse en la ruta **`/datos`** dentro de ambos contenedores.

---

## Pistas generales

- Los volúmenes pueden crearse automáticamente al iniciar un contenedor.
- Ambos contenedores deben montar **el mismo volumen** y en **la misma ruta interna (`/datos`)**.
- Recuerde que los contenedores son efímeros, pero los volúmenes no lo son.

---

## Pasos de la práctica

### Paso 1: Copiar el script en el contenedor `c1`

En una pestaña de la terminal, copie el archivo **`contador.sh`** dentro del directorio **`/datos`** del contenedor **`c1`**.

💡 **Pista:** piense en cómo transferir archivos **desde el host hacia un contenedor**.

---

### Paso 2: Ejecutar el contenedor `c1`

Ejecute el contenedor **`c1`** de forma que el script ubicado en **`/datos`** sea ejecutado.

💡 **Pista:** el contenedor debe ejecutar directamente un archivo `.sh`.

---

### Paso 3: Copiar el script en el contenedor `c2`

En otra pestaña de la terminal, copie el archivo **`creador.sh`** dentro del directorio **`/datos`** del contenedor **`c2`**.

💡 **Pista:** este paso es conceptualmente igual al Paso 1, pero aplicado al segundo contenedor.

---

### Paso 4: Ejecutar el contenedor `c2`

Ejecute el contenedor **`c2`**.

💡 **Pista:** observe cómo este contenedor accede a información creada por otro contenedor a través del volumen compartido.

---

## Resultado esperado

- Ambos contenedores pueden acceder al contenido de **`/datos`**.
- El archivo creado o modificado por un contenedor es visible desde el otro.
- El volumen **`my_shared_volume`** mantiene los datos incluso si los contenedores se detienen o eliminan.

---

## Preguntas de reflexión

1. ¿Qué ocurre con los datos si se elimina uno de los contenedores?
2. ¿Qué ocurriría si cada contenedor usara un volumen diferente?
3. ¿Por qué los volúmenes son esenciales para aplicaciones con bases de datos?