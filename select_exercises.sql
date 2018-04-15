USE codeup_test_db;

# The name of all albums by Pink Floyd
SELECT name FROM albums WHERE artist LIKE '%Pink Floyd%';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name LIKE '%Sgt. Peppers Lonely Hearts Club%';

# The genre for Nevermind
Select genre FROM albums WHERE name LIKE '%Nevermind%';

# Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

# Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < 20;

# All the albums with a genre of "Rock".
SELECT * FROM albums WHERE genre = 'Rock';
# Why do these query results not include albums
# with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM  albums WHERE genre IN ('Hard rock','Progressive rock');


