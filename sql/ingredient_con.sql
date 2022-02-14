drop table meat;
create table meat(
    meat_id number
        constraint meat_meat_id_pk primary key,
    meat varchar2(30)
        constraint meat_meat_uk unique
        constraint meat_meat_nn not null,
    price number default 0,
    qty number default 0,
    category varchar2(10)
        constraint meat_category_nn not null
);


drop table bread;
create table bread(
    bread_id number
        constraint bread_braed_id_pk primary key,
    bread varchar2(30)
        constraint bread_bread_uk unique
        constraint bread_break_nn not null,
    qty number default 0
);

drop table cheese;
create table cheese(
    cheese_id number
        constraint cheese_cheese_id_pk primary key,
    cheese varchar2(30)
        constraint cheese_cheese_uk unique
        constraint cheese_cheese_nn not null,
    qty number default 0
);

drop table veg;
create table veg(
    veg_id number
        constraint veg_veg_id_pk primary key,
    veg varchar2(30)
        constraint veg_veg_uk unique
        constraint veg_veg_nn not null,
    qty number default 0
);

drop table sauce;
create table sauce(
    sauce_id number
        constraint sauce_sacue_id_pk primary key,
    sauce varchar2(50)
        constraint sauce_sauce_uk unique
        constraint sauce_sacue_nn not null,
    qty number default 0
);

drop table cookie;
create table cookie(
    cookie_id number
        constraint cookie_cookie_id_pk primary key,
    cookie varchar2(40)
        constraint cookie_cookie_uk unique
        constraint cookie_cookie_nn not null,
    price number default 0,
    qty number default 0,
    category varchar2(10)
        constraint meat_category_nn not null
);

drop table potatoe;
create table potatoe(
    potatoe_id number
        constraint potatoe_potatoe_id_pk primary key,
    potatoe varchar2(50)
        constraint potatoe_potatoe_uk unique
        constraint potatoe_potatoe_nn not null,
    price number default 0,
    qty number default 0,
    category varchar2(10)
        constraint meat_category_nn not null
);

drop table beverage;
create table beverage(
    beverage_id number
        constraint beverage_beverage_id_pk primary key,
    beverage varchar2(40)
        constraint beverage_beverage_uk unique
        constraint beverage_beverage_nn not null,
    price number default 0,
    qty number default 0,
    category varchar2(10)
        constraint meat_category_nn not null
);

select *
from tab
where lower(tname) in ('meat', 'bread', 'cheese', 'cookie', 'potatoe', 'beverage', 'sauce', 'veg');

