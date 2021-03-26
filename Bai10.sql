CREATE PROCEDURE mischievousNephews()
BEGIN
	SELECT weekday(mischief_date) AS weekday, mischief_date, author, title
    FROM mischief
    ORDER BY weekday, length(author), author,mischief_date, title;
END