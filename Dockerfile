# Utiliser l'image de base Python 3.9
FROM python:3.9-slim-buster

# Copier le script Python et les fichiers requis dans le conteneur
COPY requierement.txt tp1.py ./

# Installer les dépendances
RUN pip install --no-cache-dir -r requierement.txt

ENV MESSAGE="Hello, World!"
ENV APP_PORT="5000"


# Exposer le port utilisé par l'application
EXPOSE 5000

# Définir la commande pour lancer l'application
CMD ["python", "tp1.py"]