# Usa una imagen base de Node.js basada en Alpine
FROM node:14-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos package*.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD [ "npm", "start" ]