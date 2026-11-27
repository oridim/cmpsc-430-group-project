alter session set container = freepdb1;
alter session set current_schema = system;

drop table if exists Recipe;
create table if not exists Recipe (
    mealId int,
    ingredientID int,
    amount int, --count was already a keyword
    primary key(mealID, ingredientID)
);


insert into Recipe (mealID, ingredientID, amount)
values (1, 1, 12);

insert into Recipe (mealID, ingredientID, amount)
values (1, 3, 1);



commit;
