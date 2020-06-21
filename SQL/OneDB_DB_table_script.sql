CREATE TABLE hr_emp
(
emp_id	        varchar(20) NOT NULL,
emp_name	    varchar(50) NOT NULL,
doj	            timestamp   NOT NULL,
address1	    varchar(20) NOT NULL,
address2	    varchar(20),
zip_code	    varchar(20) NOT NULL,
phone_no	    varchar(20) NOT NULL,
blood_group	    varchar(10) NOT NULL,
country_id	    varchar(20) NOT NULL,
infection_prob  float,
PRIMARY KEY(EMP_id)
)ENGINE=INNODB;

insert into hr_emp values(1001,'Rajesh',curdate(),'Mumbai-3','Godrej Complex','400610','9899457000','A-positive','1020',10.5)

CREATE TABLE hr_emp_project
(
emp_id	            varchar(20) NOT NULL,
project_code	    varchar(20) NOT NULL,
project_name	    varchar(50) NOT NULL,
bu	                varchar(20) NOT NULL,
billability	        varchar(10),
project_start_date	date,
project_end_date	date
) ENGINE=INNODB;

ALTER TABLE hr_emp_project ADD constraint emp_project_emp_fk FOREIGN KEY(emp_id) REFERENCES hr_emp (emp_id);

CREATE TABLE icres_country_office
(
country_name	    varchar(20) NOT NULL,
city_name	        varchar(20) NOT NULL,
complex_id          varchar(20) NOT NULL,
complex_name	    varchar(20) NOT NULL,
PRIMARY KEY(complex_id)
) ENGINE=INNODB;

CREATE TABLE icres_ows_complex_gate
(
complex_id          varchar(20) NOT NULL,
complex_gate        varchar(20) NOT NULL,
emp_id              varchar(20) NOT NULL,
temperature	        float,
device_id	        integer,
time_in	            timestamp,
time_out	        timestamp
) ENGINE=INNODB;

ALTER TABLE icres_ows_complex_gate ADD constraint complex_gate_emp_fk FOREIGN KEY(emp_id) REFERENCES hr_emp(emp_id);

CREATE TABLE icres_ows_building_gate
(
building_id	        varchar(20) NOT NULL,
bulding_name	    varchar(20),
bulding_gate_id	    varchar(20),
emp_id              varchar(20) NOT NULL,
temperature	        float,
device_id	        integer,
time_in	            timestamp,
time_out	        timestamp,
PRIMARY KEY(bulding_gate_id,bulding_gate_id)
) ENGINE=INNODB;


CREATE TABLE icres_ows_lift	
(
lift_id	            varchar(20) NOT NULL,
building_id	        varchar(20) NOT NULL,
bulding_gate_id	    varchar(20) NOT NULL,
emp_id              varchar(20) NOT NULL,
time_in	            timestamp,
capacity	        integer,
distance_plan	    integer
) ENGINE=INNODB;

--ALTER TABLE icres_ows_lift ADD constraint lift_building_gate_fk FOREIGN KEY(bulding_gate_id) REFERENCES icres_ows_building_gate (bulding_gate_id);

CREATE TABLE icres_ows_canteen	
(
canteen_id	        varchar(20) NOT NULL,
gate_id	            varchar(20) NOT NULL,
canteen_name	    varchar(20),
building_id	        varchar(20) NOT NULL,
capacity	        integer,
distance_plan	    integer,
time_in	            timestamp,
time_out	        timestamp,
emp_id              varchar(20) NOT NULL
) ENGINE=INNODB;

ALTER TABLE canteen ADD constraint canteen_building_gate_fk FOREIGN KEY(building_id) REFERENCES icres_ows_building_gate(bulding_gate_id);

CREATE TABLE icres_ows_company_transport
(	
route_id	        varchar(20) NOT NULL,
transport_flag	    boolean,
capacity	        integer,
distance_plan	    integer,
city_name	        varchar(20) NOT NULL,
complex_id          varchar(20) NOT NULL,
PRIMARY KEY(route_id)
)ENGINE=INNODB;

ALTER TABLE icres_ows_company_transport ADD constraint d_cmp_tran_comp_fk FOREIGN KEY(complex_id) REFERENCES icres_country_office(complex_id);

CREATE TABLE icres_emp_company_transport	
(
emp_id	            varchar(20),
route_id	        varchar(20),
in_time             timestamp
)ENGINE=INNODB;

ALTER TABLE icres_emp_company_transport ADD constraint empcmp_tran_comp_fk FOREIGN KEY(route_id) REFERENCES icres_ows_company_transport(route_id);

ALTER TABLE icres_emp_company_transport DROP foreign key empcmp_tran_comp_fk ;

CREATE TABLE icres_namaste_app
(
emp_id	                        varchar(20),
travel_history	                boolean,
travel_outside_base_location	boolean,
travel_type	                    varchar(1),
country_name	                varchar(20),
suspected_case_contact	        boolean,
suspected_case_contact_date	    date,
travel_date_from	            date,
travel_date_to	                date,
trip_type	                    varchar(20),
transit_port	                varchar(25),
landing_port	                varchar(25),
pandemic_hotspot	            varchar(25),
fever	                        boolean,
running_nose	                boolean,
cough	                        boolean,
headache	                    boolean,
shortness_of_breath	            boolean,
sore_throat	                    boolean,
other	                        varchar(50)
) ENGINE=INNODB;

CREATE TABLE icres_emp_disaster_mgmt		
(		
emp_id	                    varchar(20),
first_name  	            varchar(20),
last_name	                varchar(20),
email	                    varchar(50),
supervior_email	            varchar(50),
mob_no	                    varchar(20),
alternate_no	            varchar(20),
country	                    varchar(20),
city	                    varchar(20),
grade	                    varchar(10),
sbu	                        varchar(10),
practice	                varchar(10),
sub_practice	            varchar(10),
billability	                varchar(10),
priority	                varchar(10),
billable_hours	            integer,
backup_emp_id	            varchar(20),
backup_emp_name	            varchar(30),
base_location	            varchar(20),
office_location	            varchar(20),
odc_name	                varchar(20),
seat_number	                varchar(20),
captive_city	            varchar(20),
aton_project_id	            varchar(20),
aton_building	            varchar(20),
aton_floor	                varchar(20),
cubicle_zone	            varchar(20)
) ENGINE=INNODB;

CREATE TABLE icres_health_details	
(
emp_id                      varchar(20),
covid_status	            varchar(10),
special_medical_condition	varchar(10),
if_yes_description_medical	varchar(50),
location_travel_from	    varchar(20),
return_date	                date,
quarantine_end_date	        date,
project_id	                varchar(20),
project_name	            varchar(20),
client_name	                varchar(20),
account	                    varchar(10),
bu	                        varchar(10),
mu	                        varchar(10),
pmo_email	                varchar(50),
amo_email	                varchar(50),
billability	                varchar(10),
priority	                varchar(10),
billable_hours	            integer,
backup_emp_id	            varchar(20),
backup_emp_name	            varchar(50),
client_communication	    varchar(20),
client_aggrement_for_wfh	varchar(20),
wfh_guidelines_issued	    varchar(3),
wfh_consent_form_signed	    varchar(3),
wfh_permitted	            varchar(3),
start_date	                date,
end_date	                date,
work_status	                varchar(20),
hardware_type	            varchar(20),
byod_approved	            varchar(3),
home_pincode	            varchar(10),
cpu_serial_no	            varchar(20),
monitor_serial_no	        varchar(20),
laptop_serial_no	        varchar(20),
headset_serial_no	        varchar(20),
mob_pass	                varchar(3),
outlook	                    varchar(3),
skype_business	            varchar(3),
cisco_vpn	                varchar(3),
capgemini_network	        varchar(3),
if_yes_challanges	        varchar(3),
client_network	            varchar(3),
if_yes_challanges_client	varchar(3),
b2o_wave                    varchar(10),
b2o_desktop	                varchar(3),
b2o_employee_communication	varchar(3),
commute_mode	            varchar(20),
vehicle_number	            varchar(10),
commute_required	        varchar(10),
if_yes_description	        varchar(10)
) ENGINE=INNODB;

------------------------


ALTER TABLE d_gate DROP foreign key f_gate_d_office_fk ;
ALTER TABLE d_lift DROP foreign key f_lift_d_gate_fk;
ALTER TABLE d_lift drop foreign key f_lift_d_office_fk;
ALTER TABLE d_canteen drop foreign key d_canteen_d_office_fk;

drop table d_gate
drop table d_canteen
drop table d_complex
drop table 


CREATE TABLE emp_gate
(
emp_id	        varchar(20),
gate_id	        varchar(20),
route_id	    varchar(20),
in_time	        timestamp,
out_time	    timestamp,
temperature	    float
);

