create database E_Commerce2;

create table Product_info2(
pr_id int,
pr_name varchar(50));

insert into Product_info2 values (1001,"Blog");
insert into product_info2 values(1002,"YouTube"),(1003,"Education"),(1004,"Tech"),(1005,"News");

select * from Product_info2;

create table Product_info_Likes1(
user_id int ,
pr_id int ,
pr_likedDate varchar(50));

use E_Commerce2;
select * from Product_info_Likes1;

insert into Product_info_Likes1 values(1,1001,"19Aug2023");
insert into Product_info_Likes1 values(2,1003,"18Aug2023"),
(3,1004,"20Aug2023");

use E_Commerce2;
SELECT *
FROM Product_info2 pr
LEFT JOIN Product_info_Likes1 pl 
ON  pr.pr_id= pl.pr_id
WHERE pl.user_id IS null;


use E_Commerce1;
create table AI_Tools(
Id int ,
Technology varchar(50));

insert into AI_Tools values(1,"DataScience");
insert into AI_Tools values(1,"Tableau"),(1,"SQL"),(2,"R"),(2,"Power BI"),(1,"Python");

select * from AI_Tools;

select Id from AI_Tools where
Technology in ('DataScience','Tableau','SQL','Python')
group by Id having count( Technology) = 4
order by Id ASC;

