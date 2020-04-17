-- Membuat database dari sumber data dan diubah ke bentuk csv. kemudian akan di konek ke python dengan sqlalchemy
create table tips(
	total_bill FLOAT NOT NULL,
    tip FLOAT NOT NULL,
    sex VARCHAR(10) not null,
    smoker VARCHAR(5) not null,
    day varchar(10) not null,
    time varchar(10) not null,
    size INT not null
);


show variables like 'secure_file_priv';

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\datatips.csv'
into table tips fields terminated by ',' lines terminated by '\n' ignore 1 rows;

select*from tips;
select count(*) from tips;

