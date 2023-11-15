# Utilisez l'image officielle Flutter comme base
FROM cirrusci/flutter:latest

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY . .

# Mettre à jour les packages pub
RUN flutter pub get

# Builder l'application Flutter pour la production
RUN flutter build apk --release

# Exposer le port nécessaire par votre application (remplacez-le par le port réel)
EXPOSE 8083

# Commande pour démarrer votre application
CMD ["flutter", "run", "--release"]
