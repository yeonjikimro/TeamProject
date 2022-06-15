drop TABLE tbl_posting;

CREATE DATABASE swap;

SELECT * FROM tbl_posting;

use swap;


		
   CREATE TABLE tbl_posting
        (
		Posting_seq bigint PRIMARY KEY,
		title varchar(100) NOT NULL,
		cont varchar(100) NOT NULL,
		cars varchar(100) NOT NULL,
		cat_code varchar(100) NOT NULL,
		addr varchar(100) NOT NULL,
		addr_dtl varchar(100) NOT NULL,
		goods varchar(100) NOT NULL,
		writer varchar(100) NOT NULL
		);
        commit;

drop TABLE tbl_category;

CREATE TABLE tbl_category (
  cat_name varchar(20) NOT NULL,
  cat_code varchar(10) PRIMARY KEY
);
SELECT * FROM tbl_category;
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


