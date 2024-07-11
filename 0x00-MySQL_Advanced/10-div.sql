-- It performs a safe division of a by b, returning 0 if b is 0 to avoid a divide by zero error.
DELIMITER $$
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
	RETURNS FLOAT
BEGIN
	DECLARE result FLOAT;
	IF b = 0
		THEN SET result = 0;
	ELSE
		SET result = a / b;
	END IF;
	RETURN result;
END $$
