-- SQLite
select ldate, ltime, msg
from logs
where utcsec > 1592171300
 and utcsec < 1592171500