The traffic.csv file and the traffic.db SQLite database contain the same web traffic data ("events") from a few different pages ("links") over a period of 7 days including various categorical dimensions about the geographic origin of that traffic as well as a page's content.

Our goal is to understand this traffic better, in particular the volume and distribution of events, and to develop ideas how to increase the links' clickrates. With that in mind, please analyze the data using plain SQL statements as well as the Python Pandas and SciPy libraries where indicated, providing answers to the following questions:

1) [SQL + Pandas] How many total pageview events did the links in the provided dataset receive in the full period, how many per day?
2) [SQL + Pandas] What about the other recorded events?
3) [SQL + Pandas] Which countries did the pageviews come from?
4) [SQL + Pandas] What was the overall click rate (clicks/pageviews)?
5) [Pandas] How does the clickrate distribute across different links?
6) [Pandas & SciPy] Is there any correlation between clicks and previews on a link? Is it significant? How large is the effect? Make sure to at least test for potential linear as well as categorical (think binary) relationships between both variables.
