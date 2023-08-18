USE codeup_test_db;


SELECT name, sales FROM albums;
UPDATE albums SET sales = 10*sales;
SELECT name, sales FROM albums;



SELECT name, release_date FROM albums WHERE release_date < 1989;
UPDATE albums SET release_date = release_date - 100;
SELECT name, release_date FROM albums WHERE release_date < 1889;


SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name, artist FROM albums WHERE artist = 'Peter Jackson';
