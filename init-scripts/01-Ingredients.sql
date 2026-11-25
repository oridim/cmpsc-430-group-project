alter session set container = freepdb1;
alter session set current_schema = system;

drop table if exists Ingredient;
create table if not exists Ingredient (
   id int primary key,
   name varchar(50),
   glutenFree BOOLEAN,
   vegan BOOLEAN,
   carbohydratesGram float,
   lipidsGram float,
   proteinsGram float,
   measurementUnit varchar(30)

);

insert into Ingredient (id, name, glutenFree, vegan, carbohydratesGram, lipidsGram, proteinsGram, measurementUnit)
values (1, 'sugar', TRUE, TRUE, 12.6, 0, 0, 'tablespoon') ;

insert into Ingredient (id, name, glutenFree, vegan, carbohydratesGram, lipidsGram, proteinsGram, measurementUnit)
values (2, 'whole milk', TRUE, FALSE, 0.68, 0.49, 0.48 , 'tablespoon') ;

insert into Ingredient (id, name, glutenFree, vegan, carbohydratesGram, lipidsGram, proteinsGram, measurementUnit)
values (3, 'butter', TRUE, FALSE, 0, 45, 0 , 'half stick') ;

commit;