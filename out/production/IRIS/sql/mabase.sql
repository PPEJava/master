DROP DATABASE IF EXISTS IRIS;
CREATE DATABASE IRIS;
USE  IRIS;

CREATE TABLE produit (
  refProduit INT(5) NOT NULL auto_increment,
  desProduit VARCHAR(50),
  prix FLOAT,
  qte INT(5),
  categorie VARCHAR(50),
  PRIMARY KEY(refProduit)
);

CREATE TABLE user(
  idUser int(5) not null AUTO_INCREMENT,
  email varchar(50) not null ,
  mdp varchar(255) not null ,
  nom varchar(50),
  prenom varchar(50),
  droit enum("admin","user","autre"),
  PRIMARY KEY (idUser)
);

INSERT INTO produit VALUES
(null,"Lait",1.80,3,"Alimentaire"),
(null,"Pain",1.20,3,"Alimentaire"),
(null,"Cahier",1.20,3,"Affaires Scolaires")
;

INSERT INTO user VALUES(null,"a@gmail.com","123","admin","admin","admin");