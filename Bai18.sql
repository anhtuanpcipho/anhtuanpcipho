CREATE PROCEDURE itemCounts()
BEGIN
	SELECT item_name, item_type, COUNT(*) AS item_count
    FROm availableitems
    GROUP BY 1, 2
    ORDER BY 2, 1;
END