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
```python 
127.0.0.1 mysite.local #My Test Site
127.0.0.1	fileDeposit
::1	fileDeposit
```

Copiez le dossier «Fichiers» du répository téléchargé et collez-le dans C:\wamp\www\ comme ceci C:\wamp\www\Fichiers. En vérifiant que le chemin est bien C:\wamp ou C:\wamp64, si c’est wamp64 vous pouvez soit renommer le dossier en wamp lorsque wampserver est désactivé, soit modifier les différents codes   proposés en replaçant wamp par wamp64

Accédez à C:\wamp\bin\apache\apacheX.X.XX\conf\

Ouvrez le fichier httpd.conf à l'aide d'un éditeur de texte et si vous avez un «#» avant 

Inclure conf/extra/httpd-vhosts.conf,

supprimez-le en modifiant:
```python 
# Include conf/extra/httpd-vhosts.conf
```
à:
```python 
Include conf/extra/httpd-vhosts.conf
```
c'est-à-dire décommentez la ligne afin qu'elle puisse inclure le fichier d'hôtes virtuels.

coller le code suivant dans le fichier 
```python 
Listen 0.0.0.0:81
Listen [::0]:81
```
Aller à C:\wamp\bin\apache\apacheX.X.XX\conf\extra\ et ouvrir httpd-vhosts.conf, ajouter le code suivant:
```python 
<VirtualHost *:81>
  ServerName fileDeposit
  DocumentRoot "c:/wamp/www/Fichiers"
  <Directory  "c:/wamp/www/Fichiers/">
    Options +Indexes +Includes +FollowSymLinks +MultiViews
    AllowOverride All
    Require local
  </Directory>
</VirtualHost>

```
Redémarrer le serveur: cliquez sur l'icône de wamp dans la barre des tâches et redémarrer les services.

Aller à l’URL: http://mysite.local:81/

Tester cet url pour voir si votre serveur de fichier a été installé avec succès, vous devriez voir une image apparaître:http://mysite.local:81/noodles.jpg

## Tomcat
Télécharger et installer Tomcat 9 puis créer un serveur tomcat 9 dans eclipse

## Apache Glassfish

Télécharger et installer glassfish (glassfish 5.0 full platform), ouvrir une console de commande windows ( testé avec l’invite de commandes cmd de windows) utiliser la commande cd pour aller vers le dossier /bin exécutable de 

## glassfish :

cd lien/complet/vers/le/dossier/bin
En remplaçant le lien fictif ci dessus par le vrai lien vers le dossier /bin
Puis pour lançer glassfish, taper asadmin start-domain --verbose


# Déploiement
On procède d’abord par la compilation de l’ensemble des projets

Il faut que les projets soient compilés sous la même version de java (à faire pour chaque projet sauf p3-parent):

   un clic droit>properties>Java Build Path>LibrariesJRE System Library[Java SE-1.8]>Edit>Alternate JRE et choisir jdk1.8.0_131 si aucune jdk de java n’est ddisponible aller sur Installed JREs>Add>Standard VM>Next>Directory et choisir le dossier de l’installation du jdk disponible et la cocher lorsqu’elle apparait dans la liste pour qu’elle soit votre JRE par défaut du WORKSPACE.
    ou cocher Workspace default JRE(jdk1.8.0-131).
    Aller à l’onglet Order and Export puis cocher la case correspondante a JRE System Library, cocher aussi la case correspondante à tomcat pour les webappmarm.
Dans le menu à gauche aller à Deployment Assembly puis Add>Java Build Path Entries et choisir Maven Dependencies (si possible). 

(On compilera d’abord le projet p3-parent) en faisant les commandes mvn-clean et mvn-install dans eclipse en choisissant le projet p3-parent, puis après un clique droit aller dans le sous menu “Run as” puis choisir maven clean, puis maven install. 	

Accéder a l’application glassfish en se rendant au lien http://localhost:4848 sur dans le menu à droite, cliquer sur l’item Applications puis sur le bouton Deploy, importer le war de bibliot-webservices, pour ce faire il faut copier le lien vers le war en allant dans l’IDE eclipse et faire un clique droit sur le projet

“bibliot-webservices>target>bibliot-webservice-0.0.1-SNAPSHOT” 


puis aller à “show-in” puis “system explorer” qui ouvre l’explorateur système copier le lien puis retourner dans l'application glassfish et après avoir cliqué sur “choisir un fichier” coller le lien précédemment copié et choisir l’archive war. Dans “Context-root” mettre “/bibliot-webservice-new”, Dans “Application Name” mettre “bibliot-webservice-new” puis cliquer sur Ok.

Dans l’IDE eclipse compiler le projet “bibliot-wsclient” “run as”>“maven clean”?“run as”>“maven generate-sources” puis “run as”>“maven install”

Finalement compiler “bibliot-webappfinal” en faisant ces mêmes commandes MAVEN puis lancer l’application en cliquant sur le projet “bibliot-webappfinal”>”run as”>”run on server” et choisir le serveur de type tomcat 9 (la créer si elle n’existe pas) changer les ports de déploiement du serveur 

(on pourra prendre par exemple 18080 18005 18009)

en allant dans l’onglet serveur de l’ide Eclipse,ouvrir la page de configuration de tomcat soit en double cliquant soit en faisant un clique droit>ouvrir. 
Naviguer vers le menu ports de l’écran et changer les numéros de ports et aussi augmenter les temps de timeouts ( par exemple de 45 à 60 secondes)

La page d’accueil apparaît et la navigation sur le site peut commencer : la liste des identifiants (nom utilisateur/mot de passe) de connexion sont les suivantes:

carino  :   pass1

util    :   modep

user    :   password

admin   :   password

rootroot:   rootroot

root    :   root
 

## Créé avec

Spring- The project framework used
Maven - Dependency Management
Java - programming language used
Tomcat 9 - used for deploying the web server
Apache glassfish - Used for Web services 
Eclipse - IDE

## Contributing

Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.


## Authors

Ryan Baptiste - étudiant          
See also the list of contributors who participated in this project.

## License

This project is licensed under the github License - see the LICENSE.md file for details

## Acknowledgments

À mes camarades étudiant avec qui j’ai collaboré pour commencer ce projet
À mon mentor qui m’as guidé tout au long du processus de l’élaboration du projet


 














