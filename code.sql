CREATE TABLE User_table(user_id int NOT NULL, name varchar(50),mobile int, email varchar(50), address varchar(100), PRIMARY KEY(user_id));

Create table roles(role_id int NOT NULL, role_name varchar(50), role_desc varchar(100),PRIMARY KEY(role_id));
Create table profiles (prf_id int NOT NULL,prf_desc varchar(20),prf_type varchar(10),destination varchar(30),PRIMARY KEY (prf_id));

Create table members( mem_id int NOT NULL,mem_name varchar(20),mem_email varchar(10), mem_add varchar(30),mem_pass varchar(10), mem_mobile int(10),PRIMARY KEY (mem_id));

CREATE TABLE login(login_id int NOT NULL, login_role_id int, login_username varchar(50),user_password varchar(50),PRIMARY KEY(login_id));
Create table payment (pay_id int NOT NULL,pay_date Date, pay_desc varchar(10), pay_cus_id varchar(10),pay_amt varchar(10), PRIMARY KEY (pay_id), FOREIGN KEY(pay_id) REFERENCES login(login_id));
Create table accounts (acc_id int NOT NULL,acc_cus_id int(20),acc_desc varchar(10), acc_type varchar(20),acc_num int(10),PRIMARY KEY (acc_id),FOREIGN KEY(acc_id) REFERENCES members(mem_id));

ALTER TABLE user_table MODIFY name varchar(255) NOT NULL;
ALTER table user_table ADD UNIQUE (mobile);
Rename table members to member_details;
Create view member_info AS select role_id from roles where role_name='member';
ALTER TABLE `profiles` DROP `destination`;

insert into user_table(user_id,name,mobile,email,address) values (100001,'Vaishnavi',3748373488,'vaish@gmail.com','no.2323,
18th cross, Raipur 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100002,'Anagha',3742866488,'anagha@gmail.com','no.
2532, 12th cross, Panaji 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100008,'Shalmali',8992866488,'shalmali@gmail.com','no.2542,
29th cross, Gandhi 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100003,'Ananya',9292866488,'anan@gmail.com','no.2222, 18th cross, Ranchi 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100005,'Aishwarya',3452437890,'aish@gmail.com','no.1232,
17th cross, BSK 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100006,'MJ',9870986732,'gaths@gmail.com','no.102,
17th cross, JJJ 2nd stage');
insert into user_table(user_id,name,mobile,email,address) values (100007,'Rithika',8790456676,'ritu@gmail.com','no.1024,
1st cross, 3rd 2nd stage');
insert into roles(role_id,role_name,role_desc) values (121212, 'user','premium');
insert into roles(role_id,role_name,role_desc) values (139578, 'admin','manager');
insert into roles(role_id,role_name,role_desc) values (147562, 'user','VIP');
insert into roles(role_id,role_name,role_desc) values (264715, 'user','regular');
insert into roles(role_id,role_name,role_desc) values (161616, 'admin','assistant manager');
insert into roles(role_id,role_name,role_desc) values (837458, 'user','regular');
insert into roles(role_id,role_name,role_desc) values (538294, 'user','regular');
insert into roles(role_id,role_name,role_desc) values (264696, 'user','regular');

insert into profiles(prf_id,prf_desc,prf_type) values (674758,'3 months','monthly');
insert into profiles(prf_id,prf_desc,prf_type) values (487563,'5 months','monthly');
insert into profiles(prf_id,prf_desc,prf_type) values (485739,'6 months','monthly');
insert into profiles(prf_id,prf_desc,prf_type) values (483753,'1 year','annual');
insert into profiles(prf_id,prf_desc,prf_type) values (433303,'3 years','annual');
insert into profiles(prf_id,prf_desc,prf_type) values (481023,'4 year','annual');
insert into profiles(prf_id,prf_desc,prf_type) values (128903,'1 year','monthly');
insert into profiles(prf_id,prf_desc,prf_type) values (494803,'2 years','monthly'); 

insert into login(login_id,login_role_id,login_username_user_password) values(111111,01,'cat','cat01');
insert into login(login_id,login_role_id,login_username_user_password) values(222222,02,'lizard','lizardhater007');
insert into login(login_id,login_role_id,login_username_user_password) values(333333,03,'iceberg','meltingforu');
insert into login(login_id,login_role_id,login_username_user_password) values(444444,04,'palimamali','jj@123');
insert into login(login_id,login_role_id,login_username_user_password) values(555555,05,'chris','jesuschrist');
insert into login(login_id,login_role_id,login_username_user_password) values(666666,06,'dog','doglover');
insert into login(login_id,login_role_id,login_username_user_password) values(777777,07,'giraffe','htfjy');
insert into login(login_id,login_role_id,login_username_user_password) values(888888,08,'laptop','hfyfvh009');
insert into login(login_id,login_role_id,login_username_user_password) values(999999,09,'leg','ihatemath007');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(111111,2021-7-8,'cash','45654','Rs. 350');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(222222,2021-7-12,'cash','45345','Rs. 440');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(333333,2021-7-24,'online','4500','Rs. 850');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(666666,2021-5-8,'online','47654','Rs. 400');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(777777,2021-1-21,'cash','34788','Rs. 200');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(888888,2021-12-20,'UPI','34587','Rs. 350');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(555555,2021-11-9,'card','65454','Rs. 950');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(999999,2021-9-7,'cash','45654','Rs. 850');
insert into payment(pay_id,pay_date,pay_desc,pay_cus_id,pay_amt) values(444444,2021-8-21,'UPI','42341','Rs. 1150');


insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (101010,'Vaishnavi','vaish@gmail.com','no.1824, 10th cross, Bhopal 2nd stage','cat007',657657687);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (202020,'Ananya','lovelyanan@gmail.com','no.1, 1st cross, Bhopal 2nd stage','cat007',678590454);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (303030,'Aishwarya','depressedaish@gmail.com','no.133, 1st cross, BSK 2nd stage','juju8',8908765678);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (404040,'Rithika','rithu8@gmail.com','no.78, 1st cross, coimbatore 2nd stage','iuoi88',890096898);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (606060,'Gayathri','gaths@gmail.com','no.2352, 16th cross, Simla 2nd stage','hffgh007',990057687);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (707070,'Nidhi','gg@gmail.com','no.778, 16th cross, Mysore 2nd stage','7uugh007',990789687);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (808080,'Pratik','matt@gmail.com','no.23, 10th cross, Darjeeling 4th stage','tiny007',988057687);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (909090,'Ganesh','ganesh@gmail.com','no.52, 4th cross, BSK 2nd stage','ada007',137347687);
insert into member_details(mem_id,mem_name,mem_email,mem_add,mem_pass,mem_mobile) values (505050,'tanmay','tany8@gmail.com','no.78, 1st cross, mumbai 2nd stage','loser6',89894568); 



insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (101010,24758475,'student','regular',28392859);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (202020,2478292,'student','regular',48920402);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (303030,3242533,'employee','premium',48920908);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (404040,3289098,'admin','regular',90826472);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (505050,32111128,'employee','premium',99096472);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (606060,28358475,'admin','premium',70592859);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (707070,24567075,'student','regular',24892859);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (808080,23488475,'student','regular',28392939);
insert into accounts(acc_id,acc_cus_id,acc_desc,acc_type,acc_num) values (909090,24347475,'employee','premium',28334359);

ALTER TABLE `accounts` DROP `acc_cus_id`; 
select * from member_details where mem_name like 'a%'; 
select AVG(pay_amt) from payment; 
SELECT COUNT(*),role_name FROM roles GROUP BY role_name;
select * from profiles where prf_type='monthly';
Select acc_id,acc_num from accounts JOIN roles on role_desc=acc_type;
select (mem_id) from member_details UNION select (acc_num) from accounts;