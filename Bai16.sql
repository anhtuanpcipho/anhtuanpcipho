CREATE PROCEDURE newsSubscribers()
BEGIN
	SELECT subscriber FROM full_year
    WHERE newspaper LIKE BINARY '%Daily%'
    UNION
    SELECT subscriber FROM half_year
    WHERE newspaper LIKE BINARY '%Daily%'
    ORDER BY subscriber;
END