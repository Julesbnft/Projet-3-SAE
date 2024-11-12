
---

### suivi_projet.md

```markdown
# Suivi Projet - SAE Dolibarr

## Mardi 5 Novembre 2024 - 3 heures
- **Objectifs** : Découverte des besoins du projet, répartition des tâches, exploration des solutions possibles.
- **Avancements** :
  - Étude des exigences de Dolibarr et de la configuration Docker.
  - Mise en place initiale de Docker Compose pour Dolibarr et MariaDB.
- **Difficultés** : Problèmes de permissions avec Docker, résolus en ajustant les autorisations.

## Mercredi 6 Novembre 2024 - 3 heures
- **Objectifs** : Configurer la connexion entre Dolibarr et MariaDB.
- **Avancements** :
  - Finalisation de la configuration du fichier `docker-compose.yml`.
  - Connexion réussie à l'interface Dolibarr via `localhost:8080`.
- **Difficultés** : Problèmes de connexion à la base de données, résolus en ajustant les variables d’environnement.

## Jeudi 7 Novembre 2024 - 9 heures
- **Objectifs** : Finaliser la configuration, automatiser les sauvegardes, documenter le projet.
- **Avancements** :
  - Création d’un script de sauvegarde `backup.sh` pour la base de données et les fichiers.
  - Documentation complète du projet avec le README et le journal de bord.
- **Difficultés** : Ajustements mineurs pour garantir la compatibilité du script de sauvegarde avec Docker.
