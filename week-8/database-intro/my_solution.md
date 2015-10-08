1. 	SELECT * FROM states;

2. 	SELECT * FROM regions;

3. 	SELECT state_name, population FROM states;

4. 	SELECT state_name, populations FROM states
	ORDER BY population DESC;

5.	SELECT state_name FROM states
	WHERE region_id IS 7;

6.	SELECT state_name, population_density FROM states
	WHERE population_density > 50
	ORDER BY population_density ASC;

7.	SELECT state_name FROM states
	WHERE population
	BETWEEN 1000000 AND 1500000;

8. 	SELECT state_name, region_id FROM states
	ORDER BY region_id ASC;

9.	SELECT region_name FROM regions
	WHERE region_name LIKE "%Central%";

10.	SELECT region_name, state_name FROM states 
	JOIN regions 
	ON states.region_id = regions.id 
	ORDER BY regions.id ASC;


![persons and outfits](https://github.com/Awilda/phase-0/blob/master/week-8/database-intro/persons_outfits_schema.png)


Reflection

**What are databases for?**
Databases allow one to store data which can later be retrieved.


**What is a one-to-many relationship?**
One-to-many relationships is when there are other table linked to the primary link. You can have basic information on the main table and have additional data in the other tables that pertain to main one.


**What is a primary key? What is a foreign key? How can you determine which is which?**
A primary key is the identifier in what makes each row and column unique. IDs are a good example of a primary key because no two are the same or NULL. A foreign key is another table's unique identifier that is linked to the main table. We can create a field in the main table which we can name secondtablename_id.


**How can you select information out of a SQL database? What are some general guidelines for that?**
Selecting information out of SQL begins by writing "SELECT * FROM tablename" The * acts as a wildcard and will select the entire table, however if we only want a portion, we can insert the column name instead.

