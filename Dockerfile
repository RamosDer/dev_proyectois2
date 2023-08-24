# Usar una imagen base de Python
FROM python:3.8-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar los archivos de requerimientos (requirements.txt) al contenedor
COPY requirements.txt .

# Instalar las dependencias del proyecto
RUN pip install -r requirements.txt

# Copiar el resto de los archivos de la aplicación al contenedor
COPY dev_proyectois2/ /app/
COPY db.sqlite3 /app/
COPY manage.py /app/
COPY README.md /app/

# Expone el puerto en el que se ejecuta la aplicación (por ejemplo, 8000)
EXPOSE 8000

# Comando para ejecutar la aplicación Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
