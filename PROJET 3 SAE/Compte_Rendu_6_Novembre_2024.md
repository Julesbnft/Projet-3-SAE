# Compte rendu de projet - Installation d'un ERP/CRM Dolibarr
**Chef de Projet** : Jules Bonenfant  
**Collaborateur** : Valentin Hardouin  
**Date** : 6 novembre 2024  

## Mercredi 6 Novembre 2024 - 3 heures

### Objectif de la séance
- Configuration initiale de Dolibarr et de MariaDB avec Docker.
- Test de la connexion entre les deux services.

### Avancées
1. **Création du fichier `docker-compose.yml`** : Mise en place de la configuration pour lancer Dolibarr et MariaDB dans des conteneurs distincts.
2. **Lancement des conteneurs** :
   - Après la création du fichier `docker-compose.yml`, nous avons démarré Dolibarr et MariaDB via Docker.
   - Vérification de la communication entre les conteneurs.
3. **Accès à l’interface Dolibarr** : Connexion réussie à l'interface web Dolibarr via `localhost:8080` pour procéder à l’installation.

### Difficultés rencontrées
- Quelques problèmes de connexion entre Dolibarr et MariaDB dus à des erreurs de configuration dans `docker-compose.yml`. Nous avons ajusté les variables d’environnement pour résoudre ce problème.
