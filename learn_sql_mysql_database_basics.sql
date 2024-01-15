# How to create a database
create database my_first_database;
create database my_second_database;

# How to show all created databases 
show databases;

# How to use a database
use my_first_database;

# How to create a table
create table person(
id int, 
first_name varchar(20),
last_name varchar(20)
);

# How to show all created tables
show tables;

# How to see the structure of desired table
select * from person;

# Swapping to use second database
use my_second_database;

# Creating a new table in the second database
create table car(
id int,
brand varchar(20),
model varchar(20)
);

# How to see the structure of car
select * from car;

### Exercise 1 ###
# 1. Create the homework1 database and work inside it 
# 2. Create the product table to store products. There should be 
#    columns for a numeric type id, a name and a double type
#    price XX.YZ
# 3. Create a people table to store peoples. There should be 
#    columns for a numeric type id, a name, a phone number, a 
#    date of birth and a height 
# 4. Create a computer table to store computers. There should be 
#    columns for brand, ram memory, processor and a price

# Creating a new database called homework1
create database homework1;

# Using this new database
use homework1; 

# Creating a table called product
create table product(
id int, 
customer_name varchar(20),
price decimal(4,2)
);

# Creating a table called people
create table people(
id int, 
customer_name varchar(20),
phone_number varchar(10),
date_of_birth date,
height decimal(3,2)
);

# Creating a table called computer
create table computer(
brand varchar(20),
ram_memory varchar(4),
processor varchar(20),
price decimal(4,2)
); 

# Viewing all 3 created tables
show tables;

### Changing the structure of tables ###

# Here is the command to delete a table
drop table people;

# Note: After highlighting code, you can press ctrl+shift+enter
# to execute the script rather than having to press the 
# lightning bolt

# Adding a new column to a table
alter table people add new_column decimal(3,2); 

# Viewing this
select * from people;

# Removing a column from a table
alter table people drop column new_column;

### Exercise 2 ###
# 1. Create the homework2 database and work inside it 
# 2. Create the product table to store products. There should be 
#    columns for a numeric type id, a name and a double type
#    price XX.YZ. Delete the price column.
# 3. Create a people table to store peoples. There should be 
#    columns for a numeric type id, a name, a phone number, a 
#    date of birth and a height. Add a column representing the 
#    person's gender (M or F) and a column for the person's IQ
# 4. Create a computer table to store computers. There should be 
#    columns for brand, ram memory, processor and a price. Delete
#    the ram memory and processor columns and add the columns 
#    colour and description

# Creating a new database called homework1
create database homework2;

# Using this new database
use homework2; 

# Creating a table called product
create table product(
id int, 
customer_name varchar(20),
price decimal(4,2)
);

# Deleting the price column
alter table product drop column price; 

# Creating a table called people
create table people(
id int, 
customer_name varchar(20),
phone_number varchar(10),
date_of_birth date,
height decimal(3,2)
);

# Adding columns to represent gender and IQ
alter table people add gender varchar(1);
alter table people add IQ int;

# Creating a table called computer
create table computer(
brand varchar(20),
ram_memory varchar(4),
processor varchar(20),
price decimal(4,2)
); 

# Deleting the ram memory and processor columns and adding the 
# columns colour and description
alter table computer drop column ram_memory; 
alter table computer drop column processor; 
alter table computer add colour varchar(20);
alter table computer add computer_description varchar(20);

### Inserting data into tables ###

# Creating a new database
create database everton_squad; 

# Using this new database
use everton_squad;

# Creating a table
create table efc(
id int, 
first_name varchar(20),
last_name varchar(20), 
annual_salary int,
squad_position varchar(3)
); 

# Renaming a column
alter table efc rename column annual_salary to weekly_salary;

# Viewing the efc table
select * from efc;

# Adding an entry
insert into efc values(1,'Jordan','Pickford', 125000, 'GK');
insert into efc values(2,'Nathan','Patterson', 39000, 'RB');

# Viewing the efc table
select * from efc;

# Adding an entry where some values are unknown
insert into efc(id, first_name, last_name, squad_position) values (5, 'Michael', 'Keane', 'CB');

# Viewing the efc table
select * from efc;

### Reading Data ###

# We can make more restricted searches within tables. Let's search for
# only the first and last names and the position of the players
select first_name, last_name, squad_position from efc;

### Filtering Data ###

# We can filter the data by looking for certain values in particular 
# columns. Let's look for all players with the name Nathan
select * from efc where first_name='Nathan';

# Filtering all players with weekly wages over £100,000
select * from efc where weekly_salary>100000;

### Modifying Data ###

# We can update the data. Let's update the data each player earns the same
# weekly wage of £60,000
update efc set weekly_salary=60000;

# Let's increase Jordan Pickford's weekly salary as he is a more important
# player for the squad

update efc set weekly_salary=100000 where id=1;

### Deleting Data ###

# How to delete all entries in the efc table
delete from efc;

# How to delete only certain entries from the table
delete from efc where id=5;

# How to delete absolutely all the data from the table but not the table 
# itself
truncate efc;

  


