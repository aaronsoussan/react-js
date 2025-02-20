# Utilisation de Node.js 18
FROM node:18-alpine

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers package.json et installation des dépendances
COPY package*.json ./
RUN npm install

# Copie du reste des fichiers
COPY . .

RUN npm run build

RUN npm install -g serve

# Exposition du port 3000
EXPOSE 3000

# Commande de démarrage
CMD ["serve", "-s", "build", "-l", "3000"]
