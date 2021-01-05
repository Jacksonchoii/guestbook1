
--테이블작성
create table guestbook(
    no number,
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    primary key(no)
    );
    
--시퀀스 생성
create sequence seq_guestbook_id
increment by 1
start with 1;

--select
select  no,
        name,
        password,
        content,
        reg_date
from guestbook;

--insert
insert into guestbook values(seq_guestbook_id.nextval,'이정재','1234','이정재입니다',sysdate);

--delete
delete from guestbook
where no = 1;

commit;
rollback;