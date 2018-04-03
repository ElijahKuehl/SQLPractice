CREATE TABLE tv_shows (
  ID INT,
  name TEXT, 
  rating INT
);

INSERT INTO tv_shows (ID, name, rating)
VALUES 
(1, "Gravity Falls", 4.8),
(2, "Adam Ruins Everything", 4.5),
(3, "Generic Show", 5);


SELECT * FROM tv_shows;
