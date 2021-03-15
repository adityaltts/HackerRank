SELECT country.continent, floor(avg(city.population)) FROM country
JOIN city ON city.countrycode = country.code GROUP BY country.continent;