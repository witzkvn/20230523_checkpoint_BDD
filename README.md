# Checkpoint - Base de données

## Préparation

Afin de réaliser ce checkpoint, tu dois cloner ce repository, naviguer dans le dossier cloné puis l'ouvrir avec ton IDE préféré.

Installe ensuite les dépendances avec :

```
npm i
```

## Lancer l'app

Tu peux ensuite lancer l'application avec la commande :

```
npm run watch
```

## Écrire ses requêtes

Enfin, pour tester tes requêtes, navigue dans le dossier `./queries` et regarde les fichiers qui se terminent par `.sql`.

Au début, ils ne comportent qu'un commentaire SQL avec la consigne, à toi de les remplir avec la requête SQL adéquate. Sauvearde le fichier SQL, et l'application devrait automatiquement se relancer et exécuter ta requête.

**Note 1 :** les fichiers SQL sont pensés pour être remplis un à un, en commençant par la construction du schéma de base de données, grâce au fichier exporté de DBDesigner et dont le contenu est copié/collé dans `./queries/0_create_database.sql`.

**Note 2 :** à chaque fois que tu enregistres un fichier SQL, l'app est relancée et commence systématiquement par détruire la BDD si elle existe, puis exécute tes fichiers SQL. Il n'y a donc pas de persistence des données d'une exécution à l'autre, pour avoir tes données, tu dois bien remplir le fichier `./queries/1_insert_data.sql`.

**Note 3 :** les commentaires (lignes qui commencent par # dans tes fichiers SQL) sont automatiquement ignorés. Tes requêtes SQL doivent **obligatoirement** se terminer par des `;` pour bien être exécutées. Un fichier peut contenir aucune, une ou plusieurs requêtes.

## Optionnel : pousser sur ton repo

Si tu le souhaite, n'hésite pas à pousser tes fichiers sur un repo perso ! Pour cela, je te conseille de :

- supprimer le dossier `.git` du dossier de travail,
- créer sur Github ton nouveau repo, et en récupérer l'adresse (SSH si possible),
- initier un nouveau repo git dans ton dossier avec `git init`,
- ajouter l'adresse de ton repose avec `git remote add origin {{REPO_SSH}}`,
- et enfin d'ajouter, valider et pousser tes changements dessus !
