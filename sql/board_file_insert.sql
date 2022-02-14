insert into member
values('admin');

Declare
    type array_t is varray(13) of varchar2(30);
    tArray array_t := array_t('Steak_Cheese', 'Turkey', 'Tuna','Ham','B.L.T','MeatBall','Egg_Mayo', 'Spicy_Italian','Shrimp','Turkey_Bacon','K-BBQ','Veggie', 'Roasted_Chicken');
    
    type array_p is varray(13) of number;
    pArray array_p := array_p(6000,6000,7000,7000,7000,8000,7000,8000,7000,7000,8000,5000,6000);
    
    type array_C is varray(13) of varchar2(10);
    cArray array_C := array_c('Classic','Classic','Classic','Classic','Classic','Premium','Premium','Premium','Premium','Premium','Premium','Fresh','Fresh');
Begin
    
    for i in 1..tArray.count loop
    
    insert into board
    values(i, 'admin', sysdate, cArray(i),0,tArray(i),tArray(i), pArray(i), 10, 'menu');
    
    end loop;
END;

insert into board
values (50, 'admin', sysdate, 'Premium',0, 'Ham_Cheese', 'Ham_Cheese', 8000, 10, 'menu');

commit;

select *
from board;

insert into meat
values(14, 'Ham_Cheese', 8000, 10, 'pr');


Declare

Begin
    
    for i in 14..25 loop
    
    insert into board
    values(i, 'admin',sysdate, 'Event', 0, 'Event', 'Event', 0, 0, 'event');
    
    end loop;
END;

Declare

Begin
    
    for i in 26..32 loop
    
    insert into board
    values(i, 'admin',sysdate, 'Promotion', 0, 'Promotion', 'Promotion', 0, 0, 'event');
    
    end loop;
END;

Declare

Begin
    
    for i in 32..34 loop
    
    insert into board
    values(i, 'admin',sysdate, 'End', 0, 'Promotion', 'Promotion', 0, 0, 'event');
    
    end loop;
END;

Declare

Begin
    
    for i in 34..36 loop
    
    insert into board
    values(i, 'admin',sysdate, 'End', 0, 'Event', 'Event', 0, 0, 'event');
    
    end loop;
END;

Declare
    type array_t is varray(13) of varchar2(30);
    tArray array_t := array_t('Chocolate', 'Double_Chocolate', 'Oatmeal_Raisin','White_Chocolate','Wedge','Cheesy_Wedge','Bacon_Cheesy_Wedge', 
    'Coke','Sprite','Dr.Pepper','Hot_Coffee','Iced_Coffee', 'Orange_juice');
    
    type array_p is varray(13) of number;
    pArray array_p := array_p(1000,1100,1100,1000,1500,2000,2500,1500,1500,1500,2000,2000,2000);
    
    type array_C is varray(13) of varchar2(10);
    cArray array_C := array_c('Cookie','Cookie','Cookie','Cookie','Potatoe','Potatoe','Potatoe','Beverage','Beverage','Beverage','Beverage','Beverage','Beverage');
Begin
    
    for i in 1..tArray.count loop
    
    insert into board
    values(36+i, 'admin', sysdate, cArray(i),0,tArray(i),tArray(i), pArray(i), 10, 'side');
    
    end loop;
END;


select *
from payments;

select *
from sandwich
where payment_id = 5;

delete 
from sandwich
where payment_id = 5;


commit;