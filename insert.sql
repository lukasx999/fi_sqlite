INSERT INTO person (first_name, last_name) VALUES
    ('Lukas', 'Gschaider'),
    ('Lorenz', 'Felbermayer'),
    ('John', 'Doe');

INSERT INTO phone (
    number,
    person_id
) VALUES
    ('12345', 1),
    ('54321', 2),
    ('4382', NULL);
