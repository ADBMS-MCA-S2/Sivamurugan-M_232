CREATE DEFINER=`root`@`localhost` FUNCTION `TotalFund`() RETURNS int(11)
BEGIN
	DECLARE
    n int;
    DECLARE
    k int;
    DECLARE
    l int;
    DECLARE
    m int;
    DECLARE
    o int;
    DECLARE
    s int;
    select sum(fund_amount) into n from administration;
    select sum(employee_salary) into k from administration;
    select sum(development_cost) into l from administration;
    select sum(turn_over) into m from administration;
    select sum(bonus) into o from administration;
    set s = n+m-(k+l+o);
    set s = n-s;
RETURN s;
END
