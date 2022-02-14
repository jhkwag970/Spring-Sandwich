drop table board;
create table Board(
    board_id number,
    member_id varchar2(20),
    board_write_date date default sysdate,
    board_category varchar2(15),
    board_views Integer default 0,
    board_title varchar2(90),
    board_content varchar2(3000),
    board_price number default 0,
    board_qty number default 0,
    board_content_type varchar2(15)
);

drop table board_file;
create table board_file(
    file_id number,
    board_id number,
    file_path varchar2(500)
);

select *
from board;

select *
from board_file;

commit;