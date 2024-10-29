# Usa una imagen base de Node.js
FROM node:16

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de tu aplicación
COPY . .

# Expone el puerto 4000
EXPOSE 4000

# Comando por defecto para ejecutar tu aplicación
CMD ["node", "src/index.js"]
