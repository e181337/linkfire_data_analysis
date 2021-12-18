# Question 1
SELECT count(*) AS total_count FROM events WHERE event == 'pageview'

SELECT AVG(A.daily_count) FROM (SELECT date, count(*) AS daily_count FROM events WHERE event == 'pageview' GROUP BY date) A

# Question 2
with example_meh as (SELECT event, date, count(*) AS daily_count FROM events WHERE event != 'pageview' GROUP BY event, date)
SELECT * FROM example_meh

with example_meh as (SELECT event, date, count(*) AS daily_count FROM events WHERE event != 'pageview' GROUP BY event, date)
select event, AVG(daily_count)  from example_meh GROUP BY example_meh.event

# Question 3
SELECT DISTINCT country AS country_list FROM events

# Question 4
SELECT AVG(B.click_pageview) AS  overall_click_rate FROM
(WITH link_aggregate AS (
SELECT linkid, 
SUM(CASE WHEN events.event == 'click' THEN 1 ELSE 0 END) count_click, 
SUM(CASE WHEN events.event == 'pageview' THEN 1 ELSE 0 END) count_pageview
FROM events GROUP BY linkid)
SELECT CAST(A.count_click as REAL) / A.count_pageview AS click_pageview
FROM link_aggregate A ) B
