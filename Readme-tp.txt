Paso 1: Una vez con el repo clonado, instalemos los requerimientos. Con el comando pip install -r .\requeriments.txt

Paso 2: Como ya tenemos el Dockerfile vamos directamente a construir la imagen.
        Desde la raiz, ejecutamos:  docker build -t registro-iniciativas .

Paso 3: Una vez finalizado el proceso de construccion de imagen, seguimos con darle inicio.
        En la misma terminal, ejecutamos: docker run -d --name contenedor-python registro-iniciativas 

Paso 4: Y directamente procedemos a ejecutar el contenedor
        Esto lo haremos con el siguiente comando: docker run --rm -v $(pwd)/Data:/Data registro-iniciativas

Si todo es correcto, en la carpeta data una vez finalizado el proceso veremos como se crearon el archivo JSON y el archivo xlsx.

En el archivo dockerfile esta comentada cada parte del proceso tambien.