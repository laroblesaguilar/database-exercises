SELECT * FROM albums\G;

SELECT * FROM albums where artist = 'Michael Jackson'\G;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'

SELECT * FROM albums where artist = 'Michael Jackson'\G;
SELECT * FROM albums where artist = 'Peter Jackson'\G;

SELECT sales from albums\G;
UPDATE albums
SET sales = sales * 10;
SELECT sales from albums\G;

SELECT * FROM albums WHERE release_date < 1980\G;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT release_date from albums\G;


