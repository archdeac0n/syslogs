select 
row_number() over () rownum, l1.ldate, l1.ltime, msg, l2.ldate, l2.ltime 
from logs l1 
join (select row_number() over () rownum, ldate, ltime from logs where fac='local5') l2 on l1.rownum +1 = l2.rownum
where fac='local5';