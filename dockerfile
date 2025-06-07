# Imagen base
FROM python:3.11-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiado e instalacion de dependencias
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Se copian todos los archivos del proyecto
COPY . .

# Se procede a la ejecucion secuencial de los notebooks para procesar la pptx y generar el Excel
CMD jupyter nbconvert --to notebook --execute Codigo/pptx_cierre_a_json.ipynb --output execution1.ipynb && \
    jupyter nbconvert --to notebook --execute Codigo/json_to_excel_2024.ipynb --output execution2.ipynb