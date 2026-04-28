# Day 1 – Basics (30)

1. Retrieve all columns from Employees
2. Retrieve name and salary
3. Show distinct departments
4. Show distinct cities
5. Retrieve first 10 rows
6. Salary > 50000
7. Age < 30
8. Employees from Delhi
9. Employees not from Mumbai
10. Salary between 30000 and 70000
11. Age > 25 AND salary > 40000
12. Department HR OR IT
13. NOT in Finance
14. Age between 25 and 35
15. Salary not between 20000 and 40000
16. Department IN (HR, IT, Sales)
17. Salary between 40000 and 80000
18. Name starts with A
19. Name ends with n
20. Name contains ar
21. Sort by salary asc
22. Sort by salary desc
23. Sort by department then salary
24. Sort by age desc
25. Salary is NULL
26. Salary is NOT NULL
27. Top 5 highest salaries
28. Lowest 3 salaries
29. 2nd highest salary
30. First 5 sorted by age

---

# Day 2 – Aggregation (30)

31. Count total employees
32. Average salary
33. Maximum salary
34. Minimum salary
35. Sum of salaries
36. Count employees per department
37. Avg salary per department
38. Max salary per department
39. Departments with avg salary > 50000
40. Count employees per city
41. Total salary per department
42. Departments with more than 5 employees
43. Avg age per department
44. Count distinct departments
45. Highest salary in IT
46. Lowest salary in HR
47. Sum salary for Delhi
48. Count employees salary > 60000
49. Avg salary where age > 30
50. Max salary where city = Mumbai
51. Departments with total salary > 200000
52. Avg salary per city
53. Count employees per age group
54. Salary variance check basic grouping
55. Highest avg salary department
56. Lowest avg salary department
57. Count employees per dept and city
58. Avg salary per dept and city
59. Departments with avg salary between range
60. Count employees with non-null salary

---

# Day 3 – Joins (30)

61. Inner join Employees and Departments
62. Left join Employees with Departments
63. Right join Employees with Departments
64. Full join Employees and Departments
65. Employees with department name
66. Employees without department
67. Departments without employees
68. Join Employees and Orders
69. Employees with total orders
70. Orders with employee details
71. Join 3 tables Employees Orders Customers
72. Employees with highest order count
73. Employees with no orders
74. Orders without employee
75. Employees with customer names
76. Join on multiple conditions
77. Employees with orders > 5
78. Departments with avg salary using join
79. Join with aggregation
80. Self join employees (same dept)
81. Employees with same salary
82. Manager employee relation
83. Employees earning more than manager
84. Self join for duplicate names
85. Join with alias usage
86. Join using USING clause
87. Join using ON clause
88. Multi table join with conditions
89. Employees with max salary per dept
90. Join filtering conditions

---

# Day 4 – Subqueries (30)

91. Employees with salary > avg salary
92. Employees with max salary
93. Employees with min salary
94. Departments with highest avg salary
95. Employees in dept with highest salary
96. Employees not in IT
97. Salary > avg of own department
98. Employees with second highest salary
99. Employees with third highest salary
100. Departments with no employees
101. Employees in departments with >5 employees
102. Employees earning above department avg
103. Employees in same city as top earner
104. Departments with salary > global avg
105. Employees with salary = max in dept
106. Employees with salary = min in dept
107. Nested subquery example
108. Correlated subquery example
109. Employees whose salary > ALL in dept
110. Employees whose salary > ANY in dept
111. Exists example
112. Not exists example
113. Employees without orders (subquery)
114. Customers with no orders
115. Orders above avg order value
116. Employees with salary rank logic
117. Employees matching multiple conditions
118. Subquery in SELECT
119. Subquery in FROM
120. Subquery with aggregation

---

# Day 5 – String Functions (30)

121. Uppercase names
122. Lowercase names
123. Length of names
124. First 3 characters
125. Last 2 characters
126. Concatenate name and city
127. Replace characters in name
128. Trim spaces
129. Left trim
130. Right trim
131. Position of substring
132. Extract substring
133. Count names starting with A
134. Names ending with y
135. Names containing 'an'
136. Remove special characters
137. Reverse string
138. Repeat string
139. Pad string left
140. Pad string right
141. Format full name
142. Initials extraction
143. Email format creation
144. Replace NULL with default
145. Count vowels in name
146. Names with more than 5 characters
147. Extract domain from email
148. Remove duplicates in string column
149. Capitalize first letter
150. Mixed string formatting

---

# Day 6 – Date Functions (30)

151. Current date
152. Current timestamp
153. Extract year
154. Extract month
155. Extract day
156. Add days
157. Subtract days
158. Difference between dates
159. Employees joined last 30 days
160. Employees joined this year
161. Orders in last month
162. Orders in last year
163. Week number
164. Day name
165. Month name
166. Start of month
167. End of month
168. Age from DOB
169. Days between join date and today
170. Employees joined before 2020
171. Orders between two dates
172. Format date
173. Convert string to date
174. Convert date to string
175. Quarter extraction
176. Leap year check
177. Working days calculation
178. Time difference
179. Hour extraction
180. Date comparison queries

---

# Day 7 – Window Functions (30)

181. Row number
182. Rank
183. Dense rank
184. Partition by department
185. Order by salary
186. Top 3 per department
187. Running total
188. Moving average
189. Lag function
190. Lead function
191. First value
192. Last value
193. Nth value
194. Percent rank
195. Cumulative sum
196. Salary difference with previous
197. Ranking within city
198. Partition multiple columns
199. Window frame usage
200. Row number reset per group
201. Top N per group
202. Bottom N per group
203. Median calculation
204. Percentile calculation
205. Rank tie handling
206. Compare row with next
207. Compare row with previous
208. Window aggregation
209. Multiple window functions
210. Advanced partition logic

---

# Day 8 – Advanced Joins + CTE (30)

211. Common table expression basic
212. Recursive CTE
213. Hierarchical query
214. Employee hierarchy
215. Running totals using CTE
216. Join with CTE
217. Multiple CTEs
218. CTE vs subquery
219. Self join with hierarchy
220. Manager tree
221. Multi-level join
222. Conditional join
223. Join with aggregation
224. Join with filtering
225. Join performance tuning basic
226. Join using indexes concept
227. Avoid duplicate rows in joins
228. Join with grouping
229. Join with window function
230. Complex join scenario
231. CTE with ranking
232. Recursive depth calculation
233. Parent child relationships
234. Graph traversal basic
235. Org chart query
236. Cycle detection
237. Flatten hierarchy
238. Top manager extraction
239. Path building
240. Advanced CTE use

---

# Day 9 – Case, Constraints, Views (30)

241. CASE basic
242. CASE multiple conditions
243. Salary category (low, medium, high)
244. Department classification
245. Conditional aggregation
246. Create view
247. Update view
248. Drop view
249. Create table with constraints
250. Primary key
251. Foreign key
252. Unique constraint
253. Not null constraint
254. Default constraint
255. Check constraint
256. Alter table add column
257. Alter table drop column
258. Rename column
259. Insert data
260. Update data
261. Delete data
262. Truncate table
263. Drop table
264. Index creation
265. Index usage
266. Composite index
267. Performance basics
268. Data validation
269. Data consistency
270. Constraint violation handling

---

# Day 10 – Mixed Interview Level (30)

271. Second highest salary (multiple ways)
272. Third highest salary
273. Duplicate records
274. Remove duplicates
275. Employees with no manager
276. Employees with same salary
277. Top 3 salaries per department
278. Nth highest salary
279. Consecutive days problem
280. Gaps and islands
281. Running total problem
282. Pivot table basic
283. Unpivot data
284. Dynamic pivot
285. JSON data query
286. Array handling
287. String splitting
288. Data cleaning scenario
289. Missing values handling
290. Ranking with ties
291. Median salary
292. Mode calculation
293. Percentile calculation
294. Business KPI query
295. Sales trend analysis
296. Customer retention query
297. Cohort analysis basic
298. Funnel analysis
299. Revenue growth calculation
300. Real dashboard query scenario

---

