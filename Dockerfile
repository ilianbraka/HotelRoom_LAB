#Utiliser une image Node.js comme base
FROM node:18

#Définir le répertoire de travail
WORKDIR /app

#Copier les fichiers de dépendances
COPY package*.json ./

#Installer les dépendances
RUN npm install

#Copier le reste de l'application
COPY . .

#Exposer le port utilisé par l'application
EXPOSE 3000

#Commande pour démarrer l'application
CMD ["npm", "start"]