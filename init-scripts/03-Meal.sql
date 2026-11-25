alter session set container = freepdb1;
alter session set current_schema = system;

drop table if exists Meal;
create table if not exists Meal (
   id int primary key,
   name varchar(50),
   glutenFree BOOLEAN,
   vegan BOOLEAN,
   carbohydratesGram float,
   lipidsGram float,
   proteinsGram float
);

insert into Meal (id, name, glutenFree, vegan, carbohydratesGram, lipidsGram, proteinsGram)
values (1, '12 cookies', FALSE, FALSE, 220, 48, 9.6);
--Taking an average between small and medium cookies for the nutrition
--The proper solution is using triggers to automatically calculate the nutrition of the meal based off of the ingredients, but this is a placeholder
--We can calculate calories based on the macros as well. Up to everyone else though if that's worth it

commit;
