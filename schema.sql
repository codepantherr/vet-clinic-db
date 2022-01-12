/* Database schema to keep the structure of entire database. */

create database vet_clinic;
CREATE TABLE animals(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50),
  	date_of_birth DATE,
  	escape_attempts INT,
  	neutered BOOLEAN,
  	weight_kg FLOAT
);

ALTER TABLE animals
ADD COLUMN species VARCHAR(100);

CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(100), 
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    PRIMARY KEY(id)
);


