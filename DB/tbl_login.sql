USE login;

CREATE TABLE tbl_login (
  username nVARCHAR(100) PRIMARY KEY,
  password nVARCHAR(125) NOT NULL,
  email VARCHAR(125),
  name nVARCHAR(125),
  tel VARCHAR(100),
  role VARCHAR(10)
);

DROP TABLE tbl_login;

select * from tbl_login;

INSERT INTO tbl_login (username, password, email, name, tel) VALUES 
('ysys', 'ys1234','duswl@naver.com','기면지','010-2332-5555'),
('kko', 'kk5566','korin@daum.net','김대명','010-2556-8878'),
('소리', 'dksll255','soso@naver.com','김소명','010-6677-4556')
;
commit ;
select * from tbl_login ;

