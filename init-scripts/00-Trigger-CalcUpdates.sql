alter session set container = freepdb1;
alter session set current_schema = system;

create or replace TRIGGER CalcUpdates
After insert on Recipe
for each row
declare 
    carbs Float;
    lipids Float;
    proteins Float;
Begin
    --trigger 2 stuff from notes
    

   
    select carbohydratesGram, lipidsGram, proteinsGram
    into carbs, lipids, proteins
    from Ingredient
    where id = :new.ingredientID;
    

    update Meal
    set
        carbohydratesGram = NVL(carbohydratesGram, 0) + (carbs * :new.amount),
        lipidsGram = NVL(lipidsGram, 0) + (lipids * :new.amount),
        proteinsGram = NVL(proteinsGram, 0) + (proteins * :new.amount)
    where id = :new.mealID;
end;
/