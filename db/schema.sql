CREATE DATABASE IF NOT EXISTS burgers_db;
USE burgers_db;

CREATE TABLE burgers (
    id int NOT NULL AUTO_INCREMENT,
    burger_name varchar(255) NOT NULL,
    devoured BOOLEAN DEFAULT false,
    PRIMARY KEY (id)
);

INSERT INTO burgers(burger_name, devoured) VALUES ("Cheeseburger", FALSE);
INSERT INTO burgers(burger_name, devoured) VALUES ("Hamburger", FALSE);
INSERT INTO burgers(burger_name, devoured) VALUES ("Pizzaburger", FALSE);