SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.code = languages.country_code
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

SELECT countries.name, COUNT(cities.name) AS TotalCities
FROM countries
LEFT JOIN cities ON countries.code = cities.country_code
GROUP BY countries.name
ORDER BY TotalCities DESC;

SELECT cities.name, cities.population
FROM cities
WHERE cities.country_code = 'MEX' AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.code = languages.country_code
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 AND population > 100000;

SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON cities.country_code = countries.code
WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population > 500000;

SELECT c.region, COUNT(c.name) AS NumberOfCountries
FROM countries c
GROUP BY c.region
ORDER BY NumberOfCountries DESC;

