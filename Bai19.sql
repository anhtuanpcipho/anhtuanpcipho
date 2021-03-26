CREATE PROCEDURE usersByContinent()
BEGIN
	SELECT continent, SUM(users) AS users
    FROM countries
    GROUP BY 1
    ORDER BY 2 DESC;
END