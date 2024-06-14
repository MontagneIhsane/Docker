# Utiliser une image de base officielle Node.js (par exemple, la version 14)
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json (si présent)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port que l'application utilisera
EXPOSE 3000

# Définir la commande par défaut pour démarrer l'application
CMD ["node", "app.js"]
