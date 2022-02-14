Declare
    type array_m is varray(13) of varchar2(30);
    mArray array_m := array_m('Steak_Cheese', 'Turkey', 'Tuna','Ham','B.L.T','MeatBall','Egg_Mayo', 'Spicy_Italian','Shrimp','Turkey_Bacon','K-BBQ','Veggie', 'Roasted_Chicken');
    
    type array_p is varray(13) of number;
    pArray array_p := array_p(6000,6000,7000,7000,7000,8000,7000,8000,7000,7000,8000,5000,6000);
    
    type array_C is varray(13) of varchar2(10);
    cArray array_C := array_c('c','c','c','c','c','pr','pr','pr','pr','pr','pr','fr','fr');
Begin
    
    for i in 1..mArray.count loop
    
    insert into meat
    values(i, mArray(i), pArray(i), 10, cArray(i));
    
    end loop;
END;



Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('White', 'Flate_Bread', 'Honey_Oat');
Begin
    
    for i in 1..mArray.count loop
    
    insert into bread
    values(i, mArray(i), 10);
    
    end loop;
END;


Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('American', 'Shredded', 'Mozzarella');
Begin
    
    for i in 1..mArray.count loop
    
    insert into cheese
    values(i, mArray(i), 10);
    
    end loop;
END;


Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('Lettuce', 'Tomatoes', 'Cucumbers');
    
Begin
    
    for i in 1..mArray.count loop
    
    insert into veg
    values(i, mArray(i), 10);
    
    end loop;
END;


Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('Rench', 'Mayonnaise', 'Sweet_Onion');
    
Begin
    
    for i in 1..mArray.count loop
    
    insert into sauce
    values(i, mArray(i), 10);
    
    end loop;
END;


Declare
    type array_m is varray(2) of varchar2(30);
    mArray array_m := array_m('Chocolate', 'Double_Chocolate');
    
    type array_p is varray(2) of number;
    pArray array_p := array_p(1000,1100);
Begin
    
    for i in 1..mArray.count loop
    
    insert into cookie
    values(i, mArray(i), pArray(i), 10, 'cookie');
    
    end loop;
END;

Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('Wedge', 'Cheesy_Wedge', 'Bacon_Cheesy_Wedge');
    
    type array_p is varray(3) of number;
    pArray array_p := array_p(1500,2000,2500);
Begin
    
    for i in 1..mArray.count loop
    
    insert into potatoe
    values(i, mArray(i), pArray(i), 10, 'potatoe');
    
    end loop;
END;


Declare
    type array_m is varray(3) of varchar2(30);
    mArray array_m := array_m('Coke', 'Sprite', 'Dr.Pepper');
    
    type array_p is varray(3) of number;
    pArray array_p := array_p(1500,1500,1500);
Begin
    
    for i in 1..mArray.count loop
    
    insert into beverage
    values(i, mArray(i), pArray(i), 10,'beverage');
    
    end loop;
END;

select *
from meat;
select *
from bread;
select *
from cheese;
select *
from veg;
select *
from sauce;
select *
from cookie;
select *
from potatoe;
select *
from beverage;

commit;
