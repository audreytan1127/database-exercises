USE codeup_test_db;

SELECT * FROM albums WHERE artist ='Pink Floyd';
SELECT name,release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT name,genre FROM albums WHERE name = 'Nevermind';
SELECT name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name, sales FROM albums WHERE sales >= 20;
SELECT name, genre FROM albums WHERE genre = 'Rock';