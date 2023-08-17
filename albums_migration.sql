    USE codeup_test_db;

    DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(200) NOT NULL,
    release_date INT NOT NULL,
    sales DECIMAL(9, 2) NOT NULL,
    genre VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
)
