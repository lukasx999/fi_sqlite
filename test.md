# Probetest

## Beschreiben Sie mit welchem Statement Abfragen auf eine Datenbanktabelle durchgeführt werden können.

```sql
SELECT column FROM table;
```

## Wie kann eine solche Abfrage eingeschränkt werden, geben Sie ein Beispiel.

**Zeilen einschränken:**

```sql
SELECT column FROM table WHERE condition;
```

**Spalten einschränken:**

```sql
SELECT first_name, last_name FROM table WHERE condition;
```

## Welche Möglichkeiten kennen Sie in einer Abfrage einen Spaltennamen zu ändern?

```sql
SELECT
column AS new_name,
column2 "newName",
FROM table;
```

## Erzeugen Sie ein Statement, welches eine Telefonnummern Tabelle erzeugt, denken Sie an die nötigen Beziehungen (zur Person).

```sql
CREATE TABLE numbers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    number TEXT NOT NULL,
    person_id INTEGER,
    FOREIGN KEY (person_id) REFERENCES person(id)
);
```

## Entwerfen Sie ein Datenmodell, zur Speicherung von HighScores von Spielern in Spielen.

```sql
CREATE TABLE player (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
);

CREATE TABLE game (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
);

CREATE TABLE join_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    game_id INTEGER,
    FOREIGN KEY (player_id) REFERENCES player(id)
    FOREIGN KEY (game_id) REFERENCES highscore(id)
);

CREATE TABLE highscore (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    score INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES player(id)
);
```
