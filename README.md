# Projet p3 Baptiste
Le projet visé est la simulation d’un site d’une bibliothèque en ligne . C'est un Site très simple avec une page accueil, une page des résultats de recherche, une page où Sont Listés les prêts d’un utilisateur   pourvu qu'il soit connecté,  une page utilisateur et une page de Connexion  tous partagent en Commun le même menu.

## Getting Started
Dans le but de développer des compétences avancées en java on est amené à réaliser ce premier grand projet, le projet p3 qui vise à simuler un site web bibliothécaire. Pour pouvoir utiliser ce projet, aller à l'adresse GIT CI dessous: https://github.com/BAPTISTE-Ryan/p3-parent Télécharger le repository Sur votre machine

## Prérequis 
Java 8
IDE Eclipse
WampServer
APACHE Glassfish
Installation
A step by step series of examples that tell you how to get a development env running
GitHub
Télécharger et extraire le projet complet sur votre poste de travail.
 
## Java
Télécharger une JDK Java 8, la version utilisée dans le projet est la version jdk 1.8.0_131,  mais d’autres versions de java 8 peuvent être utilisées.      

(La JDK de java 1.8.0_131 est disponible ici  : https://drive.google.com/open?id=1-4RUEABEilgY5t2rLVJtAZwp7cTSzjxj
La télécharger, l’extraire et place le dossier “ jdk.1.8.0_131” dans le dossier  “C:\Program Files\Java”   puis suivre ce tutoriel pour des réglages nécéssaires supplémentraires : https://www.mkyong.com/java/how-to-set-java_home-on-windows-10/                       
 
## Eclipse
Télécharger Eclipse sur votre machine puis choisir Eclipse IDE for Enterprise Java Developers lors de l’installation.
Importer comme projet maven existant (Existing Maven project) l'ensemble des projets dans l’IDE d’Éclipse:
Dans un premier Workspace : main_workspace
  -p3-parent-master
  -bibliot-model	
  -bibliot-Consumer
  -bibliot-service
  -bibliot-webapp

  -bibliot-webservice


Puis importer ce projet en entrant son dossier  
dans un deuxième Workspace : client_workspace

  -bibliot-wsclient


Puis importer ces projets en entrant dans leur dossiers  
dans un troisième Workspace : webapp_workspace

  -bibliot-webappfinal
  -bibliot-batch

avec la version de votre choix (versions NÉON et OXYGÈNE testés avec ce projet), les projets bibliot-wsclient et bibliot-webappfinal doivent être importés à part, car il ne font pas partie du projet-p3 parent. 
 
## Wampserver
Télécharger Wampserver (installer visual studio comme indiqué sur la page de téléchargement de Wampserver s’il n’est pas installé sur votre machine ) 
Quand wamp est installé sur votre poste, cliquer sur l'icône de wamp dans la barre des tâches, et Démarrer les Services. Retourner sur ce menu et: -Désactiver le service mysql : MySQL>Administration du service ‘wampmysqld64’>Arrêter le Service
-Activer le service mariaDB : MariaDB>Administration du service ‘wampmariadb64’>Démarrer le Service
après, aller à l’adresse http://localhost:80 puis cliquer sur phpmyadmin dans la partie OUTILS en bas à gauche, utiliser root comme Username sans mot de passe sur un serveur de type mariaDB. Créer une nouvelle base de données en cliquant sur new a gauche de l’écran puis importer mydb.sql présent dans ce projet comme base de données mariadb.              

## INSTALLATION DU SERVEUR DE FICHIERS AVEC WAMP 
With WAMP (Windows)
 
Localisez le fichier hosts, Ce fichier se trouve dans C:\WINDOWS\system32\drivers\etc. Différentes versions de Windows peuvent stocker le fichier dans un répertoire différent. Selon votre configuration de  Windows, vous devrez peut-être vous connecter en tant qu'administrateur pour modifier le fichier hosts.
Ouvrez ce fichier avec un éditeur de texte (tel que Notepad ++ ou Visual Studio Code).vous devriez voir ceci:
127.0.0.1     localhost
Juste en dessous de la ligne 127.0.0.1 localhost, entrez les informations relatives à votre nom de domaine:
