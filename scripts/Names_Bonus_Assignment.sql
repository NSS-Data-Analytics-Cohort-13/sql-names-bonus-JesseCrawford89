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