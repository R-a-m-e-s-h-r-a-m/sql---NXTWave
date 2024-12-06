/*  Get the average rating of movies released in the year 2010 and round it to 1 decimal place.  */
SELECT
  avg(rating) AS avg_rating
FROM
  movie
WHERE
  strftime("%Y", release_date) = "2010";