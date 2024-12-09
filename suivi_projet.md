# Suivi de Projet Final - SAE Dolibarr

## **Présentation Générale**

Le projet SAE Dolibarr avait pour objectif de déployer et de configurer une solution ERP basée sur Dolibarr en utilisant Docker. Les principaux modules, fonctionnalités, et outils nécessaires ont été configurés pour répondre aux besoins de gestion de tiers, de produits, et d'import/export de données.

---

## **Résumé des Travaux Réalisés**

### **1. Mise en Place de l'Environnement (5 novembre 2024)**
- Configuration initiale de l'environnement Docker avec **Docker Compose**.
- Création des fichiers nécessaires :
  - `docker-compose.yml` : Configuration des conteneurs pour Dolibarr et MariaDB.
  - Lancement des services avec `docker-compose up`.

### **2. Création et Gestion des Tiers (6 novembre 2024)**
- Accès à l’interface Dolibarr via [http://localhost](http://localhost).
- Création de tiers fictifs (clients, fournisseurs) pour simuler des données réelles.
- Découverte des modules principaux de Dolibarr, notamment la gestion des tiers.

### **3. Sauvegarde et Restauration (7 novembre 2024)**
- Rédaction d’un script Bash (`backup.sh`) pour automatiser la sauvegarde :
  - Export de la base de données avec `mysqldump`.
  - Copie des fichiers Dolibarr.
- Validation du script avec des tests manuels.

### **4. Importation de Données (12 novembre 2024)**
- Création initiale d'un fichier CSV (`import_csv`) pour importer des tiers dans Dolibarr.
- Tests d'importation avec correction des erreurs liées aux champs manquants (ajout des champs `login`, `statut`).
- Validation des données importées dans le module "Tiers".

### **5. Configuration du Cron (4 décembre 2024)**
- Automatisation des sauvegardes avec une tâche **cron** configurée pour s’exécuter quotidiennement à 2h du matin.
- Tests pour valider le fonctionnement de la tâche automatique.

### **6. Tests Finaux et Importation Complète (4 décembre 2024)**
- Finalisation du fichier CSV (`import_csv`) avec des données supplémentaires.
- Importation complète des tiers et validation des modules Dolibarr.
- Test de la restauration à partir des sauvegardes générées par le script :
  - Récupération de la base de données et des fichiers Dolibarr.
- Organisation des livrables finaux pour présentation.

---

## **Étapes Clés**

| Date               | Étape                                             |
|--------------------|---------------------------------------------------|
| 5 novembre 2024    | Mise en place de l'environnement Docker.          |
| 6 novembre 2024    | Création et gestion des tiers.                    |
| 7 novembre 2024    | Sauvegarde et restauration.                       |
| 12 novembre 2024   | Importation initiale de données via CSV.          |
| 4 décembre 2024    | Configuration du cron, tests finaux et validation.|

---

## **Problèmes et Solutions**

1. **Problème d'accès à MariaDB pour la restauration** :
   - Solution : Utilisation d'un client MySQL local via Homebrew et d'une image Docker temporaire.

2. **Erreurs d'importation CSV** :
   - Solution : Ajout des champs obligatoires (`login`, `statut`) et correction des types de données (`Client` → `1`, `Fournisseur` → `2`).

---

## **Conclusion**

Le projet est maintenant terminé. Dolibarr est opérationnel, et toutes les fonctionnalités principales ont été validées avec succès. Les objectifs définis au début du projet ont été atteints, et l'ensemble des livrables (scripts, fichiers CSV, sauvegardes) sont disponibles.

---

## **Livrables**

1. `docker-compose.yml` : Configuration des services Docker.
2. `backup.sh` : Script de sauvegarde.
3. `import_csv` : Exemple de fichier d'importation.
4. Dossier `dolibarr_backup` : Sauvegardes des données.
5. Compte-rendus des séances : 5, 6, 7 novembre, 12 novembre et 4 décembre 2024.

---

### **Fin du Projet**

Ce projet nous a permis de développer des compétences techniques (Docker, MariaDB, ERP) et organisationnelles (gestion de projet, documentation).

---

