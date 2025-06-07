Este código cuenta con dos notebooks que deben ser ejecutadas secuencialmente.

En ../Data/ tiene que vivir la pptx y el nombre debe mantener el formato "2025-I+D_Ficha Registro Iniciativas",
sino editar el str con el nombre del archivo en pptx_cierre_a_json

En ../Data/ se guarda el ouput (un xlsx). Siempre checkearlo y cambiarle el nombre, agregandole la fecha de corrida como "output_proyectos_25.04.25" (aa.mm.dd)

Primero, pptx_cierre_a_json, luego json_to_excel

Paso 1:
pptx_cierre_a_json:
requeriments: 
from pptx import Presentation
import os
import json

Extrae los cuadros de texto para cada slide de la pptx. Cada cuadro de texto es una str.
Hay que especificar la ruta hacia la pptx y la ruta donde querramos guardar el output (el .JSON)

Paso 2:
Para extraer la información del .JSON (input) y devolver un Excel ordenado (output) con toda la información, podemos correr json_to_excel, que solo requiere librerías de Python o utilizar GPT_json_to_excel, que llama a GPT para extraer la información.

json_to_excel:
requeriments:
import pandas as pd
import json
import re
from openpyxl import load_workbook

Usa librerías comunes de Python para extraer los datos del json, utilizando regex, y generar el Excel. Es muy importante que la pptx (y por ende el json) estén estructurados y conserven el estilo. Distintas funciones dentro del código van extrayendo la info y limpiando lo str de caracteres o palabras no deseados.
Checkear cuales diapositivas contienen información de proyectos y cuales son portadas para filtrar la info del json que no nos interesa (por suerte esta info está al principio y final de todo).

Paso 3:
Revisar el output (el Excel) ya que en algún campo puede haber fallado. 