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