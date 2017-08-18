
Réseau du Folliu - Topographie en Survex
========================================

Ce repository contiens les données topographiques du
[Réseau du Folliu](http://afb.speleologie.ch/?p=472) (lapiaz du Folliu Borna,
Canton de Fribourg, Suisse) ainsi que le dessin du réseau en format SVG.

Données
-------
Les données topographiques proviennent d'expéditions de topographie par visées
optiques réalisées entre 1999 et 2016 par l'
[Association des Folliu Bornés](http://afb.speleologie.ch/) (AFB).

Originairement saisies dans le logiciel
[Toporobot](http://www.geo.unizh.ch/~heller/toporobot/Francais/Fournisseurs/FormatsToporobot/FormatsToporobot.html),
en 2016 les données ont été migrées au format
[Survex](https://survex.com/docs/manual/datafile.htm) à l'aide du logiciel
[toporobot2survex](https://github.com/detrito/toporobot2survex).
Elles ont par la suite été réorganisés et complétées avec les nouvelles
galeries découvertes.

Logiciels
---------
Afin de travailler sur les données Survex il est nécessaire d'installer les
logiciels suivants:
* git ([archlinux](https://wiki.archlinux.org/index.php/git), debian, windows)
* survex ([archlinux](https://aur.archlinux.org/packages/survex/), debian, windows)

Installation
------------

### Installer le repository git
    git clone https://github.com/detrito/topo-folliu

### Télécharger la dernière version du repository git
    $ cd /path/to/working/dir
    $ git pull

Utilisation
-----------

### Compiler le projet et l'ouvrir en visualiseur 3D
    $ aven main.svx

### Ouvrir le projet avec le le visualiseur 3D
    $ aven main.3d

### Ajouter une nouveau segment de topographie
* créer le fichier survey/s217.svx
* ajouter au fichier main.svx la ligne:
    *include surveys/nom_survex_217
* compléter le bouclage entre la première station avec la station no. 27 du
  segment de topographie no. 108 en ajoutant au fichier main.svx la ligne:
    nom_survex_217.0 nom_survey_108.27

### Générer la coupe
    $ cd coupe/
    $ ./extend.sh
    $ aven coupe_main.3d

### Générer un bout de coupe à importer dans Illustrator
    $ cd coupe/
    $ vim specfile_st_barbe.txt
    $ ./extend.sh
    $ coupe_st_barbe

    file->export as
    elements:
    - underground survey legs
    - passages
    - scale 1:500
    - format .svg

