drop table tbl_category;
create table tbl_category (
cat_name varchar(20) not null,
cat_code  varchar(10) primary key
);
insert into tbl_category
(cat_name, cat_code) value
('디지털','C0002'),
('도서/음반/티켓','C0003'),
('가구/인테리어','C0004'),
('유아용','C0005'),
('생활/식품','C0006'),
('스포츠 레저','C0007'),
('의류/잡화','C0008'),
('뷰티/미용','C0009'),
('반려동물','C0010'),
('기타','C0011');


commit;








