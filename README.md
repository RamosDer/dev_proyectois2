1) Activar el interprete de Python desde command palette (el del entorno virtual)
2) Instalar la extensión para Sqlite3
3) Instalar SQLITE3 desde la terminal:
    sudo apt install sqlite3


# Instalar DOCKER:
sudo apt update

    Instalar las dependencias necesarias para agregar repositorios HTTPS
        sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

    Agregar la clave GPG oficial de Docker
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    Agregar el repositorio de Docker al sistema.
        echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    Instalar Docker.
        sudo apt update
        sudo apt install -y docker-ce docker-ce-cli containerd.io

# Crear un archivo DockerFile en el directorio raíz del proyecto

# Agregar usuario al grupo docker
    sudo usermod -aG docker hderlis

# Construir una imagen de Docker
    docker build -t img_proyectois2 .

# Docker run
    docker run -d -p 8000:8000 --name mi_contenedor img_proyectois2
