drop table member;
create table member(
    member_id number,
    pwd number
);
insert into member (member_id)
values(1);

select *
from member;

drop table payments;
create table payments(
    imp_uid VARCHAR2(500),
    merchant_uid VARCHAR2(500),
    
    payment_date varchar2(500),
    menu_price number default 0,
    
    mem_id varchar2(500),
    payment_id number
        constraint payments_payment_id_pk primary key
);

drop table sandwich;
create table sandwich(
    sandwich_id number,
    payment_id number
        constraint sandwich_payment_id_fk references payments(payment_id) on DELETE CASCADE,
    meat_id number,
    bread_id number,
    cheese_id number,
    sauce_id number,
    veg_id number
);

drop table side;
create table side(
    side_id number,
    payment_id number
        constraint side_payment_id_fk references payments(payment_id) on DELETE CASCADE,
    cookie_id number,
    potatoe_id number,
    beverage_id number
);

commit;

select *
from payments;

select *
from sandwich;

select *
from side;

delete 

insert into payments (payment_id)
values(1);

insert into sandwich (sandwich_id, payment_id)
values(2,1);

insert into side (side_id, payment_id)
values(2,1);

delete from payments
where payment_id = 1;

delete from payments;
delete from sandwich;
delete from side;

commit;




drop table sand_sauce;
create table sand_sauce(
    sand_sauce_id number,
    sandwich_id number,
    sauce_id number
);

drop table sand_veg;
create table sand_veg(
    sand_veg_id number,
    sandwich_id number,
    veg_id number
);

select *
from tab
where lower(tname) in ('menu', 'sandwich', 'side', 'sand_sauce', 'sand_veg');
