--View all data in startups
SELECT
    *
FROM
    startups;

/*Calculate total number of companies*/
SELECT
    COUNT(*)
FROM
    startups;

/*Calculate total value of all companies*/
SELECT
    SUM(valuation)
FROM
    startups;

/*Calculate highest amount raised by a startup*/
SELECT
    MAX(raised)
FROM
    startups;

/*Calculate highest amount raised by a startup during ‘Seed’ stage*/
SELECT
    MAX(raised)
FROM
    startups
WHERE
    stage = 'Seed';

/*Calculate year oldest company was founded*/
SELECT
    MIN(founded)
FROM
    startups;

/*Calculate average valuation*/
SELECT
    AVG(valuation)
FROM
    startups;

/*Calculate average valuation in each category to 2 decimal places*/
SELECT
    category,
    ROUND(AVG(valuation), 2)
FROM
    startups
GROUP BY
    category;

/*Calculate average valuation in each category to 2 decimal places, ordered from highest to lowest*/
SELECT
    category,
    ROUND(AVG(valuation), 2)
FROM
    startups
GROUP BY
    1
ORDER BY
    2 DESC;

/*Calculate company name and total number of companies that belong to it*/
SELECT
    category,
    COUNT(*)
FROM
    startups
GROUP BY
    category;

/*Calculate company name and total number of companies that belong to it and have more than 3 companies in them*/
SELECT
    category,
    COUNT(*)
FROM
    startups
GROUP BY
    category
HAVING
    COUNT(*) > 3
ORDER BY
    2 DESC;

/*Calculate average startup size in each location*/
SELECT
    location,
    AVG(employees)
FROM
    startups
GROUP BY
    location;

/*Calculate average startup size in each location with average sizes above 500*/
SELECT
    location,
    AVG(employees)
FROM
    startups
GROUP BY
    location
HAVING
    AVG(employees) > 500;