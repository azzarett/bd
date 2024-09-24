CREATE DATABASE lab1
CREATE TABLE user {
    id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
}

ALTER TABLE user ADD COLUMN is_admin TYNIINT(1) DEFAULT 0
ALTER TABLE user ALTER COLUMN is_admin TYPE BOOLEAN DEFAULT FALSE
ALTER TABLE user ADD PRIMARY KEY (id)

CREATE TABLE tasks {
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    user_id INT,
}

DROP TABLE tasks
DROP DATABASE lab1


