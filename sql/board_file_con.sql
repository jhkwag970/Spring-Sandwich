drop table board;
create table Board(
    board_id number,
    member_id varchar2(20),
    board_write_date date default sysdate,
    board_category varchar2(15)
        constraint board_board_category_nn not null,
    board_views Integer default 0,
    board_title varchar2(90)
        constraint boards_board_title_nn not null,
    board_content varchar2(3000)
        constraint boards_board_content_nn not null,
    board_price number default 0,
    board_qty number default 0,
    board_content_type varchar2(15)
        constraint boards_board_content_type_nn not null,
        constraint boards_board_id_pk primary key(board_id),
        constraint boards_member_id_fk 
            foreign key(member_id) references members(member_id) ON DELETE CASCADE
);

drop table files;
create table Files(
    file_id number,
    board_id number,
    file_path varchar2(500)
        constraint files_file_path_nn not null,
        constraint files_file_id_pk primary key(file_id),
        constraint files_board_id_fk
            foreign key(board_id) references boards(board_id)  ON DELETE CASCADE
);