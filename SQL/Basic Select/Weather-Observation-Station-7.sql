SELECT DISTINCT city FROM station
WHERE right(city,1) IN('a','e','i','o','u');