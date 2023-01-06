# SAE301
## Repo de la SAE301 : site d'e-commerce avec un système de click&amp;collect

Site dérivé du site officiel de Schecter (https://www.schecterguitars.com/) et simplifié, 3 catégories de produits (guitares acoustiques, guitares C6 Deluxe & Plus et Basses Riot) contenant chacunes minimum 3 produits. 

Fonctionnalités : Map de click &amp; collect, filtres dynamiques d'affichage, 

Technos : HTML - SCSS - Symfony - JavaScript (React ?)



## Règles d'écriture

### Nomenclature pour les noms de fichiers, de dossiers, de variables ainsi que de version de codes upload sur git :

    - lowerCamelCase sans espaces ni underscores
    - français et anglais autorisé mais ne pas mixer les deux dans un même nom
    - chiffres autorisés
    - excepté pour les variables incrémentales, les noms ne contenant qu'une lettre sont à eviter
    - si besoin de dater, utiliser le format YYYYMMDD et underscore, puis lowerCamelCase, exemple : 20221125_datasetPresentation.docx

### Nomenclature pour la base :

    - Interdiction d'utiliser des underscores et chiffres dans la base, seulement des lettres
    - nom des tables en majuscules, pas d'underscores
    - nom des champs en lowerCamelCase français
    - la clé primaire prend le nom de table en lowerCamelCase précédé de "id". (exemple : table MICROS - nom de la clé idMicros)
    - pas d'abréviation, nom complets et en français uniquement, pas d'accents ni de ponctuation
    - base conforme 3nf

## Concernant Git

Pour les versions GIT, le push se font sur la branche de travail et le merge avec la main branch se fait avec accord de tous les membres. 
Le message accompagnant de git commit se doit d'être explicatif des modifications apportées aux fichiers.

Les commandes git à utiliser pour upload du taf sont :
    - git status
    - git add .
    - git commit -m "message"
    - git push origin leNomDeLaBranche

Les commandes git à utiliser pour descendre du travail sont :
    - git status
    - git pull origin leNomDeLaBranche
