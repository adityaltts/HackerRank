SELECT DISTINCT city FROM station
WHERE left(city,1) not IN('a','e','i','o','u');