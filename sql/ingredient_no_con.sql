drop table meat;
create table meat(
    meat_id number,
    meat varchar2(30),
    price number,
    qty number,
    category varchar2(10)
);

select *
from meat;


drop table bread;
create table bread(
    bread_id number,
    bread varchar2(30),
    qty number
);

drop table cheese;
create table cheese(
    cheese_id number,
    cheese varchar2(30),
    qty number
);

drop table veg;
create table veg(
    veg_id number,
    veg varchar2(30),
    qty number
);

drop table sauce;
create table sauce(
    sauce_id number,
    sauce varchar2(50),
    qty number
);



drop table cookie;
create table cookie(
    cookie_id number,
    cookie varchar2(40),
    price number,
    qty number,
    category varchar2(10)
);

drop table potatoe;
create table potatoe(
    potatoe_id number,
    potatoe varchar2(50),
    price number,
    qty number,
    category varchar2(10)
);

drop table beverage;
create table beverage(
    beverage_id number,
    beverage varchar2(40),
    price number,
    qty number,
    category varchar2(10)
);

select *
from tab
where lower(tname) in ('meat', 'bread', 'cheese', 'cookie', 'potatoe', 'beverage', 'sauce', 'veg');
