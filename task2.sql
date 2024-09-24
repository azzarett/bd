CREATE DATABASE lab2 CREATE TABLE countries { country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(50),
region_id INT,
population INT,
};

INSERT INTO
    countries (country_name, region_id, population)
VALUES
    ('USA', 1, 328200000);

INSERT INTO
    countries (country_id, country_name)
VALUES
    (2, 'Russia');

INSERT INTO
    countries (country_name, region_id, population)
VALUES
    ('China', NUll, 1439323776);

INSERT INTO
    countries (country_name, region_id, population)
VALUES
    ('Germany', 2, 83190556),
    (3, 'France', 2, 67158000),
    (4, 'UK', 2, 66650000);

ALTER TABLE
    countries
ALTER COLUMN
    country_name
SET
    DEFAULT 'Kazakhstan';

INSERT INTO
    countries (region_id, population)
VALUES
    (3, 18500000);

INSERT INTO countries () VALUES ();

CREATE TABLE countries_new LIKE countries;

INSERT INTO countries_new SELECT * FROM countries;

UPDATE countries
SET region_id = 1
WHERE region_id IS NULL;

SELECT country_name, population * 1.1 AS "New Population"
FROM countries;

DELETE FROM countries
WHERE population < 100000;

DELETE FROM countries_new
WHERE country_id IN (SELECT country_id FROM countries)
RETURNING *;

DELETE FROM countries
RETURNING *;