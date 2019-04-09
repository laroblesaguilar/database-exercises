USE codeup_test_db;

SELECT name from albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Heart Club Band';
SELECT genre FROM albums WHERE name = 'NeverMind';
SELECT * FROM albums WHERE release_date between 1990 and 1999\G;
SELECT * FROM albums WHERE sales < 20000000\G;
SELECT * FROM albums WHERE genre = 'Rock'\G;


