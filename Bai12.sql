CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id, name, surname
    FROM Suspect
    WHERE NOT (name LIKE 'b%' AND surname LIKE 'gre_n') OR height <= 170;
END