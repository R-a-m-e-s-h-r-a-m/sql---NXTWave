/*  Get all years from the movie table where the genre belongs to the "Drama". */
SELECT
  cast(strftime("%Y", release_date) AS integer) AS year
FROM
  movie
WHERE
  genre = "Drama";