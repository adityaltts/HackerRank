SELECT concat(name,'(',substring(Occupation,1,1),')') AS Name 
FROM occupations 
ORDER BY Name;
SELECT concat ('There are a total of ', COUNT(occupation),' ', lower(occupation),'s.') AS totals
FROM occupations
GROUP BY occupation
ORDER BY totals;
