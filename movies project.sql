show databases;
use project;
show tables;
create table actor(act_id int, act_fname char(20), act_lname char(20), act_gender char(1), primary key(act_id));
insert into actor values(1,"Prabhu","Venkatesh","M"),(2,"Ranveer","Singh","M"),(3,"Shraddha","Kapoor","F");
insert into actor values(4,"Deepika","Padukon","F"),(5,"Varun","Dhavan","M"),(6,"Aliaa","Bhatt","F"),(7,"Ayushmann","Khurrana","M");
insert into actor values(8,"Aamir","Khan","M"),(9,"Shahrukh","Khan","M"),(10,"Kajal","Aggrawal","F"),(11,"Akshay","Kumar","M");
insert into actor values(12,"Samanth","Akkineni","F");
insert into actor values(13,"Ram","Charan","M"),(14,"N.T.","Rama Rao","M"),(15,"Allu","Arjun","M");
insert into actor values(16,"Prabhas","-","M"),(17,"Suriya","Sivakumar","M"),(18,"Mahesh","Babu","M");
insert into actor values(19,"Sidharth","Malhotra","M"),(20,"Kiara","Advani","F");
insert into actor values(21,"R","Madhavan","M"),(22,"Farhan","Akhtar","M"),(23,"Amitabh","Bachchan","M"),(24,"Aishwarya Rai","Bachchan","F"),(25,"Kareena","Kapoor","F"),(26,"Anushka","Sharma","F"),(27,"Kartik","Aaryan","M"),(28,"Sonu","Sood","M");
insert into actor values(29,"Hrithik","Roshan","M"),(30,"Vijay","Chandrasekhar","M");
insert into actor values(31,"Ajay","Devgan","M");
Select * from actor;

create table director(dir_id int, dir_fname char(20), dir_lname char(20), primary key(dir_id));
insert into director values(1,"Sanjay leela","Bhansali"),(2,"Rohit","Shetty"),(3,"Imtiaz","ali"),(4,"Ajay","Devgan"),(5,"Farah","khan"),(6,"Anurag","kashyap"),(7,"Bandreddi","Sukumar"),(8,"Ganesh","acharya"),(9,"Srisaila Sri","Rajamouli"),(10,"Shoojit","Sircar"),(11,"Siddharth","Anand"),(12,"Rajkumar","Hirani");
insert into director values(13,"T. J.","Gnanavel");
insert into director values(14,"Vishnu","vardhan"),(15,"Lokesh","Kanagaraj"),(16,"Abhishek","Pathak"),(17,"Om","Raut"),(18,"Ashutosh","Gowariker"),(19,"Raja Krishna","Menon"),(20,"Bejoy","Nambiar"),(21,"Michael","Bay"),(22,"R.","Madhavan");
insert into director values(23,"Rob","Cohen"),(24,"John","Singleton");
select * from director;

create table movie(mov_id int, mov_title char(50), mov_year int, mov_time int, mov_lang char(50), mov_dt_rel date, mov_rel_country char(5), primary key (mov_id));
insert into movie values(1,"Jai Bhim",2021,165,"Tamil","2021-11-02","India");
insert into movie values(2,"Shershaah",2021,135,"Hindi","2021-08-12","India"),(3,"Master",2021,181,"Telugu","2021-01-13","India"),(4,"Drishyam 2",2022,140,"Hindi","2022-11-18","India"),(5,"Tanhaji",2020,135,"Hindi","2020-01-10","India"),(6,"Pushpa",2021,179,"Telugu","2021-12-17","India"),(7,"Airlift",2016,125,"Hindi","2016-01-22","India"),(8,"Wazir",2016,104,"Hindi","2016-01-08","India"),(9,"Piku",2015,122,"Hindi","2015-05-08","India"),(10,"Transformers",2007,144,"English","2007-08-04","USA");
insert into movie values(11,"Pathaan",2023,146,"Hindi","2023-01-25","India"),(12,"Rocketry",2022,157,"Hindi","2022-07-01","India"),(13,"Chennai Express",2013,141,"Hindi","2013-08-08","India"),(14,"Sooryavanshi",2021,145,"Hindi","2021-11-05","Hindi"),(15,"Golmaal again",2017,140,"Hindi","2017-10-20","India"),(16,"RRR",2022,182,"Telugu","2022-05-24","India"),(17,"Gangubai Kathiawadi",2022,154,"Hindi","2022-02-25","India"),(18,"Fast and Furious 1",2001,106,"English","2001-06-22","USA"),(19,"Fast and Furious 2",2003,106,"English","2003-06-06","USA"),(20,"3 Idiots",2009,171,"Hindi","2009-12-25","India");
insert into movie values(21,"Goliyon Ki Raasleela Ram-Leela",2013,155,"Hindi","2013-11-15","India"),(22,"Singham",2011,142,"Hindi","2011-07-22","India"),(23,"Munna Bhai M.B.B.S.",2003,140,"Hindi","2003-12-19","India"),(24,"Jab We Met",2007,138,"Hindi","2007-10-26","India"),(25,"Bholaa",2023,143,"Hindi","2023-03-30","India"),(26,"Tees Maar Khan",2010,143,"Hindi","2010-12-24","India"),(27,"Return of Hanuman",2007,101,"Hindi","2007-12-28","India"),(28,"Money Hai Toh Honey Hai",2008,138,"Hindi","2008-07-25","India"),(29,"Baahubali",2015,158,"Telugu","2015-07-10","India");
insert into movie values(30,"Jodhaa Akbar",2008,213,"Hindi","2008-02-15","India");
select * from movie;

create table movie_direction(dir_id int, mov_id int,foreign key(dir_id) references director(dir_id), foreign key(mov_id) references movie(mov_id));
insert into movie_direction values(13,1),(14,2),(15,3),(16,4),(17,5),(7,6),(19,7),(20,8),(10,9),(21,10),(11,11),(22,12),(2,13),(2,14),(2,15),(9,16),(1,17),(23,18),(24,19),(12,20),(1,21),(2,22),(12,23),(3,24),(4,25),(5,26),(6,27),(8,28),(9,29),(18,30);
select * from movie_direction;

create table genres(gen_id int, gen_title char(20), primary key(gen_id));
insert into genres values(101,"Drama"),(102,"Romance"),(103,"Action"),(104,"Adventure"),(105,"Comedy"),(106,"Fantasy"),(107,"Science Friction"),(108,"Horror"),(109,"Musicals"),(110,"Mystery"),(111,"Sports"),(112,"Thriller"),(113,"Western"),(114,"Historical"),(115,"Crime");
select * from genres;

create table movie_genres(mov_id int, gen_id int, foreign key(mov_id) references movie(mov_id), foreign key(gen_id) references genres(gen_id));
insert into movie_genres values(1,110),(2,102),(3,103),(4,112),(5,114),(6,101),(7,112),(8,103),(9,105),(10,107),(11,103),(12,101),(13,102),(14,101),(15,105),(16,101),(17,115),(18,103),(19,103),(20,105),(21,102),(22,103),(23,103),(24,102),(25,104),(26,105),(27,104),(28,105),(29,106),(30,114);
select * from movie_genres;

create table reviewer(rev_id int, rev_name char(30), primary key(rev_id));
insert into reviewer values(1,"Mitesh Achirnekar"),(2,"Harsha Sapkal"),(3,"Mehzabin Mansuri"),(4,"Hardik"),(5,"Sumit"),(6,"Shubham"),(7,"Siddhesh"),(8,"Ganesh"),(9,"Suhas"),(10,"Meet");
select * from reviewer;

create table movie_cast(act_id int, mov_id int, role char(30), foreign key(act_id) references actor(act_id), foreign key(mov_id) references movie(mov_id));
insert into movie_cast values(17,1,"Adv Chandra"),(19,2,"Vikram Batra"),(20,2,"Dimple Cheema");
insert into movie_cast values(30,3,"John Durairaj"),(31,4,"Vijay Salgaonkar"),(31,5,"Tanaji Malusare"),(15,6,"Pushpa Raj"),(11,7,"Ranjit Katiyal"),(23,8,"Pandit Omkarnath"),(4,9,"Piku"),(23,9,"Bashkor Banerjee"),(9,11,"Pathaan"),(21,12,"Nambi Narayanan"),(9,13,"Rahul"),(4,13,"Meenamma Lochini"),(2,14,"Inspector Sangram Bhalerao"),(11,14,"Veer Sooryavanshi"),(31,15,"Gopal"),(14,16,"Komaram Bheem"),(13,16,"Alluri Sitarama Raju"),(6,16,"Sita"),(31,16,"Alluri Venkatarama"),(6,17,"Gangubai Kathiawadi"),(8,20,"Rancho"),(2,21,"Ram"),(4,21,"Lela"),(31,22,"Bajirao Singham"),(25,24,"Geet"),(31,25,"Bholaa"),(11,26,"Tabrez Mirza"),(16,29,"Amarendra Baahubali"),(29,30,"Jalaluddin Mohammad"),(24,30,"Maharani Jodha Bai");
select * from movie_cast;

create table rating(mov_id int, rev_id int, rev_stars int, num_o_ratings int,foreign key(mov_id) references movie(mov_id), foreign key(rev_id) references reviewer(rev_id));
insert into rating values(1,1,5,65693);
insert into rating values(2,10,5,48368),(3,5,4,26426),(4,2,3,8354),(5,1,4,1260),(6,4,3,55115),(7,8,4,287),(8,9,4,362),(9,2,5,540),(10,6,4,478),(11,7,3,96096),(12,1,5,10637),(13,5,4,737),(14,10,3,19181),(15,9,4,256),(16,4,4,95926),(17,3,4,18261),(18,8,4,451),(19,9,4,189),(20,3,5,6492),(21,9,4,318),(22,5,4,216),(23,7,5,491),(24,2,5,926),(25,7,0,0),(26,10,4,377),(27,4,5,220),(28,5,1,330),(29,6,5,3874),(30,1,4,562);

select * from rating;

select * from movie;
select * from reviewer;
Select * from actor;
select * from director;
select * from movie_direction;
select * from genres;
select * from movie_genres;
select * from movie_cast;
select * from rating;
