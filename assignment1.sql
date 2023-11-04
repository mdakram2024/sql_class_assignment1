select * from city where COUNTRYCODE='USA' and POPULATION>100000;

select NAME from city where COUNTRYCODE='USA' and POPULATION>120000;

select * from city;

select * from city where countrycode='JPN';

select name from city where countrycode='JPN';

select city,state from stationdata;

select distinct city from stationdata where ID%2=0;

select count(*)  -  count(distinct city) from stationdata;

SELECT CITY,LENGTH(CITY)AS MIN_LENGTH_OF_CITY FROM STATIONDATA ORDER BY
LENGTH(CITY) ASC LIMIT 1;


select city,length(city) as max_length from stationdata order by length(city) desc limit 1;

select distinct city from stationdata where lcase(city) like 'a%' or lcase(city) like 'e%' or 
lcase(city) like 'i%' or lcase(city) like 'o%' or lcase(city) like 'u%'order by city;

select distinct city from stationdata where lcase(city) like '%a' or lcase(city) like '%e' or lcase(city) like '%i' or lcase(city) like '%o' or lcase(city) like '%u'order by city;

SELECT DISTINCT CITY FROM STATIONDATA
WHERE lcase(CITY) NOT LIKE 'a%'
AND lcase(CITY) NOT LIKE 'e%'
AND lcase(CITY) NOT LIKE 'i%'
AND lcase(CITY) NOT LIKE 'o%'
AND lcase(CITY) NOT LIKE 'u%'
ORDER BY CITY;

SELECT DISTINCT CITY FROM STATIONDATA
WHERE lcase(CITY) NOT LIKE '%a'
AND lcase(CITY) NOT LIKE '%e'
AND lcase(CITY) NOT LIKE '%i'
AND lcase(CITY) NOT LIKE '%o'
AND lcase(CITY) NOT LIKE '%u'
ORDER BY CITY;

select distinct CITY from STATIONDATA where CITY not regexp '^[aeiou]' or
city not regexp '[aeiou]$';

select distinct city from stationdata where city not regexp'^[aeiou]' and city not regexp'[aeiou]$';


select product_id,product_name from product where product_id not in ( select product_id from sales where sale_date not  between '2019-01-01' and '2019-03-31');

select distinct author_id as id from views where author_id = viewer_id order by id 
