CREATE DEFINER=`root`@`localhost` PROCEDURE `total`(auth varchar(20))
BEGIN
	select sum(quantity) as totalbooks from book where author_name like auth;
END
