- euro von cent trennen, wegen floating point präzision
- floating point division: floating point literals verwenden
- alias incoming/outgoing kann nicht direkt wiederverwendet werden: deshalb wrappen in outer select
- group by: zeilen mit demselben datum werden zusammengefasst
- für grouping: aggregiertende funktionen: aus mehreren werten einen datensatz erzeugen: zb sum()

# Datenmodellierung

## MUSS

Entity (zb: person, booking_line = Eintrag in einer Tabelle)
Primary KEY
Foreign KEY

## KANN

1:n (eine person kann mehrere telefonnummern haben)
1:1
m:n (Rollen) (Kreuztabelle mit 2 foreign keys)

# SQL

## MUSS

CREATE TABLE
INSERT
SELECT (MIT JOIN)

## KANN

Rechnen(sum + - * / ....)
GROUP BY
ORDER BY
SPALTEN NEUE NAMEN GEBEN

# Bsp

## Untersuchungstermin
- date DATE
- time DATETIME
- foreign key: patient_id
- description TEXT

## Patient
- primary key: id
- name TEXT
- vorname TEXT
- geburtsdatum DATE
