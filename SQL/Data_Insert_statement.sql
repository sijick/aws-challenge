
insert into hr_emp values(1001,'Rajesh',now(),'Mumbai-3','Godrej Complex','400610','9899457000','A-positive','1020',10.5)
insert into hr_emp values(1002,'Mangesh',now(),'Mumbai1','Godrej Complex1','400611','9899457001','B-positive','1021',11.5);
insert into hr_emp values(1003,'Krishna',now(),'Mumbai2','Godrej Complex2','400612','9899457002','AB-positive','1022',12.5);
insert into hr_emp values(1004,'Ranveer',now(),'Mumbai4','Godrej Complex3','400613','9899457003','B-Negative','1023',13.5);
insert into hr_emp values(1005,'Sidhu',now(),'Mumbai5','Godrej Complex4','400614','9899457004','A-positive','1024',14.5);
insert into hr_emp values(1006,'Ganesh',now(),'Mumbai6','Godrej Complex5','400615','9899457005','A-positive','1025',15.5);
insert into hr_emp values(1007,'Ramesh',now(),'Mumbai7','Godrej Complex6','400616','9899457006','A-positive','1026',16.5);
insert into hr_emp values(1008,'Santosh',now(),'Mumbai8','Airoli','400001','9899457010','A-positive','1026',16.5);
insert into hr_emp values(1009,'Kumaresh',now(),'Mumbai9','Airooli Gigaplex','400002','9899457011','A-positive','1026',16.5);
insert into hr_emp values(1010,'Pratap',now(),'Mumbai10','Airoli Yoshomite','400003','9899457012','A-positive','1026',16.5);

-----------------

insert into hr_emp_project values(1001,'489045','Thane courier service','Apps2','YES',now(),now());
insert into hr_emp_project values(1002,'489046','Hotel Management service','Apps1','YES',now(),now());
insert into hr_emp_project values(1003,'432145','SAI courier service','BIM','NO',now(),now());
insert into hr_emp_project values(1004,'559045','Mahesh tutorial','AI','YES',now(),now());
insert into hr_emp_project values(1005,'679045','Gujrat material','Apps2','YES',now(),now());
insert into hr_emp_project values(1006,'989041','sri communication','Apps2','YES',now(),now());
insert into hr_emp_project values(1007,'489043','ABC consultant','Apps2','YES',now(),now());
insert into hr_emp_project values(1008,'489042','TULU software pvt ltd','Infra','NO',now(),now());
insert into hr_emp_project values(1009,'489040','Thane courier service','CSD','YES',now(),now());
insert into hr_emp_project values(1010,'489035','Thane courier service','AM','YES',now(),now());
insert into hr_emp_project values(1011,'489025','Thane courier service','DCX','NO',now(),now());
insert into hr_emp_project values(1012,'489015','Thane courier service','Digital','NO',now(),now());

---------------------------------

insert into icres_country_office values('India','Mumbai','101','Gigaplex');
insert into icres_country_office values('India','Bangalore','102','ABC');
insert into icres_country_office values('India','Pune','001','Godrej');
insert into icres_country_office values('India','Hydrabad','201','Gigaplex');
insert into icres_country_office values('India','Delhi','301','Gigaplex');
insert into icres_country_office values('India','Mumbai','101','Gigaplex');
insert into icres_country_office values('India','Bangalore','102','ABC');
insert into icres_country_office values('India','Pune','001','Godrej');
insert into icres_country_office values('India','Hydrabad','201','Gigaplex');
insert into icres_country_office values('India','Delhi','301','Gigaplex');
insert into icres_country_office values('UK','LONDON','1004','Gale');
insert into icres_country_office values('UK','WOKING','1005','Gapforce');
insert into icres_country_office values('UK','Liverpool','1000','Barclays');
insert into icres_country_office values('UK','Birmingham ','1002','RjDj');
insert into icres_country_office values('UK','Nottingham ','1003','Iwoca');

-----------------------------------------------

insert into icres_ows_complex_gate values('101','Nottingham ','1003','Iwoca');
insert into icres_ows_complex_gate values('101','Nottingham ','1003','Iwoca');
insert into icres_ows_complex_gate values('101','Nottingham ','1003','Iwoca');
insert into icres_ows_complex_gate values('101','Nottingham ','1003','Iwoca');
insert into icres_ows_complex_gate values('101','Nottingham ','1003','Iwoca');

--------------------------------------------

insert into icres_ows_building_gate values('A001','B6 ','G1','1001',98.0,111,now(),now());
insert into icres_ows_building_gate values('A001','B6 ','G2','1002',98.0,111,now(),now());
insert into icres_ows_building_gate values('A001','B6 ','G3','1003',98.0,111,now(),now());
insert into icres_ows_building_gate values('A002','B5 ','G1','1001',98.0,111,now(),now());
insert into icres_ows_building_gate values('A002','B5 ','G2','1002',98.0,111,now(),now());
insert into icres_ows_building_gate values('A002','B5 ','G3','1006',98.0,111,now(),now());
insert into icres_ows_building_gate values('A007','B4 ','G1','1007',98.0,111,now(),now());
insert into icres_ows_building_gate values('A008','B16 ','G2','1005',98.0,111,now(),now());
insert into icres_ows_building_gate values('A009','B15 ','G1','1004',98.0,111,now(),now());
insert into icres_ows_building_gate values('A010','B7 ','G1','1008',98.0,111,now(),now());

--------------------------------------

Insert into icres_ows_lift values('L001','A001','G1','1001',now(),4,2);
Insert into icres_ows_lift values('L002','A001','G2','1002',now(),5,2);
Insert into icres_ows_lift values('L002','A002','G1','1003',now(),4,2);
Insert into icres_ows_lift values('L002','A002','G2','1004',now(),5,2);
Insert into icres_ows_lift values('L003','A002','G2','1005',now(),5,2);
Insert into icres_ows_lift values('L004','A002','G2','1006',now(),5,2);
Insert into icres_ows_lift values('L001','A007','G1','1007',now(),5,2);
Insert into icres_ows_lift values('L002','A007','G2','1008',now(),5,2);
Insert into icres_ows_lift values('L001','A008','G1','1009',now(),5,2);
Insert into icres_ows_lift values('L002','A008','G2','1010',now(),5,2);

----------------------------

Insert into icres_ows_canteen values('C001','G001','Katra','A001',5,4,now(),now(),1001);
Insert into icres_ows_canteen values('C001','G002','Katra','A001',5,4,now(),now(),1002);
Insert into icres_ows_canteen values('C002','G003','Gulmarg','A002',5,4,now(),now(),1003);
Insert into icres_ows_canteen values('C002','G004','Gulmarg','A002',5,4,now(),now(),1004);
Insert into icres_ows_canteen values('C003','G001','pahalgam','A007',4,4,now(),now(),1005);
Insert into icres_ows_canteen values('C003','G002','pahalgam','A007',4,4,now(),now(),1006);
Insert into icres_ows_canteen values('C003','G003','pahalgam','A007',4,4,now(),now(),1007);
Insert into icres_ows_canteen values('C004','G001','Srinagar','A008',5,4,now(),now(),1008);
Insert into icres_ows_canteen values('C004','G002','Srinagar','A008',5,4,now(),now(),1009);
Insert into icres_ows_canteen values('C004','G003','Srinagar','A008',5,4,now(),now(),1010);
Insert into icres_ows_canteen values('C004','G004','Srinagar','A008',5,4,now(),now(),10001);

------------------------------

Insert into icres_ows_canteen values('TH001','Y',25,15,'THANE',101);
Insert into icres_ows_canteen values('TH002','Y',30,25,'THANE',101);
Insert into icres_ows_canteen values('TH003','Y',10,30,'THANE',101);
Insert into icres_ows_canteen values('TH001','Y',25,30,'THANE',101);
Insert into icres_ows_canteen values('MU001','Y',32,48,'THANE',101);
Insert into icres_ows_canteen values('MU002','Y',22,52,'THANE',101);
Insert into icres_ows_canteen values('MU003','Y',15,20,'THANE',101);
Insert into icres_ows_canteen values('MU004','Y',28,32,'THANE',101);
Insert into icres_ows_canteen values('MU005','Y',10,39,'THANE',101);
Insert into icres_ows_canteen values('MU006','Y',03,41,'THANE',101);

-----------------------

Insert into icres_emp_company_transport values(1001,'TH001',now());
Insert into icres_emp_company_transport values(1002,'TH001',now());
Insert into icres_emp_company_transport values(1003,'TH001',now());
Insert into icres_emp_company_transport values(1004,'TH002',now());
Insert into icres_emp_company_transport values(1005,'TH002',now());
Insert into icres_emp_company_transport values(1006,'MU001',now());
Insert into icres_emp_company_transport values(1007,'MU001',now());
Insert into icres_emp_company_transport values(100,'MU001',now());
Insert into icres_emp_company_transport values(1009,'MU002',now());

