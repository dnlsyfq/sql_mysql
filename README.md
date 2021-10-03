

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
  
# UNION
  stack vertically ,
  same no. of columns
  return distinct records
 ```
  SELECT * FROM table UNION SELECT * FROM table
  
  
SELECT MakeID, MakeName FROM Make WHERE MakeName < "D"
UNION 
SELECT ForeignMakeID, MakeName FROM ForeignMake WHERE MakeName < "D"
ORDER BY MakeName ; 
  
  
  select Name from Fruit where Name between 'A%' and 'L%' union select Name from Vegetable where Name between 'A%' and 'L%';
  ```
  
  # UNION ALL
  
allow duplicates

  ```
  SELECT MakeID, MakeName FROM Make WHERE MakeName < "D"
UNION ALL
SELECT ForeignMakeID, MakeName FROM ForeignMake WHERE MakeName < "D"
ORDER BY MakeName ; 
  
  ```
  
  # Intersect
  * INTERSECT is similar to an Inner Join. As with a UNION, they must have the same columns in both the left and right side of the SQL operation
  * only going to return the rows that exist in both 
  * return that exist in both table

  ```
  
SELECT MakeName FROM Make INTERSECT SELECT MakeName FROM ForeignMake;
  ```
  # Except 
  * EXCEPT uses the same format as INTERSECT, but outputs only the records that are not in the latter table.
  * except the rows that are match in second query
  * except gives you only the records that arent in both tables
  ```
SELECT MakeName
FROM ForeignMake EXCEPT
SELECT MakeName FROM Make;
  ```
  
### SUBQUERIES
  
```
SELECT col
FROM table1
WHERE col1 IN (
    SELECT col1
    FROM table2
    WHERE col3
  )
```
  
```
 SELECT <COL>
 FROM TABLE1
 <INNER | OUTER> JOIN
 (SELECT <COL> FROM <TABLE> WHERE <STATEMENT>) AS TABLE2
  ON TABLE1.id = TABLE2.id
```

```
SELECT * FROM Sale WHERE CarID IN (
  SELECT CarID
  FROM Car
  WHERE ModelYear = '2015'
);  
```
  
```
  
SELECT * FROM Sale s
  INNER JOIN ( SELECT CarID, ModelYear From Car WHERE ModelYear = 2015) t
  ON s.CarID =t.CarID;
```
```
SELECT sr.LastName, Loc1.StLouisAmount, Loc2.ColumbiaAmount
FROM SalesRep sr
LEFT OUTER JOIN (
    SELECT SalesRepID, SUM(SaleAmount) StLouisAmount
    FROM Sale s
    WHERE s.LocationID = 1
    GROUP BY SalesRepID
  ) Loc1 ON sr.SalesRepID = Loc1.SalesRepID
LEFT OUTER JOIN (
    SELECT SalesRepID, SUM(SaleAmount) ColumbiaAmount
    FROM Sale s
  WHERE s.LocationID = 2
  GROUP BY SalesRepID
  ) Loc2 ON sr.SalesRepID = Loc2.SalesRepID;   
```
  
