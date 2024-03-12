CREATE TABLE sss_usr_pic(IMG_ID INT NOT NULL primary key, USR_NAME varchar(45) NOT NULL,USR_IMAGE image, USER_ID INT NOT NULL,FOREIGN KEY (USER_ID) REFERENCES sss_usr_reg(sno));

INSERT INTO sss_usr_pic(IMG_ID,USR_NAME,USR_IMAGE,USER_ID) VALUES(101,'Sahith','C:\Users\sahithcad01\Downloads\sno1_pic.jpg',1);
