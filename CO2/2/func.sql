CREATE DEFINER=`root`@`localhost` FUNCTION `incent`(id INT) RETURNS int(11)
BEGIN
DECLARE 
	incentive FLOAT;
IF(id = 110)
THEN
	set incentive = 1000;
ELSE 
	SET incentive =0;
END IF;
RETURN incentive;
END
