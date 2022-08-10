-- write your queries here
SELECT * 
FROM owners o
OUTER JOIN vehicles ve
ON o.id =ve.owner_id;

SELECT o.first_name, o.last_name, COUNT(owner_id) as COUNT
FROM owners o
JOIN vehicles ve
ON o.id =ve.owner_id
GROUP BY (o.first_name,o.last_name)
ORDER BY o.first_name ASC;

SELECT o.first_name, o.last_name, ROUND(AVG(price)) as average_price,COUNT(owner_id) as COUNT
FROM owners o
JOIN vehicles ve
ON o.id =ve.owner_id
GROUP BY (o.first_name,o.last_name)
HAVING COUNT(owner_id)>1 AND ROUND(AVG(price)) >=10000
ORDER BY o.first_name DESC;

