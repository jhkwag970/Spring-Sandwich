
drop table member;

create table member(
    mem_id varchar2(50),
    mem_pw varchar2(50),
    mem_name varchar2(50),
    mem_tel varchar2(50),
    mem_address varchar2(200)
    --mem_history varchar2(50) default 0
);
commit;
insert into member values('cbcbcodus','1234','박채연','010-2552-8448','인천');

select *from member;