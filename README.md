# README

## Requirements 

Setup environement variable : 
```shell
export AWS_ACCESS_KEY_ID='<AWS_ACCESS_KEY_ID>'
export AWS_SECRET_ACCESS_KEY='<AWS_SECRET_ACCESS_KEY>'
export AWS_REGION='<AWS_REGION>'
export AWS_BUCKET='<AWS_BUCKET>'
export AIRBNB_USER'<AIRBNB_USER>'
export AIRBNB_PASSWORD'<AIRBNB_PASSWORD>'
```

Plugins | Version
--- | ---
Ruby | 2.3.3+
Rails | 5.1.4+
PostreSQL | 10.1+

## Fonctionnalités 🇫🇷

#### Global 
- AWS S3 Bucket pour l'hébergement des images 
- Gestion des erreurs 404 et 500 
- Heroku deploy 
- Menu connecté et non connecté sur mobile et ordinateur 

#### Ateliers 
- Créer un atelier pour le louer avec : titre, types d'art, description, adresse (génère une carte), prix, nombre d'artistes maximum, photo(s)
- Recherche par titre 
- Voir les ateliers des utilisateurs 
- Réserver un atelier (date de début, date de fin, prix total)

#### Utilisateurs
- Créer un compte avec une confirmation d'email
- Possibilité d'ajouter ou modifier son profil : une photo, une description, un numéro de téléphone visible ou non sur son profil et mot de passe
- Retrouver ses réservations (à venir, passées, toutes)
- Annuler une réservation  
- Retrouver ses ateliers, pouvoir les modifier, les supprimer et les voir
- Voir le profil utilisateur de ses amis avec ses informations

#### Admin
- Espace de connexion
- Voir la liste de nos utilisateurs et pouvoir les supprimer
