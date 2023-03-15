/* Query run at 2023-03-13 15:37:38 
 *    DB   : 
 */
CREATE DATABASE joatansampaio_project;

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:41:58 
 *    DB   : joatansampaio_project
 */
CREATE TABLE customer(
    id  int NOT NULL auto_increment PRIMARY KEY,
    name varchar(255),
    address varchar(255),
    email varchar(255),
    phone varchar(10)
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:44:19 
 *    DB   : joatansampaio_project
 */
CREATE TABLE employee(
    id int NOT NULL auto_increment PRIMARY KEY,
    position_id int NOT NULL,
    name varchar(255),
    address varchar(255),
    phone varchar(10),
    salary decimal
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:44:42 
 *    DB   : joatansampaio_project
 */
CREATE TABLE `position`(
id int NOT NULL auto_increment PRIMARY KEY,
title varchar(255),
description varchar(255)
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:45:10 
 *    DB   : joatansampaio_project
 */
CREATE TABLE sale(
id int NOT NULL auto_increment PRIMARY KEY,
customer_id int NOT NULL,
employee_id int NOT NULL,
sale_date datetime,
grand_total decimal
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:45:29 
 *    DB   : joatansampaio_project
 */
CREATE TABLE `transaction`(
id int NOT NULL auto_increment PRIMARY KEY,
sale_id int NOT NULL, 
game_copy_id int NOT NULL,
transaction_date datetime,
total decimal,
payment_method ENUM('credit card', 'cash', 'check')
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:45:57 
 *    DB   : joatansampaio_project
 */
CREATE TABLE return_transaction(
id int NOT NULL auto_increment PRIMARY KEY, 
transaction_id int NOT NULL,
return_date datetime,
reason varchar(255),
refund_amount decimal,
refund_date datetime, 
refund_method ENUM('credit card', 'cash', 'check')
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:46:07 
 *    DB   : joatansampaio_project
 */
CREATE TABLE game_copy(
id int NOT NULL auto_increment PRIMARY KEY, 
game_id int NOT NULL,
game_condition ENUM('new', 'used', 'sold'),
price decimal
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:46:14 
 *    DB   : joatansampaio_project
 */
CREATE TABLE game(
id int NOT NULL auto_increment PRIMARY KEY,
publisher_id int NOT NULL,
title varchar(80),
genre varchar(50),
rating varchar(40),
description varchar(255),
stock_count int,
rec_price_new decimal,
rec_price_used decimal
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:46:27 
 *    DB   : joatansampaio_project
 */
CREATE TABLE publisher(
id int NOT NULL auto_increment PRIMARY KEY, 
name varchar(255)
);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:46:39 
 *    DB   : joatansampaio_project
 */
SHOW TABLES;

/* QUERY RESULTS 
+---------------------------------+
| Tables_in_joatansampaio_project |
+---------------------------------+
| customer                        |
+---------------------------------+
| employee                        |
+---------------------------------+
| game                            |
+---------------------------------+
| game_copy                       |
+---------------------------------+
| position                        |
+---------------------------------+
| publisher                       |
+---------------------------------+
| return_transaction              |
+---------------------------------+
| sale                            |
+---------------------------------+
| transaction                     |
+---------------------------------+
Row Count: 9
*/

/* ================================= */

/* Query run at 2023-03-13 15:47:25 
 *    DB   : joatansampaio_project
 */
ALTER TABLE sale 
ADD CONSTRAINT 
FOREIGN KEY (customer_id) 
REFERENCES customer(id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:48:01 
 *    DB   : joatansampaio_project
 */
ALTER TABLE sale 
ADD CONSTRAINT 
FOREIGN KEY (employee_id) 
REFERENCES employee (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:48:23 
 *    DB   : joatansampaio_project
 */
ALTER TABLE employee 
ADD CONSTRAINT 
FOREIGN KEY (position_id) 
REFERENCES `position` (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:48:48 
 *    DB   : joatansampaio_project
 */
ALTER TABLE `transaction` 
ADD CONSTRAINT 
FOREIGN KEY (sale_id) 
REFERENCES sale (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:49:10 
 *    DB   : joatansampaio_project
 */
ALTER TABLE `transaction` 
ADD CONSTRAINT 
FOREIGN KEY (game_copy_id) 
REFERENCES game_copy (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:49:26 
 *    DB   : joatansampaio_project
 */
ALTER TABLE game_copy 
ADD CONSTRAINT 
FOREIGN KEY (game_id) 
REFERENCES game (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:49:42 
 *    DB   : joatansampaio_project
 */
ALTER TABLE game 
ADD CONSTRAINT 
FOREIGN KEY (publisher_id) 
REFERENCES publisher (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:50:04 
 *    DB   : joatansampaio_project
 */
ALTER TABLE return_transaction 
ADD CONSTRAINT 
FOREIGN KEY (transaction_id) 
REFERENCES transaction (id);

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 15:52:16 
 *    DB   : joatansampaio_project
 */
insert into customer (name, address, email, phone) values ('Kellen Paylie', '567 Badeau Hill', 'kpaylie0@miitbeian.gov.cn', '3442634609');
insert into customer (name, address, email, phone) values ('Pen Fandrich', '46736 Mallard Junction', 'pfandrich2@wordpress.com', '5913153798');
insert into customer (name, address, email, phone) values ('Maris Woodyatt', '6094 Moland Parkway', 'mwoodyatt3@youku.com', '3203693187');
insert into customer (name, address, email, phone) values ('Ignacius Noe', '1051 Hoepker Park', 'inoe4@accuweather.com', '8091478127');
insert into customer (name, address, email, phone) values ('Ax Ramplee', '3236 Little Fleur Crossing', 'aramplee5@dedecms.com', '4897337391');
insert into customer (name, address, email, phone) values ('Phip Charman', '41629 Myrtle Plaza', 'pcharman6@netscape.com', '4149905859');;

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 16:00:24 
 *    DB   : joatansampaio_project
 */
insert into position (title, description) values ('Sales representative', 'Takes care of the cashier and answering questions of customers');
insert into position (title, description) values ('Senior Developer', 'Maintains the front-end, back-end and database.');
insert into position (title, description) values ('General Manager', 'Controls the company as a whole, takes care of all operations.');
insert into position (title, description) values ('Director of Sales', 'Director of Sales');;

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 16:03:17 
 *    DB   : joatansampaio_project
 */
insert into publisher (name) values ('Brainverse Games');
insert into publisher (name) values ('Divanoodle Games');
insert into publisher (name) values ('Dabvine Entertainment');
insert into publisher (name) values ('Topiczoom Creativity');;

/* Non-Returning Query Executed */

/* ================================= */ 

/* Query run at 2023-03-13 16:12:14 
 *    DB   : joatansampaio_project
 */
insert into game (publisher_id, title, genre, rating, description, stock_count, rec_price_new, rec_price_used) values (4, 'Soul of the Ultimate Nation', 'RPG', 'Everyone 10+', 'Just another description', 1, '58.11', '40.93');
insert into game (publisher_id, title, genre, rating, description, stock_count, rec_price_new, rec_price_used) values (1, 'World of Warcraft', 'Action', 'Everyone 10+', 'Very fun', 1, '57.88', '33.38');
insert into game (publisher_id, title, genre, rating, description, stock_count, rec_price_new, rec_price_used) values (3, 'Halo 5', 'FPS', 'Adults Only', 'Really good.', 2, '52.71', '40.78');
insert into game (publisher_id, title, genre, rating, description, stock_count, rec_price_new, rec_price_used) values (2, 'League of legends', 'MOBA', 'Mature 17+', 'Very good', 2, '53.05', '32.31');;

/* Non-Returning Query Executed */

/* ================================= */

/* Query run at 2023-03-13 16:15:16 
 *    DB   : joatansampaio_project
 */
insert into game_copy (game_id, game_condition, price) values (1, 'new', 58);
insert into game_copy (game_id, game_condition, price) values (2, 'used', 35);
insert into game_copy (game_id, game_condition, price) values (3, 'new', 50);
insert into game_copy (game_id, game_condition, price) values (3, 'new', 50);
insert into game_copy (game_id, game_condition, price) values (4, 'new', 60);
insert into game_copy (game_id, game_condition, price) values (4, 'used', 40);

/* Execution Failed */

/* ================================= */ 


