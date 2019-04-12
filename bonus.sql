CREATE TABLE IF NOT EXISTS users(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(200) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 email VARCHAR(200) NOT NULL,
 PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS ad(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 id INT UNSIGNED NOT NULL,
 title VARCHAR(500) DEFAULT NOT NULL,
 price DOUBLE UNSIGNED DEFAULT 0.00,
 description TEXT DEFAULT NULL,
 category int unsigned not null,
 PRIMARY KEY(id),
 FOREIGN KEY(id) REFRENCES users(id),
 foreign key(category) references categories (id)
);


CREATE TABLE IF NOT EXISTS categories(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 name VARCHAR(200) NOT NULL,
 PRIMARY KEY(cat_id)
);

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


ad_category:
Ad_id,
category_id,
AD id foreign key references AD(ID)
category_id foreign key references category(id)


select email from users
where user_id in (select user_id from ad where title = '')


select name from AD
where category_id in (select category_id where name = '' )

