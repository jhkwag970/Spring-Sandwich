drop table member;
create table member(
    member_id number
        constraint member_member_id_pk primary key
);

drop table menu;
create table menu(
    menu_id number
        constraint menu_menu_id_pk primary key,
    member_id number
        constraint menu_member_id_fk references member(member_id) on DELETE CASCADE,
    menu_price number
        constraint menu_oder_price_nn not null,
    menu_qty number default 1,
    menu_date date default sysdate,
    menu_isSet number
        constraint menu_oder_isSet_nn not null,
    menu_address varchar2(300)
        constraint menu_menu_address_nn not null
);

drop table sandwich;
create table sandwich(
    sandwich_id number
        constraint sandwich_sandwich_id_pk primary key,
    menu_id number
        constraint sandwich_menu_id_fk references menu(menu_id) on DELETE CASCADE,
    meat_id number
        constraint sandwich_meat_id_fk references meat(meat_id) on DELETE CASCADE,
    bread_id number
        constraint sandwich_bread_id_fk references bread(bread_id) on DELETE CASCADE,
    cheese_id number
        constraint sandwich_cheese_id_fk references cheese(cheese_id) on DELETE CASCADE,
    cheese_add_id number
        constraint sandwich_cheese_add_id_fk references cheese(cheese_id) on DELETE CASCADE,
    sandwich_heat number
        constraint sandwich_sandwich_heat_nn not null,
    sandwich_length number
        constraint sandwich_sandwich_length_nn not null
);

drop table side;
create table side(
    side_id number
        constraint side_side_id_pk primary key,
    menu_id number
        constraint side_menu_id_fk references menu(menu_id) on DELETE CASCADE,
    cookie_id number
        constraint side_cookie_id_fk references cookie(cookie_id) on DELETE CASCADE,
    potatoe_id number
        constraint side_potatoe_id_fk references potatoe(potatoe_id) on DELETE CASCADE,
    beverage_id number
        constraint side_beverage_id_fk references beverage(beverage_id) on DELETE CASCADE
);

drop table sand_sauce;
create table sand_sauce(
    sand_sauce_id number
        constraint sand_sauce_sand_sauce_id_pk primary key,
    sandwich_id number
        constraint sand_sauce_sandwich_id_fk references sandwich(sandwich_id) on DELETE CASCADE,
    sauce_id number
        constraint sand_sauce_sauce_id_fk references sauce(sauce_id) on DELETE CASCADE
);

drop table sand_veg;
create table sand_veg(
    sand_veg_id number
        constraint sand_veg_sand_veg_id_pk primary key,
    sandwich_id number
        constraint sand_veg_sandwich_id_fk references sandwich(sandwich_id) on DELETE CASCADE,
    veg_id number
        constraint snad_veg_veg_id_fk references veg(veg_id) on DELETE CASCADE
);

select *
from tab
where lower(tname) in ('menu', 'sandwich', 'side', 'sand_sauce', 'sand_veg');
