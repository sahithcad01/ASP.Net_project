use cad_sss;

create table sss_products(
product_id int not null primary key,
product_name varchar(255) not null,
category varchar(255) not null,
stock_needed float,
stock_cleared float,
stock_sale float,
company_details varchar(255),
Item_cost float not null,
Item_percentage float,
sale_type varchar(255)
);


create table sss_usr_interest(
sno int not null primary key,
product_name varchar(255) not null,
product_id int,
category varchar(255) not null,
company_details varchar(255),
ordered_details varchar(255),
ordered_history datetime,
offer_foryou varchar(255),
sale_type varchar(255),
recently_viewed varchar(255),
foreign key (sno) references sss_usr_reg(sno),
foreign key (product_id) references sss_products(product_id)
);