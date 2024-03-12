use cad_sss;

create table sss_order(
sno int not null,
order_id int not null primary key,
product_id int,
product_name varchar(255) not null,
category varchar(255) not null,
quantity int not null,
amount bigint not null,
location varchar(255),
ordered_on datetime,
ordered_by varchar(255),
foreign key (sno) references sss_usr_reg(sno),
foreign key (product_id) references sss_products(product_id)
);

create table sss_promotion(
sno int not null,
ad_id int not null primary key,
product_name varchar(255) not null,
product_id int,
category varchar(255) not null,
company_details varchar(255) not null,
order_id int,
amount double not null,
ordered_on datetime,
ordered_by varchar(255),
discount double,
offer_detail varchar(255),
offer_percentage int,
sale_type varchar(255),
foreign key (sno) references sss_usr_reg(sno),
foreign key (order_id) references sss_order(order_id),
foreign key (product_id) references sss_products(product_id)
);


