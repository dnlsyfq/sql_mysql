

```
mysql -u root
```

# CRUD
* CREATE
* READ
* UPDATE
* DELETE


```
WHERE COL LIKE VALUE
WHERE LOWER(COL) = VALUE 

SELECT COL FROM _ GROUP BY COL

SELECT COL FROM _ GROUP BY COL 
HAVING COL <OPERATOR><VALUE> 
ORDER BY COL DESC;


SELECT _ FROM _ ORDER BY _ ASC|DESC;
SELECT _ FROM _ LIMIT 50 OFFSET <# OF ROWS SKIPPED>
SELECT _ FROM _ LIMIT 50 OFFSET 50 ; // START AT 51

SELECT _ FROM _ LIMIT <# OF ROWS> OFFSET <# OF ROWS SKIPPED>
SELECT _ FROM _ LIMIT <# OF ROWS SKIPPED>, <# OF ROWS>
```
```
UPPER(COL)
LENGTH(COL)
SUBSTR(COL,START,LENGTH)
SELECT REPLACE(COL,STRING,REPLACE STRING)
WHERE REPLACE(COL,STRING,REPLACE STRING)

SELECT FUNCTION(COL)
WHERE FUNCTION(COL) <OPERATOR> <VALUE>
```
```
SELECT COL || COL // concatenate
```

```
DATE("now")
DATE(<TIME STRING>,<MODIFIER>,<MODIFIER>)
DATE(YYYY-MM-DD)
DATE(YYYY-MM-DD,"-7 DAYS")
DATE(YYYY-MM-DD,"-21 YEARS")
DATE(YYYY-MM-DD,"+1 MONTH","-1 DAY")


SELECT * FROM orders WHERE DATE("2021-09-24","-7 DAYS") ORDER BY ordered_on DESC;
SELECT COUNT(*) FROM orders WHERE ordered_on BETWEEN DATE("now","-7 days") AND DATE("now","-1 day");
SELECT COUNT(*) FROM orders WHERE ordered_on = DATE("now","-1 day")


DATE("DATETIME STRING")
TIME("DATETIME STRING")

STRFTIME(<format string>, "2015-04-01 23:12:01",<modifier>)
STRFTIME("%d/%m/%Y","2015-04-01 23:12:01",<modifier>)

```

# WHERE _ AND , OR 

select < > from < > where column <operator> <value> AND|OR column <operator> <value>
  
# WHERE _ IN , WHERE _ NOT IN 

select < > from < > where column IN (value,value,value)  

select < > from < > where column NOT IN (value,value,value)  

# Database Normalization

* process of eliminating redundant or repeating data in a database
* reduce disk storage
* enforcement data integrity
  
  
