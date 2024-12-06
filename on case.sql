/*  Get the number of movies with a collection greater than or equal to 100 crores, and the movies with collection less than 100 crores.  */
SELECT
  count(
    CASE
      WHEN collection_in_cr > 100 THEN 1
    END
  ) AS above_100_cr,
  count(
    CASE
      WHEN collection_in_cr < 100 THEN 1
    END
  ) AS below_100_cr
FROM
  movie;