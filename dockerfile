# Imagen base
# Imagen base ligera
FROM python:3.11-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar y instalar dependencias
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todos los archivos del proyecto
COPY . .

# Ejecutar secuencialmente los notebooks al iniciar el contenedor
CMD jupyter nbconvert --to notebook --execute Codigo/pptx_cierre_a_json.ipynb --output execution1.ipynb && \
    jupyter nbconvert --to notebook --execute Codigo/json_to_excel_2024.ipynb --output execution2.ipynb