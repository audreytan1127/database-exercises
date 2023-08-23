CREATE DATABASE join_test_db;
USE join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id) VALUES
                                             ('jess', 'jess@example.com', 2),
                                             ('leah', 'leah@example.com', 2),
                                             ('mark', 'mark@example.com', 2),
                                             ('terry', 'terry@example.com', null);

# LEFT JOIN will get all users, even if they do not have a role assigned to them.
SELECT *
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN will get all roles, even if there is not a user assigned to it.
SELECT *
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

# JOIN / INNER JOIN will get the users that are assigned a role.
# Will not show user or role that are not assigned with its counterpart.
SELECT *
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT roles.name AS Role,
       COUNT(users.id) AS "Total Users"
FROM roles
LEFT JOIN users
ON roles.id = users.role_id
GROUP BY roles.name;