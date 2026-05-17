-- 121. Uppercase names
SELECT UPPER(emp_name) AS upper_name
FROM Employees;

-- 122. Lowercase names
SELECT LOWER(emp_name) AS lower_name
FROM Employees;

-- 123. Length of names
SELECT emp_name,
LENGTH(emp_name) AS name_length
FROM Employees;

-- 124. First 3 characters
SELECT emp_name,
LEFT(emp_name, 3) AS first_3_char
FROM Employees;

-- 125. Last 2 characters
SELECT emp_name,
RIGHT(emp_name, 2) AS last_2_char
FROM Employees;

-- 126. Concatenate name and city
SELECT CONCAT(emp_name, ' - ', city) AS emp_city
FROM Employees;

-- 127. Replace characters in name
SELECT emp_name,
REPLACE(emp_name, 'a', '@') AS replaced_name
FROM Employees;

-- 128. Trim spaces
SELECT TRIM('   SQL Practice   ') AS trimmed_text;

-- 129. Left trim
SELECT LTRIM('   SQL Practice') AS left_trimmed;

-- 130. Right trim
SELECT RTRIM('SQL Practice   ') AS right_trimmed;

-- 131. Position of substring
SELECT emp_name,
POSITION('an' IN emp_name) AS substring_position
FROM Employees;

-- 132. Extract substring
SELECT emp_name,
SUBSTRING(emp_name, 1, 4) AS extracted_text
FROM Employees;

-- 133. Count names starting with A
SELECT COUNT(*) AS count_name
FROM Employees
WHERE emp_name LIKE 'A%';

-- 134. Names ending with y
SELECT *
FROM Employees
WHERE emp_name LIKE '%y';

-- 135. Names containing 'an'
SELECT *
FROM Employees
WHERE emp_name LIKE '%an%';

-- 136. Remove special characters
SELECT REPLACE(
       REPLACE(emp_name, '@', ''),
       '#', ''
       ) AS clean_name
FROM Employees;

-- 137. Reverse string
SELECT emp_name,
REVERSE(emp_name) AS reverse_name
FROM Employees;

-- 138. Repeat string
SELECT emp_name,
REPEAT(emp_name, 2) AS repeated_name
FROM Employees;

-- 139. Pad string left
SELECT emp_name,
LPAD(emp_name, 15, '*') AS left_padded
FROM Employees;

-- 140. Pad string right
SELECT emp_name,
RPAD(emp_name, 15, '*') AS right_padded
FROM Employees;

-- 141. Format full name
SELECT CONCAT('Mr./Ms. ', emp_name) AS formatted_name
FROM Employees;

-- 142. Initials extraction
SELECT emp_name,
LEFT(emp_name, 1) AS initials
FROM Employees;

-- 143. Email format creation
SELECT emp_name,
CONCAT(
LOWER(REPLACE(emp_name, ' ', '')),
'@company.com'
) AS email_format
FROM Employees;

-- 144. Replace NULL with default
SELECT emp_name,
IFNULL(city, 'Unknown City') AS city
FROM Employees;

-- 145. Count vowels in name
SELECT emp_name,
(
LENGTH(LOWER(emp_name))
-
LENGTH(
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(LOWER(emp_name), 'a', ''),
'e', ''),
'i', ''),
'o', ''),
'u', '')
)
) AS vowel_count
FROM Employees;

-- 146. Names with more than 5 characters
SELECT *
FROM Employees
WHERE LENGTH(emp_name) > 5;

-- 147. Extract domain from email
SELECT email,
SUBSTRING_INDEX(email, '@', -1) AS domain_name
FROM Employees;

-- 148. Remove duplicates in string column
SELECT DISTINCT city
FROM Employees;

-- 149. Capitalize first letter
SELECT emp_name,
CONCAT(
UPPER(LEFT(emp_name,1)),
LOWER(SUBSTRING(emp_name,2))
) AS capitalized_name
FROM Employees;

-- 150. Mixed string formatting
SELECT CONCAT(
UPPER(LEFT(emp_name,1)),
LOWER(SUBSTRING(emp_name,2)),
' from ',
UPPER(city)
) AS formatted_output
FROM Employees;