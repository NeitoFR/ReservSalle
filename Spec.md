SALLES: 

- Identifiant Salle *       INT 10 
- N°Salle                   INT 10
- nom_Salle                 STRING 25
- Nb Place                  INT 5
- TYPE                      INT 1

FORMATEURS: 

- Identifiant Formateur *   INT 10
- Nom formateur             STRING 50
- Mail                      STRING 60
- Tel                       STRING 15
- 


FORMATIONS: 

- Identifiant Formation *   INT 10
- Nom Formation             STRING 60
- Date debut                DATE
- Nombre demi-jounées       INT
- Identifiant Salle         Clé etrangère (SALLES)INT 10
- Id Formateur              Clé Etrangère (FORMATEURS)INT 10
- Id Classe                 Clé Etrangère (CLASSES) INT 10 

-----

SQL Script
```sql
--- Supprimer les tables existantes

DROP TABLE IF EXISTS UTILISATEURS, SALLES, FORMATIONS, CLASSES, ROLES;


```

TO code : 

- Une Page qui pemet d'ajouter une formation dans la BDD
- Une page qui visualise la semaine en cours
- Une page qui permet de récupérer les infos sur un formateurs (salle, formations, classe)