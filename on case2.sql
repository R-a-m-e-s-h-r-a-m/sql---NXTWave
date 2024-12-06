/*  For each genre, get the count of movies that had a rating of at least 8.0 and
 count of movies that had a rating below 8.0.
 */
SELECT
  genre,
  count(
    CASE
      WHEN rating >= 8.0 THEN 1
    END
  ) AS rating_above_or_equal_8,
  count(
    CASE
      WHEN rating < 8.0 THEN 1
    END
  ) AS rating_below_8
FROM
  movie
GROUP BY
  genre;