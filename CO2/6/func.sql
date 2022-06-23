CREATE DEFINER=`root`@`localhost` FUNCTION `travel`(novaccne int) RETURNS varchar(30) CHARSET utf8mb4
BEGIN
	if(novaccne=2)
    then
    return ("Eligible for going abroad");
    else
    return ("Not Eligible for going abroad");
    end if;
END
