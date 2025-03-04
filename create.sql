DROP TABLE IF EXISTS person;

CREATE TABLE person (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR(40)
);

DROP TABLE IF EXISTS phone;

CREATE TABLE phone (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    number VARCHAR(40),
    person_id INTEGER,
    FOREIGN KEY(person_id) REFERENCES person(id)
);
