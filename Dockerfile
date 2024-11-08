# Dockerfile

# Usar uma imagem base do Node.js
FROM node:14

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instalar apenas dependências de produção
RUN npm install

# Copiar o restante do código para o diretório de trabalho
COPY . .

# Expor a porta usada pela aplicação
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]