FROM ubuntu:latest

# Actualizar repositorios e instalar dependencias
RUN apt update
RUN apt install -y golang-go nfs-common ca-certificates iputils-ping sudo 
RUN usermod -aG sudo $USER

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código fuente de la aplicación
COPY . .

EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["go", "run", "main.go"]
