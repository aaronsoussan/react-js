# Utilisation d'une image de base (ex: Node.js si c'est une app Node, Python si c'est une app Django/Flask)
FROM node:18

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers de l'application
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie du reste des fichiers
COPY . .

# Exposition du port de l'application
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
