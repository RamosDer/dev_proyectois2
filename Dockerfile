# Usar una imagen base de Python
FROM python:3.8.10-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar los archivos de requerimientos (requirements.txt) al contenedor
COPY requirements.txt .

# Instalar las dependencias del proyecto
RUN pip install -r requirements.txt

# Copiar todo el proyecto al directorio de trabajo en el contenedor
COPY . .

# Confifurar la variable de entorno de Django para que apunte a la configuración del proyecto
ENV DJANGO_SETTINGS_MODULE=cms.settings

# Expone el puerto en el que se ejecuta la aplicación (por ejemplo, 8000)
EXPOSE 8000

# Comando para ejecutar la aplicación Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
