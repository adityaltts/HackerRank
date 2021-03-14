SELECT city,length(city) FROM station ORDER BY length(city) asc, city asc limit 1;
SELECT DISTINCT(City),length(city) FROM station ORDER BY length(city) desc, city asc limit 1;