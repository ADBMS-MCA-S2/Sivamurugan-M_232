CREATE DEFINER=`root`@`localhost` PROCEDURE `insert1`(aa int, bb char(10))
BEGIN
	if((select count(*) from t1 where a like (aa)))
    then
    insert into t1 values(null,null);
    else
    insert into t1 values(aa,bb);
    end if;
END
