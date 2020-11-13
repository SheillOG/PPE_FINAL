# Perpi & Co - Projet PPE3 - BTS SIO 

Perpi & Co est un logiciel développé en Java 8 (NetBeans et Intelij), il permet de gérer les système de vente d'une entreprise ainsi que d'effectuer des ventes au près des clients. (Quelques soucis peuvent être rencontré, car le projet à était commencer sur NetBeans et VmWare, puis recommencer pour cause de non compabilité sur Intelijj et Wamp)

## Documentation 📕

- 📚 [Voir la documentation](https://docs.google.com/document/d/1pQ6byV07CO8u2E9mGfx29PC48VQNcCja2vEqIatVqe0/edit?usp=sharing)

## Requis 🖱️

- 🖊️ IDE - Environnement de développement (Intelij Community, NetBeans 12.0 recommendé pour avoir accès à Swing)
- ♨️ Développent Kit - Kit de développement [Telecharger un kit de développement](https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/downloads-list.html)
- 📚 PhpMyAdmin - Un serveur de Base de données MySql comme PhpMyAdmin
- 🌀 Maven - Outil de gestion et d'automatisation de production des projets logiciels en Java  

## Installation sous Linux 📁

## Etape 1 - Installation de PhpMyAdmin sous Linux 📁

[Tutoriel pour les utilisateurs de Linux:] (http://elisabeth.pointal.org/doc/code/server/lamp/phpmyadmin).

## Etape 2 - Cloner le projet sur la machine virtuel sous linux 📁

♨️ Pour installer le JAR, il suffit de cloner le repository depuis votre machine linux:

  - >mkdir ProjetSF4
  - >cd ProjetSF4
  - >git clone https://github.com/SheillOG/PPE_FINAL.git

## Installation sous Windows (Recommendé pour le .jar) 📁

Pour commencer l'installation il faut installer MySQL et PhpMyAdmin, il est possible de les installer grâce à WAMP (Windows).
Voici un lien pour le télécharger: https://www.wampserver.com/en/download-wampserver-64bits/

- Telecharger le ProjetSF4.sql présent sur github
- Lancer WampServer
- Connectez vous sur PHPMyAdmin [Cliquer ici pour vous rendre sur la page PhpMyAdmin](http://127.0.0.1/phpmyadmin/)
- Login: root MotDePasse: laisser vide
- Rendez vous dans Importer
- Choisir un fichier (Dans notre cas le dossier ProjetSF4) et selectionner le fichier ProjetSF4.sql
- Executer le fichier

- Ensuite utiliser la documentation afin d'avoir des informations sur le logiciel ansi qu'une notice d'utilisation
- https://docs.google.com/document/d/1pQ6byV07CO8u2E9mGfx29PC48VQNcCja2vEqIatVqe0/edit?usp=sharing
