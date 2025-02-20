# Utilisation de Node.js 18
FROM node:18

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers package.json et installation des dépendances
COPY package*.json ./
RUN npm install

# Ajout du chemin pour s'assurer que `react-scripts` est trouvé
ENV PATH /app/node_modules/.bin:$PATH

# Copie du reste des fichiers
COPY . .

# Exposition du port 3000
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
