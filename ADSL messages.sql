-- SQLite
with RECURSIVE
 x as (select row_number() over () rowno,
    ldate,
    ltime,
    utcsec,
    msg
    from logs 
    where fac='local5')
select a.rowno, b.rowno, a.ldate, a.ltime, a.utcsec-b.utcsec, a.utcsec, a.msg
from x a 
    join x b on a.rowno=b.rowno+1
where a.utcsec-b.utcsec >40;