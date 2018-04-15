USE codeup_test_db;

# The name of all albums by Pink Floyd
 SELECT 'All albums by Pink Floyd' as caption, name FROM albums WHERE artist LIKE '%Pink Floyd%';


# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Sg Peppers relase date' as caption, release_date FROM albums WHERE name LIKE '%Sgt. Peppers Lonely Hearts Club%';

# The genre for Nevermind
Select 'Nevermind genre' as caption, genre FROM albums WHERE name LIKE '%Nevermind%';

# Which albums were released in the 1990s
SELECT 'Ninties albums only' as caption, a.* FROM albums a WHERE release_date BETWEEN 1990 and 1999;

# Which albums had less than 20 million certified sales
SELECT 'less than 20 min cert' as caption, a.* FROM albums a WHERE sales < 20;

# All the albums with a genre of "Rock".
SELECT 'Rock genre' as caption, a.* FROM albums a WHERE genre = 'Rock';
# Why do these query results not include albums
# with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Hard rock and Prog rock' as caption, a.* FROM  albums a WHERE genre IN ('Hard rock','Progressive rock');


