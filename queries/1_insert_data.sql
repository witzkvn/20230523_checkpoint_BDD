# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"

INSERT INTO recruiter ('login', 'password') VALUES ('userOne', 'ABcd1234*');

INSERT INTO business ('name', 'Id_recruiter', 'description')
VALUES ('WCS', (SELECT Id_recruiter FROM recruiter WHERE login = 'userOne'), 'Ecole du numérique');


INSERT INTO offer ('title', 'description', 'city', 'Id_business') 
VALUES ('Dev', 'Super poste de dev JS', 'Paris', (SELECT Id_business FROM business WHERE name = 'WCS'));

INSERT INTO offer ('title', 'description', 'city', 'Id_business') VALUES ('SEM', 'Student Experience Manager', 'Strasbourg', (SELECT Id_business FROM business WHERE name = 'WCS'));

INSERT INTO candidate ('login', 'password', 'lastname', 'firstname', 'email', 'phone', 'description')
VALUES ('candidate1', 'ABcd1234*', 'Doe', 'Jane', 'jane.doe@example.com', '123456789', 'Description du candidat 1');

INSERT INTO candidate_offer (Id_candidate, Id_offer) VALUES ((SELECT Id_candidate FROM candidate WHERE login = 'candidate1'), (SELECT Id_offer FROM offer WHERE title = 'Dev'));

INSERT INTO candidate ('login', 'password', 'lastname', 'firstname', 'email', 'phone', 'description') VALUES ('candidate2', 'ABcd1234*', 'Smith', 'John', 'john.smith@example.com', '987654321', 'Description du candidat 2');

INSERT INTO candidate_offer (Id_candidate, Id_offer) VALUES ((SELECT Id_candidate FROM candidate WHERE login = 'candidate2'), (SELECT Id_offer FROM offer WHERE title = 'Dev'));

INSERT INTO candidate ('login', 'password', 'lastname', 'firstname', 'email', 'phone', 'description') VALUES ('candidate3', 'ABcd1234*', 'Johnson', 'Emily', 'emily.johnson@example.com', '555555555', 'Description du candidat 3');

INSERT INTO candidate_offer (Id_candidate, Id_offer) VALUES ((SELECT Id_candidate FROM candidate WHERE login = 'candidate3'), (SELECT Id_offer FROM offer WHERE title = 'SEM'));

INSERT INTO candidate ('login', 'password', 'lastname', 'firstname', 'email', 'phone', 'description') VALUES ('candidate4', 'ABcd1234*', 'Bros', 'Mario', 'mario.bros@example.com', '988854322', 'Description du candidat 4');
