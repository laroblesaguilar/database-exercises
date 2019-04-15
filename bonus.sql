CREATE TABLE IF NOT EXISTS users(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 name VARCHAR(200) NOT NULL,
 password VARCHAR(200) NOT NULL,
 email VARCHAR(200) NOT NULL,
 PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS ads(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 user_id INT UNSIGNED NOT NULL,
 title VARCHAR(500) DEFAULT NOT NULL,
 price DOUBLE UNSIGNED DEFAULT 0.00,
 description TEXT DEFAULT NULL,
 PRIMARY KEY(id),
 FOREIGN KEY(user_id) REFRENCES users(id),
);


CREATE TABLE IF NOT EXISTS categories(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 name VARCHAR(200) NOT NULL,
 PRIMARY KEY(id)
);


create table if not exists ad_category:
Ad_id integer unsigned not null,
category_id integer unsigned not null,
Ad_id foreign key references ads (ID)
category_id foreign key references categories (id)












select email
from users
where id in (select id from ad where ad name = '');



users:
user_id int
user_name varchar ,
password varchar,
email varchar

AD:
ID int
title varchar,
description varchar,
price double,
user_id foreign key references user(id),
category_id int foreign key references category (id)


category:
int category_id,
name





select email from users
where user_id in (select user_id from ad where title = '')


select name from AD
where category_id in (select category_id from category where name = '' )


show title from AD
where user_id in(select user_id from user where name = '')



create table questions(
ID int unsigned NOT NULL auto_increment ,
question_name varchar(500)
)

create table answers(
ID int unsigned NOT NULL auto_increment,
answer_name varchar(500)
)


create table quiz(
ID int unsigned NOT NULL auto_increment,
question_name varchar (500)
foreign key references questions(question_name)
)

