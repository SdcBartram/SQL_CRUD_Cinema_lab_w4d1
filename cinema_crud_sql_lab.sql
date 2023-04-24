---- ## Questions

-- -- 1.  Return ALL the data in the 'movies' table.
-- SELECT * FROM movies;

--- -- result -->

-- id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 17:00
--   2 | The Incredible Hulk                 | 2008 | 23:55
--   3 | Iron Man 2                          | 2010 | 18:45
--   4 | Thor                                | 2011 | 15:45
--   5 | Captain America: The First Avenger  | 2011 | 14:15
--   6 | Avengers Assemble                   | 2012 | 14:45
--   7 | Iron Man 3                          | 2013 | 21:55
--   8 | Thor: The Dark World                | 2013 | 22:55
--   9 | Batman Begins                       | 2005 | 13:40
--  10 | Captain America: The Winter Soldier | 2014 | 18:25
--  11 | Guardians of the Galaxy             | 2014 | 13:10
--  12 | Avengers: Age of Ultron             | 2015 | 20:20
--  13 | Ant-Man                             | 2015 | 13:00
--  14 | Captain America: Civil War          | 2016 | 12:35
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 14:05
--  17 | Spider-Man: Homecoming              | 2017 | 23:00
--  18 | Thor: Ragnarok                      | 2017 | 22:10
--  19 | Black Panther                       | 2018 | 21:00
-- (19 rows)
-- -- 

-- -- 2.  Return ONLY the name column from the 'people' table

-- SELECT name FROM people;

-- -- result -->

--          name         
-- ----------------------
--  Homer Simpson
--  Marge Simpson
--  Lisa Simpson
--  Maggie Simpson
--  Patty Bouvier
--  Selma Bouvier
--  Kent Brockman
--  Ned Flanders
--  Barney Gumble
--  Itchy
--  Eric Cartman
--  Scratchy
--  Crusty the Clown
--  Montgomery Burns
--  Mayor Joe Quimby
--  Groundskeeper Willie
-- (16 rows)

-- -- 3.  Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).

-- UPDATE people SET name = 'Krusty the Clown' WHERE name = 'Crusty the Clown';
-- rather use id for where condition!
-- UPDATE people SET name = 'Krusty the Clown' WHERE id = 13;

-- SELECT name FROM people;

-- -- result -->

-- UPDATE 1
--          name         
-- ----------------------
--  Homer Simpson
--  Marge Simpson
--  Lisa Simpson
--  Maggie Simpson
--  Patty Bouvier
--  Selma Bouvier
--  Kent Brockman
--  Ned Flanders
--  Barney Gumble
--  Itchy
--  Eric Cartman
--  Scratchy
--  Montgomery Burns
--  Mayor Joe Quimby
--  Groundskeeper Willie
--  Krusty the Clown
-- (16 rows)

-- -- 4.  Return ONLY Homer Simpson's name from the 'people' table.

-- SELECT name FROM people WHERE id = 1;

-- -- result -->

--      name      
-- ---------------
--  Homer Simpson
-- (1 row)

-- -- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

-- DELETE FROM movies WHERE title = 'Batman Begins';
-- SELECT * FROM movies;

-- -- result -->

-- DELETE 1
--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 17:00
--   2 | The Incredible Hulk                 | 2008 | 23:55
--   3 | Iron Man 2                          | 2010 | 18:45
--   4 | Thor                                | 2011 | 15:45
--   5 | Captain America: The First Avenger  | 2011 | 14:15
--   6 | Avengers Assemble                   | 2012 | 14:45
--   7 | Iron Man 3                          | 2013 | 21:55
--   8 | Thor: The Dark World                | 2013 | 22:55
--  10 | Captain America: The Winter Soldier | 2014 | 18:25
--  11 | Guardians of the Galaxy             | 2014 | 13:10
--  12 | Avengers: Age of Ultron             | 2015 | 20:20
--  13 | Ant-Man                             | 2015 | 13:00
--  14 | Captain America: Civil War          | 2016 | 12:35
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 14:05
--  17 | Spider-Man: Homecoming              | 2017 | 23:00
--  18 | Thor: Ragnarok                      | 2017 | 22:10
--  19 | Black Panther                       | 2018 | 21:00
-- (18 rows)

-- -- 6.  We forgot one of the main characters! Add Bart Simpson to the 'people' table

-- INSERT INTO people (name) VALUES ('Bart Simpson');
-- SELECT * FROM people;

-- -- result -->

-- INSERT 0 1
--  id |         name         
-- ----+----------------------
--   1 | Homer Simpson
--   2 | Marge Simpson
--   3 | Lisa Simpson
--   4 | Maggie Simpson
--   5 | Patty Bouvier
--   6 | Selma Bouvier
--   7 | Kent Brockman
--   8 | Ned Flanders
--   9 | Barney Gumble
--  10 | Itchy
--  11 | Eric Cartman
--  12 | Scratchy
--  14 | Montgomery Burns
--  15 | Mayor Joe Quimby
--  16 | Groundskeeper Willie
--  13 | Krusty the Clown
--  17 | Bart Simpson
-- (17 rows)

-- -- 7.  Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.

-- DELETE FROM people WHERE name = 'Eric Cartman';
-- SELECT * FROM people;

-- -- result -->

-- DELETE 1
--  id |         name         
-- ----+----------------------
--   1 | Homer Simpson
--   2 | Marge Simpson
--   3 | Lisa Simpson
--   4 | Maggie Simpson
--   5 | Patty Bouvier
--   6 | Selma Bouvier
--   7 | Kent Brockman
--   8 | Ned Flanders
--   9 | Barney Gumble
--  10 | Itchy
--  12 | Scratchy
--  14 | Montgomery Burns
--  15 | Mayor Joe Quimby
--  16 | Groundskeeper Willie
--  13 | Krusty the Clown
--  17 | Bart Simpson
-- (16 rows)

-- -- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

-- INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

-- SELECT * FROM movies;

-- -- result -->

-- INSERT 0 1
--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 17:00
--   2 | The Incredible Hulk                 | 2008 | 23:55
--   3 | Iron Man 2                          | 2010 | 18:45
--   4 | Thor                                | 2011 | 15:45
--   5 | Captain America: The First Avenger  | 2011 | 14:15
--   6 | Avengers Assemble                   | 2012 | 14:45
--   7 | Iron Man 3                          | 2013 | 21:55
--   8 | Thor: The Dark World                | 2013 | 22:55
--  10 | Captain America: The Winter Soldier | 2014 | 18:25
--  11 | Guardians of the Galaxy             | 2014 | 13:10
--  12 | Avengers: Age of Ultron             | 2015 | 20:20
--  13 | Ant-Man                             | 2015 | 13:00
--  14 | Captain America: Civil War          | 2016 | 12:35
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 14:05
--  17 | Spider-Man: Homecoming              | 2017 | 23:00
--  18 | Thor: Ragnarok                      | 2017 | 22:10
--  19 | Black Panther                       | 2018 | 21:00
--  20 | Avengers: Infinity War              | 2018 | 00:00
-- (19 rows)

-- -- 9.  The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.

-- SELECT show_time FROM movies WHERE title = 'Iron Man 2'; -- to find out show time!
-- UPDATE movies SET show_time = '20:45' WHERE title = 'Iron Man 3';
-- SELECT * FROM movies;

-- -- result -->

-- UPDATE 1
--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 17:00
--   2 | The Incredible Hulk                 | 2008 | 23:55
--   3 | Iron Man 2                          | 2010 | 18:45
--   4 | Thor                                | 2011 | 15:45
--   5 | Captain America: The First Avenger  | 2011 | 14:15
--   6 | Avengers Assemble                   | 2012 | 14:45
--   8 | Thor: The Dark World                | 2013 | 22:55
--  10 | Captain America: The Winter Soldier | 2014 | 18:25
--  11 | Guardians of the Galaxy             | 2014 | 13:10
--  12 | Avengers: Age of Ultron             | 2015 | 20:20
--  13 | Ant-Man                             | 2015 | 13:00
--  14 | Captain America: Civil War          | 2016 | 12:35
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 14:05
--  17 | Spider-Man: Homecoming              | 2017 | 23:00
--  18 | Thor: Ragnarok                      | 2017 | 22:10
--  19 | Black Panther                       | 2018 | 21:00
--  20 | Avengers: Infinity War              | 2018 | 00:00
--   7 | Iron Man 3                          | 2013 | 20:45
-- (19 rows)

-- -- ## Extension

-- -- 1.  Research how to delete multiple entries from your table in a single command.

-- DELETE FROM movies WHERE year BETWEEN 2012 AND 2016;
-- -- BETWEEN WILL ALSO INCLUDE VALUES!
-- SELECT * FROM MOVIES;

-- -- result -->

-- DELETE 9
--  id |               title                | year | show_time 
-- ----+------------------------------------+------+-----------
--   1 | Iron Man                           | 2008 | 17:00
--   2 | The Incredible Hulk                | 2008 | 23:55
--   3 | Iron Man 2                         | 2010 | 18:45
--   4 | Thor                               | 2011 | 15:45
--   5 | Captain America: The First Avenger | 2011 | 14:15
--  16 | Guardians of the Galaxy 2          | 2017 | 14:05
--  17 | Spider-Man: Homecoming             | 2017 | 23:00
--  18 | Thor: Ragnarok                     | 2017 | 22:10
--  19 | Black Panther                      | 2018 | 21:00
--  20 | Avengers: Infinity War             | 2018 | 00:00
-- (10 rows)

-- -- Another way ------->

-- DELETE FROM movies WHERE id IN (4, 17, 19);
-- SELECT * FROM movies;

-- -- result -->
-- DELETE 3
--  id |               title                | year | show_time 
-- ----+------------------------------------+------+-----------
--   1 | Iron Man                           | 2008 | 17:00
--   2 | The Incredible Hulk                | 2008 | 23:55
--   3 | Iron Man 2                         | 2010 | 18:45
--   5 | Captain America: The First Avenger | 2011 | 14:15
--  16 | Guardians of the Galaxy 2          | 2017 | 14:05
--  18 | Thor: Ragnarok                     | 2017 | 22:10
--  20 | Avengers: Infinity War             | 2018 | 00:00
-- (7 rows)

-- -- Another way ------->

-- DELETE FROM movies WHERE year > 2012;
-- SELECT * FROM movies;

-- -- -- result -->

-- DELETE 3
--  id |               title                | year | show_time 
-- ----+------------------------------------+------+-----------
--   1 | Iron Man                           | 2008 | 17:00
--   2 | The Incredible Hulk                | 2008 | 23:55
--   3 | Iron Man 2                         | 2010 | 18:45
--   5 | Captain America: The First Avenger | 2011 | 14:15
-- (4 rows)


