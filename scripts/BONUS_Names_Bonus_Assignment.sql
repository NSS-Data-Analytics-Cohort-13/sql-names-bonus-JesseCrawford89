--Question 1: Find the longest name contained in this dataset. What do you notice about the long names?

SELECT name, length(name) AS longest_length
FROM names
GROUP BY name, longest_length
ORDER BY longest_length DESC

--Answer: The names are 15 characters in length and appear to be two names put together (ex: Ashleyelizabeth, Markchristopher, Jordanalexander, etc)

--Question 2: How many names are palindromes (i.e. read the same backwards and forwards, such as Bob and Elle)?

SELECT name
FROM names
WHERE UPPER(name) = UPPER(REVERSE(name))

--Answer: 4,091 palindrome names.

--Question 3: Find all names that contain no vowels (for this question, we'll count a,e,i,o,u, and y as vowels).

SELECT DISTINCT name
FROM names
WHERE name NOT ILIKE ('%A%') AND name NOT ILIKE ('%e%') AND name NOT ILIKE ('%i%') AND name NOT ILIKE ('%o%') AND name NOT ILIKE ('%u%') AND name NOT ILIKE ('%y%')

--Answer: There are 43 names that do not contain letters.

--Question 4: How many double-letter names show up in the dataset? Double-letter means the same letter repeated back-to-back, like Matthew or Aaron. Are there any triple-letter names?
