SELECT
    p.first_name AS Vorname,
    p.last_name 'Nachname'
FROM person p
WHERE UPPER(p.first_name) LIKE 'Lukas' OR p.id = 2;
