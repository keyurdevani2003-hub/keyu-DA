


use world

-- filtering a raw by columns
select * from city;
where  CountryCode = "AFG";


select * from city;
where countrycode in ("AFG","NLD");


select * from city;
where Population between 1300000 and 1500000;


-- starts with, ending  filtering 
select * from city;
where CountryCode like "A%";
select * from city;
where countrycode like "%A";
select * from city;
where countrycode like "%A%";

-- multiconditional filtering using where 
select * from city;
where countrycode like "%A" and population <= 13000000;

select * from city;
where population>60000 and ID>20 and ID<30;





















