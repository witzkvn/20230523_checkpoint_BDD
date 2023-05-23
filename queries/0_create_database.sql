# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")

CREATE TABLE candidate(
   Id_candidate INTEGER,
   login TEXT NOT NULL,
   password TEXT NOT NULL,
   lastname TEXT NOT NULL,
   firstname TEXT NOT NULL,
   email TEXT NOT NULL,
   phone TEXT,
   description TEXT,
   PRIMARY KEY(Id_candidate),
   UNIQUE(login),
   UNIQUE(email)
);

CREATE TABLE recruiter(
   Id_recruiter INTEGER,
   login TEXT NOT NULL,
   password TEXT NOT NULL,
   PRIMARY KEY(Id_recruiter),
   UNIQUE(login)
);

CREATE TABLE business(
   Id_business INTEGER,
   name TEXT NOT NULL,
   description TEXT,
   Id_recruiter INTEGER NOT NULL,
   PRIMARY KEY(Id_business),
   UNIQUE(Id_recruiter),
   FOREIGN KEY(Id_recruiter) REFERENCES recruiter(Id_recruiter)
);

CREATE TABLE offer(
   Id_offer INTEGER,
   title TEXT NOT NULL,
   description TEXT NOT NULL,
   city TEXT NOT NULL,
   Id_business INTEGER NOT NULL,
   PRIMARY KEY(Id_offer),
   FOREIGN KEY(Id_business) REFERENCES business(Id_business)
);

CREATE TABLE candidate_offer(
   Id_candidate INTEGER,
   Id_offer INTEGER,
   PRIMARY KEY(Id_candidate, Id_offer),
   FOREIGN KEY(Id_candidate) REFERENCES candidate(Id_candidate),
   FOREIGN KEY(Id_offer) REFERENCES offer(Id_offer)
);




