USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (

  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100),
  name VARCHAR(200),
  release_date YEAR NULL,
  sales DECIMAL(10,2),
  genre VARCHAR(50)

);