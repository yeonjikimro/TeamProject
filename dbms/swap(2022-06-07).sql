-- db
drop table tbl_cateory;
create table tbl_category (
cat_name varchar(20) not null,
cat_code  varchar(10) primary key
);
insert into tbl_category (cat_name, cat_code) value ('가전','C0001');
insert into tbl_category (cat_name, cat_code) value ('디지털','C0002');
insert into tbl_category (cat_name, cat_code) value ('도서/음반/티켓','C0003');
insert into tbl_category (cat_name, cat_code) value ('가구/인테리어','C0004');
insert into tbl_category (cat_name, cat_code) value ('유아용','C0005');
insert into tbl_category (cat_name, cat_code) value ('생활/식품','C0006');
insert into tbl_category (cat_name, cat_code) value ('스포츠 레저','C0007');
insert into tbl_category (cat_name, cat_code) value ('의류/잡화','C0008');
insert into tbl_category (cat_name, cat_code) value ('뷰티/미용','C0009');
insert into tbl_category (cat_name, cat_code) value ('반려동물','C0010');
insert into tbl_cateory (cat_name, cat_code) value ('기타','C0011');

CREATE TABLE tbl_login (
  username VARCHAR(100) PRIMARY KEY,
  password VARCHAR(125) NOT NULL,
  email VARCHAR(125),
  name VARCHAR(125),
  tel VARCHAR(100),
  identify VARCHAR(50),
  address VARCHAR(100),
  role VARCHAR(10)
);
drop table tbl_login;

    