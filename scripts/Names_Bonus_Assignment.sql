-- Question 1: How many rows are in the names table?

SELECT *
FROM names

--Answer: 1,957,046 rows.

--Question 2: How many total registered people appear in the dataset?

SELECT SUM(num_registered)
FROM names

--Answer: 351,653,025 people

--Question 3: Which name had the most appearances in a single year in the dataset?

SELECT *
FROM names
ORDER BY num_registered DESC

--Answer: Linda in 1947.

--Question 4: What range of years are included?

SELECT MAX(year), MIN(year)
FROM names

--Answer: Year range is 1880 to 2018.

--Question 5: What year has the largest number of registrations?

--Answer: 1947 (Linda)

--Question 6: How many different (distinct) names are contained in the dataset?

SELECT COUNT(DISTINCT name)
FROM names

--Answer: 98,400 different names.

--Question 7: Are there more males or more females registered?

SELECT gender, COUNT(gender)
FROM names
GROUP BY gender

--Answer: There are more females registered.

--Question 8: What are the most popular male and female names overall (i.e., the most total registrations)?

SELECT DISTINCT n.name, gender, SUM(n.num_registered) AS total_registered
FROM names AS n
GROUP BY DISTINCT n.name, gender
ORDER BY total_registered DESC

--Answer: James is the most popular male name and Mary is the most popular female name.

--Question 9: What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?

SELECT DISTINCT n.name, gender, SUM(n.num_registered) AS total_registered
FROM names AS n
WHERE n.year BETWEEN 2000 AND 2009
GROUP BY DISTINCT n.name, gender
ORDER BY total_registered DESC

--Answer: Jacob is the most popular male name during the first decade of the 2000's, and Emily is the most popular female name of the first decade of the 2000's.

--Question 10: Which year had the most variety in names (i.e. had the most distinct names)?

SELECT n.year, COUNT(n.year) AS number_of_names
FROM names AS n
GROUP BY n.year
ORDER BY COUNT(n.year) DESC

--Answer: 2008 had the most variety in names at 35,079.

--Question 11: What is the most popular name for a girl that starts with the letter X?

SELECT name, gender, num_registered
FROM names
WHERE name LIKE 'X%'
ORDER BY num_registered DESC

--Answer: Ximena

--Question 12: How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

SELECT DISTINCT name
FROM names
WHERE name LIKE 'Q%' AND name NOT LIKE 'Qu%'

--Answer: 46 names start with "Q" but not "Qu"

--Question 13: Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question

SELECT name, COUNT(num_registered)
FROM names
WHERE name = 'Stephen' OR name = 'Steven'
GROUP BY name

--Answer: "Stephen" is the more popular spelling between the two options.

--Question 14: What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

SELECT DISTINCT name, 
FROM names
WHERE gender IN ('M','F')
GROUP BY DISTINCT name
HAVING COUNT(DISTINCT gender) = 2;


--Answer: There are 10,773 unisex names out of 98,400 names, which is equal to 10.9% of the names.

--Question 15: How many names have made an appearance in every single year since 1880?

SELECT DISTINCT name, COUNT(DISTINCT year)
FROM names
WHERE gender = 'M' OR gender = 'F'
GROUP BY name
HAVING COUNT(DISTINCT year) = 139;

--Answer: 921 different names have appeared in every single year since 1880.

--Question 16: How many names have only appeared in one year?

SELECT DISTINCT name, COUNT(year)
FROM names
GROUP BY name
HAVING COUNT(year) ='1'
ORDER BY COUNT(year);


--Answer: 21,100

--Question 17: How many names only appeared in the 1950s?

SELECT DISTINCT name, year
FROM names
WHERE year BETWEEN 1950 AND 1959
GROUP BY DISTINCT name, year

--Answer: 99,479 names appeared in the 1950's.

--Question 18: How many names made their first appearance in the 2010s?

SELECT DISTINCT name, year
FROM names
WHERE year >2009
GROUP BY DISTINCT name, year

--Answer: 

--Question 19: Find the names that have not be used in the longest.

--Answer:

--Question 20: Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.
