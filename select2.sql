SELECT p.*, pnr.*
FROM person p
FULL OUTER JOIN phone pnr
ON p.id = pnr.person_id;
