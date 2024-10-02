CREATE DATABASE lab1;

\ с lab1;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

ALTER TABLE
    users
ADD
    COLUMN is_admin INT DEFAULT 0;

ALTER TABLE
    users
ALTER COLUMN
    is_admin DROP DEFAULT;

ALTER TABLE
    users
ALTER COLUMN
    is_admin TYPE BOOLEAN USING (is_admin :: BOOLEAN);

ALTER TABLE
    users
ALTER COLUMN
    is_admin DEFAULT FALSE;

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    user_id INT
);

DROP TABLE tasks;

DROP DATABASE lab1;