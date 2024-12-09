# IUT Rouen - Réseaux & Télécoms - BUT3  
5 novembre 2024  
SAE - Projet 3 - FA  
HARDOUIN Valentin et BONENFANT Jules  

## Installation de Dolibarr : Possibilités et Procédures

### 1. Options d'installation de Dolibarr

Il est possible d'installer Dolibarr ERP/CRM de plusieurs manières, suivant les préférences et les besoins d'hébergement :

- **Images Docker**
  - **Images disponibles** : Il existe plusieurs images Docker pour Dolibarr, comme l'image officielle et des versions modifiées par la communauté.
  - **Différences principales** :
    - L'image officielle est maintenue à jour par la communauté Dolibarr et offre des versions stables avec des configurations standard.
    - Les images communautaires peuvent inclure des optimisations, des modules additionnels ou des configurations avancées.
  - **Procédure d'installation** :
    1. Vérifiez que Docker est installé.
    2. Téléchargez l'image : `docker pull dolibarr/dolibarr`.
    3. Lancez le conteneur :
       ```bash
       docker-compose up -d
       ```
    4. Accédez à l'application via `http://localhost:8080`.

### 2. Dolibarr : Origine, développement et communauté

- **Origine et développement** : Dolibarr a été développé en France par Laurent Destailleur. C'est un logiciel open source soutenu par une communauté de développeurs mondiaux.
- **Rythme de publication** : Les versions majeures sortent environ tous les 6 mois, tandis que les mises à jour mineures sont plus fréquentes.
- **Communauté et support** :
  - **Forums actifs** et support via diverses entreprises et consultants.
  - **Points forts** : Interface modulaire et intuitive.
  - **Points faibles** : Certaines fonctionnalités avancées nécessitent des modules payants.

### 3. Structure des bases de données Dolibarr

Dolibarr utilise un SGBD (MySQL/MariaDB ou PostgreSQL). Lors de l'installation, il crée plus de 300 tables pour gérer les différents modules et fonctionnalités. Voici un aperçu des types de tables courantes :
- **Tables principales** : `llx_societe`, `llx_facture`, `llx_commande`.
- **Colonnes typiques** : Identifiants, dates, montants, et relations avec d'autres tables.

### Conclusion

Dolibarr représente une solution adaptable entre facilité d'utilisation et gestion modulaire. Ses différentes options d'installation permettent de répondre à divers besoins selon l'infrastructure de l'entreprise.




  - **Etapes du projet** :

    1. Découverte et documentation de Dolibarr
    2. Répartition des tâches
    3. Première installation de Dolibarr
    4. Ajout d'un script de backup et restore
    5. Ajout d'un scrip d'import


Nous avons choisi d'installer Dolibarr via une image Docker car elle possède une documentation complète et explicite, ses avantages sont qu'il est rapide à déployer et isolé. Ses inconvénients sont qu'il est moins personnalisable sans ajustements. En complément nous avons aussi d'utiliser MariaDB en base de données.

La version utilisée est latest, mais étant donné qu'il y a souvent des mise à jour il se pourrait que des confusions et disfonctionnements soient créés au fil des mises à jour.

Pour cette SAE nous avons donc lancé notre Dolibarr via l'image Docker et avons ajouté un script de **"backup"** permettant de créer une sauvegarde actuelle de Dolibarr, sans ce script, quand on ferme la page Dolibarr rien n'est sauvegardé et il faut y re entrer les utilisateurs, données etc. De plus nous avons réalisé un script de **"restore"** avec l'utilisation de **"cron"** qui chaque nuit à 02:00 effectue une sauvegarde automatique.

Concernant le script d'import nommé **import_csv**, le but était de pouvoir importer les données (clients, fournisseurs, produits) dans Dolibarr. Il permet d'automatiser l'ajout d'information en suivant bien un format qui est standardisé, ainsi, évite la saisie manuelle.