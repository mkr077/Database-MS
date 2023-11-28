SET LINESIZE 150
SET PAGESIZE 200

drop table credit_card;
drop table loan;
drop table account;
drop table branch;
drop table banker;
drop table customer;
drop table banker_information;




create table customer(customer_id int not null, 
customer_name varchar(20),
customer_street varchar(20),
customer_city varchar(20));

alter table customer add primary key(customer_id);

create table banker_information(banker_id int not null,
banker_name varchar(20), 
banker_email varchar(20), 
primary key(banker_id));



create table banker(banker_id int not null,
customer_id int not null,
foreign key(customer_id) references customer on delete cascade,
foreign key(banker_id) references banker_information on delete cascade);



create table credit_card(card_number int not null,
card_limit int,
expire_date date,
customer_id int not null,
primary key(card_number),
foreign key(customer_id) references customer on delete cascade );



create table branch(branch_name varchar(20) not null,
branch_location varchar(20),
primary key(branch_name));



create table loan(loan_number int not null,
amount int,
customer_id int not null,
branch_name varchar(20) not null,
primary key(loan_number),
foreign key(customer_id) references customer on delete cascade,
foreign key(branch_name) references branch on delete cascade);




create table account(account_number int not null,
balance int check(balance >= 100000),
category varchar(20),
customer_id int not null,
primary key(account_number),
foreign key(customer_id) references customer on delete cascade);




alter table customer add email char(20);


alter table customer modify email varchar(27);


alter table customer rename column email  to customer_emails;


alter table customer drop column customer_emails;



insert into customer(customer_id, customer_name,customer_street,customer_city) values(500, 'nafes', '500a','dinajpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(501, 'younus', '501a','rangpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(502, 'rizwan', '502a','dinajpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(503, 'ankon', '503a','rangpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(504, 'robi', '504a','chandpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(505, 'ashfaq', '505a','savar');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(506, 'akbar', '506a','Rajshahi');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(507, 'selim', '507a','Uttara');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(508, 'mustafa', '508a','Sonadanga');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(509, 'riyad', '509a','new jersy');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(510, 'islam', '510a','new york');


insert into banker_information(banker_id, banker_name, banker_email) values(100, 'joy', 'joy@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(101, 'mahin', 'mahin@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(102, 'bilal', 'bilal@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(103, 'imtaig', 'imtaig@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(104, 'iram', 'irham@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(105, 'atiq', 'atiq@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(106, 'saad', 'saad@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(107, 'akash', 'akash@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(108, 'shuaib', 'shuaib@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(109, 'aumiyo', 'aumiyo@gmail.com');


insert into banker(banker_id, customer_id) values(100 ,500);
insert into banker(banker_id, customer_id) values(100 ,501);
insert into banker(banker_id, customer_id) values(101 ,502);
insert into banker(banker_id, customer_id) values(102 ,502);
insert into banker(banker_id, customer_id) values(103 ,503);
insert into banker(banker_id, customer_id) values(104 ,504);
insert into banker(banker_id, customer_id) values(104 ,505);
insert into banker(banker_id, customer_id) values(105 ,506);
insert into banker(banker_id, customer_id) values(106 ,507);
insert into banker(banker_id, customer_id) values(107 ,508);
insert into banker(banker_id, customer_id) values(108 ,509);
insert into banker(banker_id, customer_id) values(109 ,510);


insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1001, 500000, '22-dec-2007', 500);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1002, 700000, '22-jan-2009', 501);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1003, 800000, '22-feb-2007', 502);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1004, 900000, '19-nov-2008', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1005, 600000, '11-feb-2008', 504);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1006, 900000, '10-dec-2007', 504);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1007, 500000, '19-nov-2008', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1008, 200000, '19-nov-2008', 502);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1009, 590000, '19-nov-2010', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1010, 700000, '19-nov-2011', 502);


insert into branch(branch_name, branch_location) values('sonali', 'wari');
insert into branch(branch_name, branch_location) values('rupali', 'dhaka');
insert into branch(branch_name, branch_location) values('janata', 'khulna');
insert into branch(branch_name, branch_location) values('agrani', 'jessore');
insert into branch(branch_name, branch_location) values('islami', 'faridpur');
insert into branch(branch_name, branch_location) values('bd bank', 'dhaka');
insert into branch(branch_name, branch_location) values('krishi', 'khustia');
insert into branch(branch_name, branch_location) values('silpo', 'Rajshahi');
insert into branch(branch_name, branch_location) values('pubali', 'Mirpur');
insert into branch(branch_name, branch_location) values('southeast', 'Gulshan');


insert into loan(loan_number, amount, customer_id, branch_name)  values(5001, 100000, 500, 'sonali');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5002, 200000, 501, 'rupali');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5003, 350000, 502, 'janata');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5004, 490000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5005, 580000, 504, 'islami');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5006, 660000, 504, 'islami');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5007, 870000, 505, 'islami');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5008, 680000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5009, 560000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5010, 970000, 503,'agrani');








insert into account(account_number, balance, category, customer_id) values(10001, 100000, 'general', 500);
insert into account(account_number, balance, category, customer_id) values(10002, 200000, 'premium', 501);
insert into account(account_number, balance, category, customer_id) values(10003, 300000, 'standard', 502);
insert into account(account_number, balance, category, customer_id) values(10004, 400000, 'premium', 503);
insert into account(account_number, balance, category, customer_id) values(10005, 500000, 'gold', 504);
insert into account(account_number, balance, category, customer_id) values(10006, 700000, 'premium', 504);
insert into account(account_number, balance, category, customer_id) values(10007, 500000, 'general', 500);
insert into account(account_number, balance, category, customer_id) values(10008, 700000, 'premium', 503);
insert into account(account_number, balance, category, customer_id) values(10009, 1000000, 'gold', 504);
insert into account(account_number, balance, category, customer_id) values(10010, 800000, 'premium', 504);







select * from customer;
select * from banker_information;
select * from banker;
select * from credit_card;
select * from loan;
select * from branch;
select * from account;





update customer set customer_city='Rajshahi'where customer_name='riyad' ;  



delete from loan where loan_number = 5007;



select account_number as acc_no from account;


select customer_name from customer where customer_name like '%s' and customer_name in (select customer_name from customer where customer_name like '%a%'); 



select customer_name from customer where customer_name like '%s' and customer_name not in (select customer_name from customer where customer_name like '%a%'); 



select customer_name from customer where customer_id in (select customer_id from account where balance > all (select balance from account where balance >= 100000));



select * from branch where branch_name like '%i'; 
   
select * from branch  where branch_name like '___';   



select * from customer order by customer_city;

select * from customer order by customer_city desc;



select sum(amount) as total_amount from loan;

select avg(amount) as avg_amount from loan;
  
select max(balance) from account; 

select min(balance) from account;   



select a.account_number, a.balance, c.customer_name from account a join customer c on a.customer_id = c.customer_id;



set serveroutput on
declare
   max_loan_amount  number;
begin
   select max(amount) into max_loan_amount
   from loan;
   dbms_output.put_line('the maximum loan amount is: ' || max_loan_amount);
end;
/
