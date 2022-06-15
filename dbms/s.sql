select * from tbl_catecory;

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
