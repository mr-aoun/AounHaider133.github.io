create database RestaurantManagementSystem
use RestaurantManagementSystem
drop database RestaurantManagementSystem

drop database RestaurantManagementSystem
---CUSTOMER TABLE---
drop table Customers

create table Customers(
	Customer_ID int not null primary key identity(1,1),
	FirstName varchar(20),
	LastName varchar(20) not null,
	ContactNumber varchar(11)
	) 

Insert into Customers values
('Rana','Sobaan',03007867001), 
('Hamza','Sikandar',03007896541),
('Ahmad','Raza',0300786711),
('Ali','Butt',03077967001),
('Khalid','Rehman',0300786984),
('Bilal','Ali',03055567001),
('Hussain','Shahid',03008888001),
('Adnan','Jutt',03089561001),
('Umair','Shahid',03007800001),
('Muhammad','Shahid',03007800001),
('Rana','Hamza',03017867001),
('Rana','Abid',03027867001),
('Abid','Sobaan',03008867001),
('Ayesha','Sobaan',03009867001),
('Rida','karim',03007868001),
('Eesha','Shafqat',03006867001),
('Usman','Butt',03007867301),
('Aliyan','Ali',03007867201),
('Momin','Shaukat',03047867001),
('Umaid','Asim',03027866001),
('Talha','Jaffer',03007864001),
('Hassnain','Abdurrehman',03003867001),
('Maha','Saeed',03007867005),
('Uzair','Farooqi',03007867009),
('Ambreen','Ilyas',03007867002),
('Rida','Kazmi',03007867003),
('Saif','Ahmed',03007861001),
('Syed Ahmed','Razaq',03002867501),
('Alisha','Naeem',03007867561),
('Bilal','Masood',03007867071),
('Arbaz','Butt',03007867081),
('Alryan','Masood',03007867091),
('Faisal','Riaz',03007867007),
('Mahnoor','Arshad',03007867001),
('Maha','Zainab',03007867001),
('Hooria','Kulsoom',03007867001),
('Mustafa','Hameed',03007867001),
('Hassan','TariQ',03007867001),
('Faizan','Raza',03007867001),
('Fariha','Rizwan',03007867001),
('Muhammad','Hafeez',03007867001),
('Mohammad','Amir',03007867001),
('Amir','Qayyum',03007867008),
('Awais','Murtaza',03007867009),
('Mohammad','Younas',03007867001),
('Saeed','Ajmal',03001867001),
('Azhar','Ali',03005867001),
('Fawad','Alam',03006867001),
('Shahid','Afridi',03007861001),
('Atif','Aslam',03237867001),
('Asim','Azhar',03247867001),
('Hania','Amir',03217867001),
('Sanam','Saeed',03127867001),
('Fawad','Khan',03107867001),
('Maya','Ali',03267867001),
('Ali','Zafar',03003867001),
('Mahira','Khan',03004867001),
('Saba','Qamar',03001967001),
('Javaid','Sheikh',03006347001),
('Imran','Khan',03007862891)
insert into Customers (FirstName, LastName, ContactNumber) values ('Rehama', 'Khan', '+82 (267) 672-4290');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ali', 'Khayal', '+1 (502) 971-8956');
insert into Customers (FirstName, LastName, ContactNumber) values ('Livvyy', 'Piddick', '+82 (267) 672-4290');
insert into Customers (FirstName, LastName, ContactNumber) values ('Culver', 'Brookwood', '+1 (502) 971-8956');
insert into Customers (FirstName, LastName, ContactNumber) values ('Solomon', 'Wessel', '+62 (453) 217-1058');
insert into Customers (FirstName, LastName, ContactNumber) values ('Angelle', 'Trodler', '+237 (731) 395-5750');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dyna', 'Werlock', '+595 (406) 314-5135');
insert into Customers (FirstName, LastName, ContactNumber) values ('Xaviera', 'Beasant', '+46 (143) 806-7939');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sybilla', 'Heinritz', '+51 (801) 702-9156');
insert into Customers (FirstName, LastName, ContactNumber) values ('Else', 'Devereux', '+62 (545) 784-1366');
insert into Customers (FirstName, LastName, ContactNumber) values ('Illa', 'Sacker', '+93 (276) 136-2626');
insert into Customers (FirstName, LastName, ContactNumber) values ('Conrado', 'Henzer', '+7 (255) 314-4734');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maddi', 'McCathie', '+63 (467) 205-6023');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jere', 'McVity', '+86 (342) 362-1972');
insert into Customers (FirstName, LastName, ContactNumber) values ('Tybalt', 'Belchem', '+1 (206) 339-9727');
insert into Customers (FirstName, LastName, ContactNumber) values ('Chelsea', 'Warsap', '+48 (825) 779-6184');
insert into Customers (FirstName, LastName, ContactNumber) values ('Janela', 'Stille', '+7 (590) 343-4802');
insert into Customers (FirstName, LastName, ContactNumber) values ('Shaylah', 'Petyanin', '+7 (884) 580-5999');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lissy', 'Charrett', '+57 (216) 562-2438');
insert into Customers (FirstName, LastName, ContactNumber) values ('Brendan', 'Teaz', '+33 (112) 754-8457');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nevil', 'Legon', '+254 (948) 660-8058');
insert into Customers (FirstName, LastName, ContactNumber) values ('Athena', 'Cholton', '+63 (504) 466-1322');
insert into Customers (FirstName, LastName, ContactNumber) values ('Manya', 'Geldert', '+86 (662) 643-6477');
insert into Customers (FirstName, LastName, ContactNumber) values ('Carey', 'Shorie', '+351 (151) 860-1402');
insert into Customers (FirstName, LastName, ContactNumber) values ('Reidar', 'Ludewig', '+244 (632) 833-9838');
insert into Customers (FirstName, LastName, ContactNumber) values ('Frannie', 'Birds', '+33 (543) 224-7888');
insert into Customers (FirstName, LastName, ContactNumber) values ('Peg', 'Sealove', '+86 (545) 675-1587');
insert into Customers (FirstName, LastName, ContactNumber) values ('Luigi', 'Siemens', '+86 (861) 751-3813');
insert into Customers (FirstName, LastName, ContactNumber) values ('Inna', 'Hastelow', '+49 (912) 429-0729');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kendra', 'Antoniutti', '+86 (290) 714-1372');
insert into Customers (FirstName, LastName, ContactNumber) values ('Yves', 'Simnor', '+86 (444) 289-2655');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cecil', 'Momery', '+62 (880) 554-1068');
insert into Customers (FirstName, LastName, ContactNumber) values ('Corinne', 'Gonning', '+504 (997) 863-1204');
insert into Customers (FirstName, LastName, ContactNumber) values ('Violante', 'Steger', '+55 (944) 771-5975');
insert into Customers (FirstName, LastName, ContactNumber) values ('Yettie', 'Coltan', '+86 (778) 762-9667');
insert into Customers (FirstName, LastName, ContactNumber) values ('Griff', 'Presser', '+30 (764) 980-2661');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jayme', 'Bullough', '+86 (358) 226-1435');
insert into Customers (FirstName, LastName, ContactNumber) values ('Andree', 'Elcox', '+54 (709) 503-7477');
insert into Customers (FirstName, LastName, ContactNumber) values ('Devora', 'Gall', '+7 (752) 597-9269');
insert into Customers (FirstName, LastName, ContactNumber) values ('Perkin', 'Tague', '+46 (607) 774-1551');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rollin', 'Kenner', '+46 (422) 751-7553');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cece', 'Titt', '+7 (216) 174-4501');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sayres', 'Thorogood', '+33 (907) 115-8280');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lani', 'Espinay', '+355 (720) 580-4977');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sheilakathryn', 'Cramb', '+52 (942) 189-7454');
insert into Customers (FirstName, LastName, ContactNumber) values ('Corena', 'Hacker', '+55 (138) 823-8795');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kimmie', 'Olexa', '+1 (847) 967-2178');
insert into Customers (FirstName, LastName, ContactNumber) values ('Benjamin', 'Mayo', '+420 (549) 644-4472');
insert into Customers (FirstName, LastName, ContactNumber) values ('Arleta', 'Dominiak', '+84 (106) 247-4623');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eugenia', 'Blitzer', '+86 (371) 209-7579');
insert into Customers (FirstName, LastName, ContactNumber) values ('Arley', 'Boissier', '+7 (201) 292-6232');
insert into Customers (FirstName, LastName, ContactNumber) values ('Laina', 'Ovens', '+93 (425) 165-4008');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cleopatra', 'Dossantos', '+358 (924) 515-7176');
insert into Customers (FirstName, LastName, ContactNumber) values ('Abran', 'Bleyman', '+48 (666) 783-9203');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fernanda', 'Lucock', '+7 (853) 948-0066');
insert into Customers (FirstName, LastName, ContactNumber) values ('Wendye', 'Warrilow', '+51 (148) 993-5362');
insert into Customers (FirstName, LastName, ContactNumber) values ('Thelma', 'Dennert', '+381 (228) 303-5402');
insert into Customers (FirstName, LastName, ContactNumber) values ('Arnold', 'Toderini', '+62 (867) 125-1274');
insert into Customers (FirstName, LastName, ContactNumber) values ('Adan', 'Dyzart', '+86 (574) 407-9220');
insert into Customers (FirstName, LastName, ContactNumber) values ('Constantin', 'Couch', '+7 (149) 609-5492');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eolanda', 'Strong', '+355 (624) 621-2989');
insert into Customers (FirstName, LastName, ContactNumber) values ('Emalee', 'Hiers', '+1 (260) 103-2638');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jeffy', 'Etter', '+234 (652) 209-5830');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maurise', 'Antonellini', '+267 (814) 933-0937');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bjorn', 'Passo', '+57 (197) 585-7325');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ruthe', 'Earengey', '+55 (541) 360-9896');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mandy', 'Herley', '+977 (159) 123-3207');
insert into Customers (FirstName, LastName, ContactNumber) values ('Modestine', 'Husby', '+673 (914) 408-1921');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nadine', 'Watmough', '+374 (106) 789-4959');
insert into Customers (FirstName, LastName, ContactNumber) values ('Florry', 'Biggar', '+51 (625) 733-1048');
insert into Customers (FirstName, LastName, ContactNumber) values ('Idaline', 'Karpman', '+86 (703) 594-9641');
insert into Customers (FirstName, LastName, ContactNumber) values ('Darla', 'Garken', '+256 (151) 487-7271');
insert into Customers (FirstName, LastName, ContactNumber) values ('Antin', 'Graith', '+380 (820) 389-7757');
insert into Customers (FirstName, LastName, ContactNumber) values ('Walker', 'Ferney', '+48 (524) 766-1571');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lucienne', 'Preshaw', '+94 (878) 757-1123');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mohandas', 'Reeme', '+86 (157) 826-9949');
insert into Customers (FirstName, LastName, ContactNumber) values ('Noland', 'McAnulty', '+229 (314) 942-6325');
insert into Customers (FirstName, LastName, ContactNumber) values ('Roxanne', 'Olivo', '+351 (170) 484-8524');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fenelia', 'Lamey', '+63 (419) 990-2941');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rheba', 'Lanchbery', '+58 (590) 926-3228');
insert into Customers (FirstName, LastName, ContactNumber) values ('Averill', 'Laughlan', '+86 (274) 690-3576');
insert into Customers (FirstName, LastName, ContactNumber) values ('Garey', 'Shatliffe', '+7 (806) 772-1320');
insert into Customers (FirstName, LastName, ContactNumber) values ('Toni', 'Ruggen', '+1 (887) 472-8913');
insert into Customers (FirstName, LastName, ContactNumber) values ('Natala', 'Snedker', '+51 (142) 902-5423');
insert into Customers (FirstName, LastName, ContactNumber) values ('Erwin', 'Gyrgorwicx', '+967 (902) 886-6374');
insert into Customers (FirstName, LastName, ContactNumber) values ('Reggi', 'O''Cassidy', '+86 (827) 941-8822');
insert into Customers (FirstName, LastName, ContactNumber) values ('Vinny', 'Leneham', '+34 (251) 523-8894');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jerad', 'Sinnock', '+1 (253) 485-1836');
insert into Customers (FirstName, LastName, ContactNumber) values ('Brennan', 'Foley', '+86 (272) 294-3211');
insert into Customers (FirstName, LastName, ContactNumber) values ('Viviene', 'Bineham', '+86 (507) 821-6363');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lorri', 'L'' Estrange', '+227 (771) 100-0167');
insert into Customers (FirstName, LastName, ContactNumber) values ('Roda', 'Bangs', '+46 (430) 698-7990');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marielle', 'Jiras', '+30 (669) 914-1046');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rivy', 'Wyper', '+386 (492) 375-5569');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rufe', 'Geri', '+63 (397) 794-2559');
insert into Customers (FirstName, LastName, ContactNumber) values ('Libby', 'Arnoult', '+34 (476) 138-8584');
insert into Customers (FirstName, LastName, ContactNumber) values ('Trueman', 'Fawcitt', '+1 (504) 258-1028');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lucais', 'Pietz', '+86 (607) 187-9429');
insert into Customers (FirstName, LastName, ContactNumber) values ('Raffaello', 'Maine', '+86 (165) 221-4956');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kelsey', 'Osgar', '+7 (309) 495-2486');
insert into Customers (FirstName, LastName, ContactNumber) values ('Leese', 'Farahar', '+33 (131) 163-9510');
insert into Customers (FirstName, LastName, ContactNumber) values ('Krystalle', 'Costan', '+7 (920) 825-0109');
insert into Customers (FirstName, LastName, ContactNumber) values ('Broderick', 'Hutchinges', '+355 (312) 452-4923');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ainslie', 'Jouanot', '+57 (577) 102-5104');
insert into Customers (FirstName, LastName, ContactNumber) values ('Alair', 'Mallaby', '+86 (193) 227-2321');
insert into Customers (FirstName, LastName, ContactNumber) values ('Carissa', 'Clout', '+1 (561) 272-3400');
insert into Customers (FirstName, LastName, ContactNumber) values ('Darya', 'Curphey', '+7 (272) 775-6598');
insert into Customers (FirstName, LastName, ContactNumber) values ('Pauli', 'Howton', '+57 (795) 847-3899');
insert into Customers (FirstName, LastName, ContactNumber) values ('Andreas', 'Moizer', '+234 (431) 905-1964');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mychal', 'Lowne', '+86 (780) 845-2615');
insert into Customers (FirstName, LastName, ContactNumber) values ('Shantee', 'Pease', '+1 (614) 736-5940');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dory', 'Wrout', '+7 (214) 356-7888');
insert into Customers (FirstName, LastName, ContactNumber) values ('Prudence', 'Tiernan', '+86 (568) 626-4725');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maurita', 'Karle', '+86 (388) 917-3289');
insert into Customers (FirstName, LastName, ContactNumber) values ('Beverlie', 'Keeler', '+60 (444) 177-2660');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gerda', 'Drysdell', '+46 (466) 626-4292');
insert into Customers (FirstName, LastName, ContactNumber) values ('Robinia', 'Dunster', '+86 (226) 582-2318');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fianna', 'Dougary', '+86 (979) 365-7644');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lynn', 'Affron', '+254 (560) 973-2364');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eliza', 'Orae', '+351 (672) 886-8553');
insert into Customers (FirstName, LastName, ContactNumber) values ('Flory', 'Peteri', '+216 (773) 230-3741');
insert into Customers (FirstName, LastName, ContactNumber) values ('Teddy', 'Dresser', '+86 (878) 481-2422');
insert into Customers (FirstName, LastName, ContactNumber) values ('Somerset', 'McAusland', '+86 (440) 440-9585');
insert into Customers (FirstName, LastName, ContactNumber) values ('Felicdad', 'Insworth', '+63 (153) 827-7503');
insert into Customers (FirstName, LastName, ContactNumber) values ('Andrej', 'Ferrers', '+212 (782) 132-7251');
insert into Customers (FirstName, LastName, ContactNumber) values ('Carmella', 'Vakhrushin', '+7 (866) 543-3993');
insert into Customers (FirstName, LastName, ContactNumber) values ('Pandora', 'Hedylstone', '+57 (278) 169-0661');
insert into Customers (FirstName, LastName, ContactNumber) values ('Biddie', 'Cowherd', '+62 (531) 923-4028');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kelsy', 'Gerring', '+1 (757) 741-8415');
insert into Customers (FirstName, LastName, ContactNumber) values ('Timmy', 'Macguire', '+30 (743) 881-9911');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mendel', 'Ratchford', '+212 (229) 718-2109');
insert into Customers (FirstName, LastName, ContactNumber) values ('Reynold', 'Stanbrooke', '+86 (197) 680-7511');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kent', 'Pemble', '+33 (370) 413-0569');
insert into Customers (FirstName, LastName, ContactNumber) values ('Berget', 'Cicconettii', '+880 (386) 552-0228');
insert into Customers (FirstName, LastName, ContactNumber) values ('Roldan', 'Girardet', '+244 (812) 150-2443');
insert into Customers (FirstName, LastName, ContactNumber) values ('Barbara-anne', 'Colquete', '+62 (695) 700-3153');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nathalia', 'Sutherland', '+387 (407) 493-4891');
insert into Customers (FirstName, LastName, ContactNumber) values ('Vale', 'Crosetti', '+94 (357) 952-7760');
insert into Customers (FirstName, LastName, ContactNumber) values ('Basile', 'Debold', '+86 (738) 635-6529');
insert into Customers (FirstName, LastName, ContactNumber) values ('Vivienne', 'Bedborough', '+63 (283) 473-1591');
insert into Customers (FirstName, LastName, ContactNumber) values ('Abraham', 'Gully', '+86 (577) 597-7706');
insert into Customers (FirstName, LastName, ContactNumber) values ('Thorny', 'Biasioli', '+63 (963) 406-3873');
insert into Customers (FirstName, LastName, ContactNumber) values ('Coralie', 'Staining', '+7 (891) 913-3000');
insert into Customers (FirstName, LastName, ContactNumber) values ('Beatrisa', 'Gush', '+49 (115) 657-4470');
insert into Customers (FirstName, LastName, ContactNumber) values ('Izak', 'MacKay', '+86 (927) 758-6607');
insert into Customers (FirstName, LastName, ContactNumber) values ('Odo', 'Rosettini', '+86 (935) 455-3949');
insert into Customers (FirstName, LastName, ContactNumber) values ('Wyndham', 'Wishkar', '+64 (915) 137-2204');
insert into Customers (FirstName, LastName, ContactNumber) values ('Clifford', 'Cavee', '+30 (586) 183-9068');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kennith', 'Frascone', '+381 (975) 805-3933');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marris', 'Traise', '+62 (252) 635-8688');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rogerio', 'Stannard', '+62 (988) 227-1948');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sorcha', 'Braywood', '+86 (914) 782-5676');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maribelle', 'Segot', '+46 (752) 721-6674');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ardenia', 'Wingrove', '+94 (418) 282-8386');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sidnee', 'Netherclift', '+63 (460) 474-7994');
insert into Customers (FirstName, LastName, ContactNumber) values ('Evita', 'Tire', '+1 (291) 772-0806');
insert into Customers (FirstName, LastName, ContactNumber) values ('Alexander', 'Pothecary', '+30 (884) 809-5679');
insert into Customers (FirstName, LastName, ContactNumber) values ('Katherina', 'Hush', '+52 (929) 912-0829');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marwin', 'Vittet', '+63 (733) 452-9128');
insert into Customers (FirstName, LastName, ContactNumber) values ('Angelo', 'Chipchase', '+963 (743) 451-1152');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jori', 'Youngman', '+62 (525) 441-9561');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cristine', 'Harrop', '+64 (862) 678-0722');
insert into Customers (FirstName, LastName, ContactNumber) values ('Henrik', 'Trytsman', '+55 (478) 565-4553');
insert into Customers (FirstName, LastName, ContactNumber) values ('Verney', 'Twentyman', '+212 (349) 837-0619');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marven', 'Curcher', '+55 (557) 486-3116');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marie', 'Lecount', '+86 (128) 454-5283');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kelly', 'Orgee', '+351 (857) 207-1561');
insert into Customers (FirstName, LastName, ContactNumber) values ('Byram', 'Whayman', '+222 (843) 295-3032');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ev', 'Nolli', '+385 (830) 583-2812');
insert into Customers (FirstName, LastName, ContactNumber) values ('Crissy', 'Tungate', '+63 (324) 173-7736');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lyssa', 'Tregunnah', '+63 (690) 955-1765');
insert into Customers (FirstName, LastName, ContactNumber) values ('Estele', 'Chilles', '+33 (194) 856-8175');
insert into Customers (FirstName, LastName, ContactNumber) values ('Galvan', 'Clere', '+993 (734) 599-8985');
insert into Customers (FirstName, LastName, ContactNumber) values ('Danice', 'Windless', '+86 (844) 606-5041');
insert into Customers (FirstName, LastName, ContactNumber) values ('Free', 'Bretelle', '+380 (303) 227-3330');
insert into Customers (FirstName, LastName, ContactNumber) values ('Celestine', 'Ketchaside', '+62 (960) 470-6717');
insert into Customers (FirstName, LastName, ContactNumber) values ('Isis', 'Melsom', '+355 (712) 500-3741');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dacy', 'Birley', '+57 (198) 622-6447');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cy', 'Najera', '+62 (471) 259-6778');
insert into Customers (FirstName, LastName, ContactNumber) values ('Abbye', 'Bernollet', '+86 (104) 691-5882');
insert into Customers (FirstName, LastName, ContactNumber) values ('Donavon', 'Carluccio', '+380 (872) 489-5986');
insert into Customers (FirstName, LastName, ContactNumber) values ('Joelle', 'Adess', '+233 (600) 484-2460');
insert into Customers (FirstName, LastName, ContactNumber) values ('Trixi', 'Issit', '+381 (942) 333-4393');
insert into Customers (FirstName, LastName, ContactNumber) values ('Beatrix', 'Golley', '+86 (227) 356-2409');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eudora', 'Cobby', '+86 (444) 548-7022');
insert into Customers (FirstName, LastName, ContactNumber) values ('Clevey', 'Harkus', '+86 (401) 393-0790');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bartholomeus', 'Gidman', '+62 (730) 353-7419');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jonah', 'Meiklam', '+62 (536) 948-7313');
insert into Customers (FirstName, LastName, ContactNumber) values ('Liza', 'Blabie', '+63 (332) 351-3381');
insert into Customers (FirstName, LastName, ContactNumber) values ('Boot', 'Fritter', '+62 (197) 348-6771');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rock', 'Abramovitz', '+351 (574) 925-6528');
insert into Customers (FirstName, LastName, ContactNumber) values ('Grover', 'Gonneau', '+62 (501) 149-5552');
insert into Customers (FirstName, LastName, ContactNumber) values ('Emmeline', 'Griswaite', '+81 (193) 938-1956');
insert into Customers (FirstName, LastName, ContactNumber) values ('Christiano', 'Wreakes', '+375 (145) 999-0112');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bianca', 'Hollier', '+54 (957) 513-0659');
insert into Customers (FirstName, LastName, ContactNumber) values ('Matthias', 'Huffadine', '+33 (768) 257-0488');
insert into Customers (FirstName, LastName, ContactNumber) values ('Norton', 'Punter', '+358 (839) 305-0794');
insert into Customers (FirstName, LastName, ContactNumber) values ('Abbie', 'Whapple', '+220 (244) 615-0036');
insert into Customers (FirstName, LastName, ContactNumber) values ('Derwin', 'Paintain', '+63 (139) 969-5791');
insert into Customers (FirstName, LastName, ContactNumber) values ('Norris', 'Kenright', '+86 (313) 510-5663');
insert into Customers (FirstName, LastName, ContactNumber) values ('Richart', 'Roughley', '+258 (721) 882-1675');
insert into Customers (FirstName, LastName, ContactNumber) values ('Beitris', 'Hendrikse', '+1 (216) 218-7671');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kristine', 'Brandino', '+86 (421) 991-8130');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marilyn', 'Maude', '+63 (164) 314-8217');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lonnard', 'Dearlove', '+86 (332) 312-5480');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gratia', 'Theunissen', '+55 (355) 226-5691');
insert into Customers (FirstName, LastName, ContactNumber) values ('Aloise', 'Budgen', '+86 (537) 237-9799');
insert into Customers (FirstName, LastName, ContactNumber) values ('Quincey', 'Scutter', '+55 (311) 443-8724');
insert into Customers (FirstName, LastName, ContactNumber) values ('Camille', 'Messham', '+681 (603) 449-4871');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gene', 'Rivalant', '+62 (960) 893-0465');
insert into Customers (FirstName, LastName, ContactNumber) values ('Koressa', 'Belbin', '+81 (106) 709-8392');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nathalie', 'Girardot', '+62 (477) 482-1320');
insert into Customers (FirstName, LastName, ContactNumber) values ('Drud', 'Bartlet', '+62 (841) 791-1654');
insert into Customers (FirstName, LastName, ContactNumber) values ('Benedetto', 'Falk', '+86 (405) 239-5143');
insert into Customers (FirstName, LastName, ContactNumber) values ('Murvyn', 'Wannes', '+48 (446) 721-6108');
insert into Customers (FirstName, LastName, ContactNumber) values ('Roseann', 'Kundt', '+1 (491) 527-6736');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kirsti', 'Passion', '+56 (813) 437-6725');
insert into Customers (FirstName, LastName, ContactNumber) values ('Charmion', 'McLafferty', '+62 (559) 703-0107');
insert into Customers (FirstName, LastName, ContactNumber) values ('Baldwin', 'Witherden', '+86 (561) 490-9824');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maura', 'Danilowicz', '+62 (717) 984-8668');
insert into Customers (FirstName, LastName, ContactNumber) values ('Athene', 'Lachaize', '+670 (442) 957-8189');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sheryl', 'de Vaen', '+66 (632) 604-0875');
insert into Customers (FirstName, LastName, ContactNumber) values ('Francklyn', 'Abbots', '+86 (596) 884-5316');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jules', 'Beacom', '+254 (990) 569-8627');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rowen', 'Willas', '+86 (549) 940-3882');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dreddy', 'Toxell', '+62 (873) 998-1722');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sonny', 'Robiot', '+62 (788) 779-6864');
insert into Customers (FirstName, LastName, ContactNumber) values ('Richard', 'Dight', '+351 (719) 727-8157');
insert into Customers (FirstName, LastName, ContactNumber) values ('Benson', 'Lewens', '+82 (635) 265-5649');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cordy', 'Dominguez', '+63 (144) 951-8880');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ricki', 'Drains', '+86 (808) 675-6584');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cassandra', 'McDougall', '+62 (439) 811-6246');
insert into Customers (FirstName, LastName, ContactNumber) values ('Teressa', 'McKain', '+351 (428) 715-7360');
insert into Customers (FirstName, LastName, ContactNumber) values ('Waite', 'Zanicchi', '+591 (178) 409-5177');
insert into Customers (FirstName, LastName, ContactNumber) values ('Pavia', 'Harle', '+358 (837) 909-1674');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lianna', 'Gumb', '+48 (309) 937-3349');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gustav', 'Hune', '+7 (180) 324-0803');
insert into Customers (FirstName, LastName, ContactNumber) values ('Willard', 'MacNaughton', '+33 (206) 673-3077');
insert into Customers (FirstName, LastName, ContactNumber) values ('Chan', 'Piper', '+62 (929) 456-0010');
insert into Customers (FirstName, LastName, ContactNumber) values ('Petr', 'Janacek', '+84 (386) 796-8643');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dewain', 'Byk', '+86 (356) 165-4454');
insert into Customers (FirstName, LastName, ContactNumber) values ('Siana', 'Brotherwood', '+387 (793) 418-6668');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fowler', 'Wornum', '+352 (585) 418-4323');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hannah', 'Eccles', '+970 (121) 845-1695');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bernetta', 'Sanchis', '+351 (958) 641-2346');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rubin', 'O''Keaveny', '+84 (146) 775-1024');
insert into Customers (FirstName, LastName, ContactNumber) values ('Wenonah', 'Diable', '+970 (363) 611-6236');
insert into Customers (FirstName, LastName, ContactNumber) values ('Janel', 'Hansbury', '+82 (223) 135-7338');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rad', 'Gillings', '+86 (482) 875-2141');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gerrie', 'Lang', '+507 (747) 236-2432');
insert into Customers (FirstName, LastName, ContactNumber) values ('Burk', 'Quinell', '+967 (445) 369-5634');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lucina', 'Smittoune', '+351 (252) 135-1184');
insert into Customers (FirstName, LastName, ContactNumber) values ('Magdalena', 'Domican', '+86 (842) 850-0605');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hersh', 'Balentyne', '+86 (995) 641-2940');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cathrine', 'Hungerford', '+86 (509) 924-4492');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eugenius', 'Surcombe', '+86 (407) 798-5689');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eben', 'Rojas', '+86 (506) 318-3769');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mel', 'Tremblett', '+27 (150) 138-0715');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nollie', 'Tuhy', '+355 (625) 482-2166');
insert into Customers (FirstName, LastName, ContactNumber) values ('Edee', 'Sephton', '+7 (805) 694-1086');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jae', 'Culy', '+7 (269) 863-7370');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sigismond', 'Stobbart', '+86 (208) 582-9214');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lelia', 'Gozzard', '+86 (624) 972-0525');
insert into Customers (FirstName, LastName, ContactNumber) values ('Agneta', 'Gisburne', '+93 (287) 442-4460');
insert into Customers (FirstName, LastName, ContactNumber) values ('Claire', 'Simioni', '+33 (163) 470-9867');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ealasaid', 'Manon', '+55 (798) 695-2481');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ladonna', 'Orsman', '+380 (709) 558-2255');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cozmo', 'Goldbourn', '+86 (947) 409-0732');
insert into Customers (FirstName, LastName, ContactNumber) values ('Isaac', 'Castenda', '+62 (763) 836-3822');
insert into Customers (FirstName, LastName, ContactNumber) values ('Trenna', 'O''Curran', '+7 (239) 986-1166');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nelle', 'Normant', '+385 (381) 279-7599');
insert into Customers (FirstName, LastName, ContactNumber) values ('Grissel', 'Lett', '+62 (284) 759-6756');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jen', 'Mattingson', '+46 (342) 798-2680');
insert into Customers (FirstName, LastName, ContactNumber) values ('Austin', 'Gower', '+238 (741) 384-8215');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cecilius', 'Jostan', '+62 (861) 360-2697');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rodi', 'Wilhelmy', '+46 (344) 730-3789');
insert into Customers (FirstName, LastName, ContactNumber) values ('Florina', 'Kyteley', '+233 (193) 626-8775');
insert into Customers (FirstName, LastName, ContactNumber) values ('Chiquita', 'Clue', '+251 (731) 556-1589');
insert into Customers (FirstName, LastName, ContactNumber) values ('Elmira', 'Bluck', '+992 (356) 787-8130');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kizzie', 'Little', '+84 (578) 614-9997');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hamish', 'Teece', '+86 (633) 881-3892');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rudie', 'Weepers', '+27 (321) 528-9598');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ernestus', 'Stede', '+62 (237) 350-0925');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rorke', 'Guisby', '+52 (104) 495-1072');
insert into Customers (FirstName, LastName, ContactNumber) values ('Max', 'Teape', '+63 (999) 301-1640');
insert into Customers (FirstName, LastName, ContactNumber) values ('Keen', 'Cardozo', '+55 (374) 554-8876');
insert into Customers (FirstName, LastName, ContactNumber) values ('Johnathon', 'Potkins', '+92 (492) 784-3340');
insert into Customers (FirstName, LastName, ContactNumber) values ('Deny', 'Kaiser', '+63 (173) 166-7704');
insert into Customers (FirstName, LastName, ContactNumber) values ('Clerc', 'Astlet', '+359 (723) 586-1304');
insert into Customers (FirstName, LastName, ContactNumber) values ('Simonette', 'Torri', '+509 (277) 412-1604');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hendrika', 'Chestle', '+86 (907) 341-6806');
insert into Customers (FirstName, LastName, ContactNumber) values ('Camel', 'FitzAlan', '+994 (977) 228-1303');
insert into Customers (FirstName, LastName, ContactNumber) values ('Eartha', 'Kasbye', '+33 (407) 809-6180');
insert into Customers (FirstName, LastName, ContactNumber) values ('Carlota', 'Chinnick', '+62 (213) 455-6583');
insert into Customers (FirstName, LastName, ContactNumber) values ('Johan', 'Burkman', '+263 (812) 857-2992');
insert into Customers (FirstName, LastName, ContactNumber) values ('Pammie', 'Mateo', '+86 (780) 690-8130');
insert into Customers (FirstName, LastName, ContactNumber) values ('Aldrich', 'Blabie', '+62 (993) 319-1690');
insert into Customers (FirstName, LastName, ContactNumber) values ('Adelle', 'Tonepohl', '+48 (339) 605-6045');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fabiano', 'Clapton', '+54 (766) 804-6073');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hi', 'Sattin', '+962 (400) 438-3684');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ashton', 'Liggens', '+57 (684) 492-3646');
insert into Customers (FirstName, LastName, ContactNumber) values ('Annette', 'Enrich', '+351 (611) 504-7304');
insert into Customers (FirstName, LastName, ContactNumber) values ('Reina', 'McGowran', '+48 (710) 845-1383');
insert into Customers (FirstName, LastName, ContactNumber) values ('Wayland', 'Bocking', '+86 (650) 758-5473');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cortney', 'Hows', '+62 (569) 257-5409');
insert into Customers (FirstName, LastName, ContactNumber) values ('Laurena', 'Odde', '+212 (986) 281-5187');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kerry', 'Tarburn', '+27 (695) 286-7025');
insert into Customers (FirstName, LastName, ContactNumber) values ('Pearline', 'Engledow', '+86 (219) 316-8280');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bertrand', 'Windus', '+62 (152) 286-6272');
insert into Customers (FirstName, LastName, ContactNumber) values ('Des', 'Braham', '+7 (443) 491-0341');
insert into Customers (FirstName, LastName, ContactNumber) values ('Philippa', 'Challoner', '+51 (830) 948-1097');
insert into Customers (FirstName, LastName, ContactNumber) values ('Avram', 'Chattelaine', '+48 (514) 230-5254');
insert into Customers (FirstName, LastName, ContactNumber) values ('Tudor', 'Francescone', '+51 (314) 605-9143');
insert into Customers (FirstName, LastName, ContactNumber) values ('Garek', 'Waiton', '+86 (757) 808-3867');
insert into Customers (FirstName, LastName, ContactNumber) values ('Elsa', 'Stillmann', '+55 (772) 104-5237');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kelcy', 'Vinnicombe', '+52 (127) 240-1575');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kriste', 'Coye', '+86 (981) 255-6507');
insert into Customers (FirstName, LastName, ContactNumber) values ('Alia', 'Shellard', '+46 (545) 725-0863');
insert into Customers (FirstName, LastName, ContactNumber) values ('Tobie', 'Sate', '+351 (381) 639-0839');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sargent', 'Saggs', '+1 (924) 927-5835');
insert into Customers (FirstName, LastName, ContactNumber) values ('Catlee', 'Orrock', '+7 (545) 127-1833');
insert into Customers (FirstName, LastName, ContactNumber) values ('Stacie', 'Iacobucci', '+598 (940) 394-8140');
insert into Customers (FirstName, LastName, ContactNumber) values ('Oliy', 'Fitch', '+63 (727) 349-9237');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marcellus', 'Vince', '+86 (899) 745-2708');
insert into Customers (FirstName, LastName, ContactNumber) values ('Kristien', 'Matherson', '+62 (450) 155-1391');
insert into Customers (FirstName, LastName, ContactNumber) values ('Adele', 'Frye', '+86 (841) 885-4838');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jammie', 'Barenski', '+62 (213) 645-9768');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jamey', 'Hilhouse', '+86 (360) 297-3960');
insert into Customers (FirstName, LastName, ContactNumber) values ('Brannon', 'Shoorbrooke', '+49 (836) 385-6289');
insert into Customers (FirstName, LastName, ContactNumber) values ('Randene', 'Gudahy', '+86 (973) 430-4272');
insert into Customers (FirstName, LastName, ContactNumber) values ('Simone', 'Beaves', '+86 (570) 347-6383');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gianina', 'Kedslie', '+54 (481) 131-6496');
insert into Customers (FirstName, LastName, ContactNumber) values ('Inger', 'Dilliston', '+62 (399) 175-4110');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bobbi', 'Meni', '+55 (928) 969-5888');
insert into Customers (FirstName, LastName, ContactNumber) values ('Chloris', 'Shatford', '+351 (912) 674-0491');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rae', 'Stoakes', '+58 (346) 416-9379');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sheffie', 'Gueny', '+55 (199) 664-4845');
insert into Customers (FirstName, LastName, ContactNumber) values ('Gianna', 'Pedreschi', '+57 (681) 135-7058');
insert into Customers (FirstName, LastName, ContactNumber) values ('Napoleon', 'Cairney', '+81 (199) 456-9216');
insert into Customers (FirstName, LastName, ContactNumber) values ('Richy', 'Treleven', '+62 (879) 368-6850');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ranique', 'Quincey', '+62 (124) 480-2188');
insert into Customers (FirstName, LastName, ContactNumber) values ('Merilee', 'Kenwell', '+62 (584) 773-6918');
insert into Customers (FirstName, LastName, ContactNumber) values ('Octavius', 'Bruyett', '+46 (858) 494-9864');
insert into Customers (FirstName, LastName, ContactNumber) values ('Peyter', 'Cromb', '+62 (268) 556-1229');
insert into Customers (FirstName, LastName, ContactNumber) values ('Danny', 'Wendover', '+52 (995) 568-0022');
insert into Customers (FirstName, LastName, ContactNumber) values ('Willy', 'Bogey', '+49 (321) 724-1576');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cori', 'Darrington', '+66 (244) 166-5720');
insert into Customers (FirstName, LastName, ContactNumber) values ('Clifford', 'Gierardi', '+55 (723) 153-7052');
insert into Customers (FirstName, LastName, ContactNumber) values ('Frankie', 'Guiver', '+86 (285) 957-3561');
insert into Customers (FirstName, LastName, ContactNumber) values ('Fara', 'Granleese', '+7 (482) 787-0578');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nedda', 'Cronchey', '+93 (118) 550-1730');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mora', 'Suthworth', '+52 (765) 366-7633');
insert into Customers (FirstName, LastName, ContactNumber) values ('Bridgette', 'Weymont', '+967 (413) 681-1027');
insert into Customers (FirstName, LastName, ContactNumber) values ('Spencer', 'Honeyghan', '+54 (368) 890-0921');
insert into Customers (FirstName, LastName, ContactNumber) values ('Patience', 'Ringsell', '+970 (504) 362-2389');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ethelyn', 'Maker', '+62 (423) 353-4388');
insert into Customers (FirstName, LastName, ContactNumber) values ('Willem', 'Greatbatch', '+975 (614) 444-6854');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marne', 'Pastor', '+86 (206) 701-1877');
insert into Customers (FirstName, LastName, ContactNumber) values ('Anneliese', 'Wein', '+82 (766) 696-8948');
insert into Customers (FirstName, LastName, ContactNumber) values ('Claude', 'Gallifont', '+55 (334) 800-8456');
insert into Customers (FirstName, LastName, ContactNumber) values ('Orren', 'Molden', '+62 (302) 448-9673');
insert into Customers (FirstName, LastName, ContactNumber) values ('Thaxter', 'Cornill', '+63 (861) 727-6635');
insert into Customers (FirstName, LastName, ContactNumber) values ('Caressa', 'Stratley', '+48 (571) 585-4311');
insert into Customers (FirstName, LastName, ContactNumber) values ('Melisa', 'Bisp', '+967 (116) 888-2801');
insert into Customers (FirstName, LastName, ContactNumber) values ('Marijo', 'Fowlston', '+82 (842) 872-8901');
insert into Customers (FirstName, LastName, ContactNumber) values ('Willa', 'Curzey', '+36 (474) 802-0199');
insert into Customers (FirstName, LastName, ContactNumber) values ('Maxy', 'Ness', '+86 (951) 903-6823');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sue', 'Malone', '+57 (234) 246-8697');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mariann', 'Hows', '+86 (680) 394-2658');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hugh', 'Manger', '+52 (361) 305-9424');
insert into Customers (FirstName, LastName, ContactNumber) values ('Celestine', 'Minnock', '+62 (177) 533-0113');
insert into Customers (FirstName, LastName, ContactNumber) values ('Adele', 'Cuniam', '+31 (977) 610-0450');
insert into Customers (FirstName, LastName, ContactNumber) values ('Josie', 'Sherrard', '+351 (182) 170-6378');
insert into Customers (FirstName, LastName, ContactNumber) values ('Addison', 'Blunsden', '+62 (364) 289-3616');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jim', 'Luberto', '+55 (510) 862-4308');
insert into Customers (FirstName, LastName, ContactNumber) values ('Hedvig', 'Tebbut', '+7 (894) 938-6434');
insert into Customers (FirstName, LastName, ContactNumber) values ('Joice', 'McCritichie', '+54 (489) 310-6910');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jasper', 'Seaborn', '+86 (977) 449-9662');
insert into Customers (FirstName, LastName, ContactNumber) values ('Danita', 'Curd', '+86 (173) 623-3417');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jermaine', 'McGrirl', '+229 (190) 987-2977');
insert into Customers (FirstName, LastName, ContactNumber) values ('Melinde', 'Shrimpton', '+235 (444) 777-2144');
insert into Customers (FirstName, LastName, ContactNumber) values ('Harri', 'Lovelady', '+420 (317) 591-4750');
insert into Customers (FirstName, LastName, ContactNumber) values ('Prudence', 'Ivanchenkov', '+7 (768) 711-8564');
insert into Customers (FirstName, LastName, ContactNumber) values ('Zola', 'Dayborne', '+55 (922) 523-3723');
insert into Customers (FirstName, LastName, ContactNumber) values ('Henryetta', 'Bettley', '+380 (992) 950-2721');
insert into Customers (FirstName, LastName, ContactNumber) values ('Abigale', 'Windram', '+352 (643) 978-6599');
insert into Customers (FirstName, LastName, ContactNumber) values ('Budd', 'Almey', '+506 (471) 906-3599');
insert into Customers (FirstName, LastName, ContactNumber) values ('Alys', 'Spinola', '+63 (273) 899-6020');
insert into Customers (FirstName, LastName, ContactNumber) values ('Archibold', 'Kures', '+351 (509) 569-5537');
insert into Customers (FirstName, LastName, ContactNumber) values ('Stavro', 'Crowcombe', '+7 (477) 578-6744');
insert into Customers (FirstName, LastName, ContactNumber) values ('Vinnie', 'Margiotta', '+374 (891) 405-9861');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ellynn', 'McMichell', '+27 (541) 282-8822');
insert into Customers (FirstName, LastName, ContactNumber) values ('Otto', 'Ostrich', '+420 (134) 284-5199');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nelson', 'Hansel', '+86 (452) 846-0977');
insert into Customers (FirstName, LastName, ContactNumber) values ('Umberto', 'Klassmann', '+1 (356) 507-3749');
insert into Customers (FirstName, LastName, ContactNumber) values ('Orella', 'Scourgie', '+351 (182) 785-5204');
insert into Customers (FirstName, LastName, ContactNumber) values ('Alejoa', 'Maciaszek', '+86 (249) 887-7704');
insert into Customers (FirstName, LastName, ContactNumber) values ('Henrietta', 'Jaquet', '+7 (801) 938-6927');
insert into Customers (FirstName, LastName, ContactNumber) values ('Paolo', 'Beckham', '+86 (388) 714-5966');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lana', 'Ginty', '+381 (294) 140-5649');
insert into Customers (FirstName, LastName, ContactNumber) values ('Callie', 'Le Leu', '+86 (685) 135-0993');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jeane', 'Emilien', '+55 (848) 968-5421');
insert into Customers (FirstName, LastName, ContactNumber) values ('Dillon', 'Wedgwood', '+63 (932) 199-6308');
insert into Customers (FirstName, LastName, ContactNumber) values ('Sheffield', 'Dods', '+227 (263) 874-7177');
insert into Customers (FirstName, LastName, ContactNumber) values ('Darsey', 'Rawls', '+62 (433) 197-7826');
insert into Customers (FirstName, LastName, ContactNumber) values ('Guillemette', 'Shakespear', '+62 (780) 238-7148');
insert into Customers (FirstName, LastName, ContactNumber) values ('Orella', 'Lowden', '+381 (618) 610-2519');
insert into Customers (FirstName, LastName, ContactNumber) values ('Luisa', 'Reder', '+1 (511) 457-4427');
insert into Customers (FirstName, LastName, ContactNumber) values ('Tito', 'Patemore', '+351 (421) 720-3263');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mal', 'Dumbare', '+1 (701) 126-7885');
insert into Customers (FirstName, LastName, ContactNumber) values ('Natty', 'Ablett', '+375 (186) 856-0119');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rockwell', 'Stopher', '+62 (694) 892-6908');
insert into Customers (FirstName, LastName, ContactNumber) values ('Elyssa', 'Normington', '+86 (879) 518-2998');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mycah', 'Strelitzki', '+48 (566) 333-2995');
insert into Customers (FirstName, LastName, ContactNumber) values ('Granny', 'Ockenden', '+7 (224) 709-9494');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cookie', 'Aspy', '+63 (730) 590-4958');
insert into Customers (FirstName, LastName, ContactNumber) values ('Mitchael', 'Witherington', '+253 (404) 293-5538');
insert into Customers (FirstName, LastName, ContactNumber) values ('Christin', 'Lambal', '+380 (862) 609-6804');
insert into Customers (FirstName, LastName, ContactNumber) values ('Remy', 'Kevlin', '+86 (649) 143-0342');
insert into Customers (FirstName, LastName, ContactNumber) values ('Noel', 'Goundrill', '+7 (629) 112-6445');
insert into Customers (FirstName, LastName, ContactNumber) values ('Buddie', 'Delicate', '+27 (573) 388-9234');
insert into Customers (FirstName, LastName, ContactNumber) values ('Neddie', 'Caven', '+233 (148) 130-3221');
insert into Customers (FirstName, LastName, ContactNumber) values ('Malynda', 'Pietruszka', '+86 (402) 935-5204');
insert into Customers (FirstName, LastName, ContactNumber) values ('Nels', 'Restill', '+63 (235) 700-9802');
insert into Customers (FirstName, LastName, ContactNumber) values ('Cece', 'Sayburn', '+55 (264) 776-2495');
insert into Customers (FirstName, LastName, ContactNumber) values ('Jerrome', 'Liddel', '+62 (789) 479-3991');
insert into Customers (FirstName, LastName, ContactNumber) values ('Rozamond', 'Vedenisov', '+86 (836) 588-3102');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lexi', 'Gateshill', '+62 (571) 246-9486');
insert into Customers (FirstName, LastName, ContactNumber) values ('Matteo', 'Sandes', '+86 (502) 356-1175');
insert into Customers (FirstName, LastName, ContactNumber) values ('Silas', 'Brittoner', '+45 (242) 877-7793');
insert into Customers (FirstName, LastName, ContactNumber) values ('Anjanette', 'Abry', '+60 (433) 396-3339');
insert into Customers (FirstName, LastName, ContactNumber) values ('Olly', 'Limb', '+967 (727) 430-1916');
insert into Customers (FirstName, LastName, ContactNumber) values ('Lelah', 'Tesauro', '+1 (713) 515-1549');
insert into Customers (FirstName, LastName, ContactNumber) values ('Ara', 'MacGaughey', '+51 (181) 126-0846');
insert into Customers (FirstName, LastName, ContactNumber) values ('Julita', 'Buney', '+504 (340) 734-2758');
insert into Customers (FirstName, LastName, ContactNumber) values ('Morgen', 'Sandels', '+374 (853) 505-6292');
insert into Customers (FirstName, LastName, ContactNumber) values ('Annadiana', 'Loyley', '+86 (391) 879-9502');
insert into Customers (FirstName, LastName, ContactNumber) values ('Edmund', 'Tilne', '+51 (575) 576-4606');
insert into Customers (FirstName, LastName, ContactNumber) values ('Avigdor', 'Kobiela', '+234 (960) 385-9525');
insert into Customers (FirstName, LastName, ContactNumber) values ('Erasmus', 'Brithman', '+86 (809) 320-4576');

select * from Customers

---ORDER TABLE---
drop table Orders


create table Orders(
	Order_ID int not null primary key identity(100,1),
    Date varchar(15) not null,
	ItemName varchar(30) not null , 
	ItemPrice_RS int not null Check (ItemPrice_RS>0),
	ExpectedTime varchar(10) not null,
	Status varchar(10) not null Check (Status in ('Dine in','Delivery','Takeaway')),
	CustomerID int foreign key references Customers(Customer_ID)
	)



alter table Orders --Adding composite Foreign Key 
add constraint FK_ItemName_ItemPrice
foreign key (ItemName,ItemPrice_RS) references Menu(ItemName,ItemPrice_RS)


insert into Orders values
('2/1/2020','Biscuits and gravy',170,'30 min','Dine in',1), 
('3/1/2020','Ackee and saltfish',100,'20 min','Delivery',3),
('2/1/2020','Chipped beef on toast',300,'40 min','Takeaway',4),
('8/1/2020','Chicken Karahi',1000,'35 min','Dine in',2),
('11/1/2020','Buffalo wings',1000,'30 min','Delivery',5),
('19/1/2020','MeatLoafs and cheese',500,'20 min','Takeaway',7),
('6/1/2020','Spiced Olives',150,'10 min','Dine in',6),
('2/1/2020','Tender Salsa Beef',450,'35 min','Dine in',8),
('4/1/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',10),
('10/1/2020','Biscuits and gravy',170,'30 min','Dine in',9),
('13/1/2020','White Bean Soup',200,'35 min','Delivery',8),
('3/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',7),
('3/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',8),
('4/2/2020','Chicken Karahi',1000,'45 min','Delivery',7),
('4/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',10),
('4/2/2020','Chicken Karahi',1000,'45 min','Delivery',7),
('5/2/2020','Chicken fried steak',550,'30 min','Takeaway',3),
('5/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',5),
('5/2/2020','Chicken Karahi',1000,'45 min','Delivery',11),
('5/2/2020','Tender Salsa Beef',450,'20 min','Takeaway',7),
('5/2/2020','Tender Salsa Beef',450,'20 min','Dine in',13),
('6/2/2020','Chicken Karahi',1000,'45 min','Takeaway',14),
('6/2/2020','Chicken Karahi',1000,'45 min','Delivery',15),
('6/2/2020','Chicken fried steak',550,'30 min','Dine in',16),
('6/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',17),
('6/2/2020','Grilled Chicken',650,'20 min','Dine in',18),
('7/2/2020','Macaroni and cheese',300,'20 min','Dine in',19),
('7/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',20),
('7/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',21),
('7/2/2020','Chicken fried steak',550,'30 min','Dine in',22),
('7/2/2020','Macaroni and cheese',300,'20 min','Delivery',23),
('7/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',24),
('8/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',25),
('8/2/2020','Chicken fried steak',550,'30 min','Delivery',26),
('8/2/2020','Spiced Pita Chips',200,'20 min','Takeaway',27),
('8/2/2020','Macaroni and cheese',300,'20 min','Delivery',28),
('9/2/2020','MeatLoafs and cheese',500,'40 min','Takeaway',29),
('9/2/2020','Spiced Pita Chips',200,'20 min','Dine in',20),
('9/2/2020','Mexican Lasagna',500,'20 min','Dine in',30),
('9/2/2020','Grilled Chicken',650,'20 min','Takeaway',31),
('9/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',32),
('9/2/2020','Macaroni and cheese',300,'20 min','Delivery',33),
('9/2/2020','Grilled Chicken',650,'20 min','Takeaway',34),
('9/2/2020','MeatLoafs and cheese',500,'40 min','Delivery',35),
('10/2/2020','Mexican Lasagna',500,'35 min','Takeaway',37),
('10/2/2020','MeatLoafs and cheese',500,'40 min','Dine in',36),
('10/2/2020','Grilled Chicken',650,'20 min','Takeaway',38),
('10/2/2020','Mexican Lasagna',500,'35 min','Takeaway',39),
('11/2/2020','MeatLoafs and cheese',500,'40 min','Delivery',40),
('11/2/2020','Mexican Lasagna',500,'35 min','Takeaway',41),
('11/2/2020','MeatLoafs and cheese',500,'20 min','Dine in',42),
('11/2/2020','Mexican Lasagna',500,'35 min','Takeaway',43),
('11/2/2020','MeatLoafs and cheese',500,'20 min','Takeaway',44),
('12/2/2020','Spiced Pita Chips',200,'20 min','Dine in',45),
('12/2/2020','Spiced Pita Chips',200,'20 min','Dine in',46),
('12/2/2020','Tender Salsa Beef',450,'20 min','Takeaway',47),
('12/2/2020','Ackee and saltfish',100,'20 min','Delivery',48),
('13/2/2020','Grilled Chicken',650,'20 min','Takeaway',47),
('13/2/2020','Ackee and saltfish',100,'20 min','Delivery',43),
('13/2/2020','Macaroni and cheese',300,'20 min','Delivery',49),
('13/2/2020','Ackee and saltfish',100,'20 min','Delivery',50),
('13/2/2020','Macaroni and cheese',300,'20 min','Delivery',51),
('13/2/2020','Grilled Chicken',650,'20 min','Takeaway',52),
('13/2/2020','Ackee and saltfish',100,'20 min','Delivery',53),
('14/2/2020','Macaroni and cheese',300,'20 min','Delivery',53),
('14/2/2020','Ackee and saltfish',100,'20 min','Delivery',54),
('14/2/2020','Ackee and saltfish',100,'20 min','Delivery',55),
('14/2/2020','Grilled Chicken',650,'20 min','Takeaway',56),
('14/2/2020','Ackee and saltfish',100,'20 min','Delivery',23),
('14/2/2020','Ackee and saltfish',100,'20 min','Delivery',33),
('15/2/2020','Macaroni and cheese',300,'20 min','Delivery',31),
('15/2/2020','Tender Salsa Beef',450,'20 min','Takeaway',27),
('15/2/2020','Tender Salsa Beef',450,'20 min','Takeaway',17),
('16/2/2020','Macaroni and cheese',300,'20 min','Delivery',33),
('16/2/2020','Ackee and saltfish',100,'20 min','Delivery',35),
('16/2/2020','Grilled Chicken',650,'20 min','Takeaway',38),
('16/2/2020','Ackee and saltfish',100,'20 min','Delivery',9),
('16/2/2020','Tender Salsa Beef',450,'20 min','Takeaway',7),
('17/2/2020','Grilled Chicken',650,'20 min','Takeaway',5),
('17/2/2020','Spiced Olives',150,'10 min','Dine in',1),
('17/2/2020','Chipped beef on toast',300,'40 min','Takeaway',2),
('17/2/2020','Spiced Olives',150,'10 min','Dine in',8),
('18/2/2020','Chicken Karahi',1000,'45 min','Takeaway',14),
('18/2/2020','Spiced Olives',150,'10 min','Dine in',16),
('18/2/2020','Chicken Karahi',1000,'45 min','Takeaway',14),
('19/2/2020','Spiced Olives',150,'10 min','Dine in',26),
('19/2/2020','Buffalo wings',1000,'30 min','Delivery',25),
('19/2/2020','Spiced Olives',150,'10 min','Dine in',56),
('19/2/2020','Buffalo wings',1000,'30 min','Delivery',15),
('20/2/2020','Spiced Olives',150,'10 min','Dine in',17),
('20/2/2020','Spiced Olives',150,'10 min','Dine in',18),
('20/2/2020','Buffalo wings',1000,'30 min','Delivery',25),
('21/2/2020','Chicken Karahi',1000,'45 min','Takeaway',24),
('22/2/2020','Spiced Olives',150,'10 min','Dine in',26),
('23/2/2020','Buffalo wings',1000,'30 min','Delivery',25),
('24/2/2020','Spiced Olives',150,'10 min','Dine in',38),
('24/2/2020','Chipped beef on toast',300,'40 min','Takeaway',34),
('25/2/2020','Spiced Olives',150,'10 min','Dine in',39),
('25/2/2020','Buffalo wings',1000,'30 min','Delivery',40),
('25/2/2020','Spiced Olives',150,'10 min','Dine in',42),
('25/2/2020','Chipped beef on toast',300,'40 min','Takeaway',43),
('2//2020','Biscuits and gravy',170,'30 min','Dine in',51), 
('3/3/2020','Ackee and saltfish',100,'20 min','Delivery',53),
('2/3/2020','Chipped beef on toast',300,'40 min','Takeaway',52),
('8/3/2020','Chicken Karahi',1000,'35 min','Dine in',54),
('11/4/2020','Buffalo wings',1000,'30 min','Delivery',55),
('19/4/2020','MeatLoafs and cheese',500,'20 min','Takeaway',56),
('6/5/2020','Spiced Olives',150,'10 min','Dine in',58),
('2/5/2020','Tender Salsa Beef',450,'35 min','Dine in',57),
('4/5/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',59),
('10/5/2020','Biscuits and gravy',170,'30 min','Dine in',60),
('13/5/2020','White Bean Soup',200,'35 min','Delivery',49),
('3/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',47),
('4/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',48),
('5/6/2020','Chicken Karahi',1000,'45 min','Delivery',44),
('5/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',50),
('7/6/2020','Chicken Karahi',1000,'45 min','Delivery',43),
('8/6/2020','Chicken fried steak',550,'30 min','Takeaway',40),
('9/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',38),
('10/6/2020','Chicken Karahi',1000,'40 min','Dine in',38),
('2/3/2020','Biscuits and gravy',170,'30 min','Dine in',61), 
('2/3/2020','Ackee and saltfish',100,'20 min','Delivery',63),
('2/3/2020','Chipped beef on toast',300,'40 min','Takeaway',64),
('2/3/2020','Chicken Karahi',1000,'35 min','Dine in',62),
('2/3/2020','Buffalo wings',1000,'30 min','Delivery',65),
('2/3/2020','MeatLoafs and cheese',500,'20 min','Takeaway',67),
('3/3/2020','Spiced Olives',150,'10 min','Dine in',66),
('3/3/2020','Tender Salsa Beef',450,'35 min','Dine in',68),
('3/3/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',69),
('3/3/2020','Biscuits and gravy',170,'30 min','Dine in',70),
('3/3/2020','White Bean Soup',200,'35 min','Delivery',71),
('3/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',72),
('4/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',73),
('4/3/2020','Chicken Karahi',1000,'45 min','Delivery',74),
('4/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',75),
('4/3/2020','Chicken Karahi',1000,'45 min','Delivery',76),
('5/3/2020','Chicken fried steak',550,'30 min','Takeaway',77),
('5/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',78),
('5/3/2020','Chicken Karahi',1000,'45 min','Delivery',79),
('5/3/2020','Tender Salsa Beef',450,'20 min','Takeaway',80),
('5/3/2020','Tender Salsa Beef',450,'20 min','Dine in',81),
('6/3/2020','Chicken Karahi',1000,'45 min','Takeaway',82),
('6/3/2020','Chicken Karahi',1000,'45 min','Delivery',83),
('6/3/2020','Chicken fried steak',550,'30 min','Dine in',84),
('6/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',85),
('6/3/2020','Grilled Chicken',650,'20 min','Dine in',86),
('7/3/2020','Macaroni and cheese',300,'20 min','Dine in',87),
('7/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',88),
('7/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',89),
('7/3/2020','Chicken fried steak',550,'30 min','Dine in',90),
('7/3/2020','Macaroni and cheese',300,'20 min','Delivery',91),
('7/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',92),
('8/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',93),
('8/3/2020','Chicken fried steak',550,'30 min','Delivery',94),
('8/3/2020','Spiced Pita Chips',200,'20 min','Takeaway',95),
('8/3/2020','Macaroni and cheese',300,'20 min','Delivery',96),
('9/3/2020','MeatLoafs and cheese',500,'40 min','Takeaway',97),
('9/3/2020','Spiced Pita Chips',200,'20 min','Dine in',98),
('9/3/2020','Mexican Lasagna',500,'20 min','Dine in',99),
('9/3/2020','Grilled Chicken',650,'20 min','Takeaway',100),
('9/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',101),
('9/3/2020','Macaroni and cheese',300,'20 min','Delivery',102),
('9/3/2020','Grilled Chicken',650,'20 min','Takeaway',103),
('9/3/2020','MeatLoafs and cheese',500,'40 min','Delivery',104),
('10/3/2020','Mexican Lasagna',500,'35 min','Takeaway',105),
('10/3/2020','MeatLoafs and cheese',500,'40 min','Dine in',106),
('10/3/2020','Grilled Chicken',650,'20 min','Takeaway',107),
('10/3/2020','Mexican Lasagna',500,'35 min','Takeaway',108),
('11/3/2020','MeatLoafs and cheese',500,'40 min','Delivery',109),
('11/3/2020','Mexican Lasagna',500,'35 min','Takeaway',110),
('11/3/2020','MeatLoafs and cheese',500,'20 min','Dine in',111),
('11/3/2020','Mexican Lasagna',500,'35 min','Takeaway',112),
('11/3/2020','MeatLoafs and cheese',500,'20 min','Takeaway',113),
('12/3/2020','Spiced Pita Chips',200,'20 min','Dine in',114),
('12/3/2020','Spiced Pita Chips',200,'20 min','Dine in',115),
('12/3/2020','Tender Salsa Beef',450,'20 min','Takeaway',116),
('12/3/2020','Ackee and saltfish',100,'20 min','Delivery',117),
('13/3/2020','Grilled Chicken',650,'20 min','Takeaway',118),
('13/3/2020','Ackee and saltfish',100,'20 min','Delivery',119),
('13/3/2020','Macaroni and cheese',300,'20 min','Delivery',120),
('13/3/2020','Ackee and saltfish',100,'20 min','Delivery',121),
('13/3/2020','Macaroni and cheese',300,'20 min','Delivery',122),
('13/3/2020','Grilled Chicken',650,'20 min','Takeaway',123),
('13/3/2020','Ackee and saltfish',100,'20 min','Delivery',124),
('14/3/2020','Macaroni and cheese',300,'20 min','Delivery',125),
('14/3/2020','Ackee and saltfish',100,'20 min','Delivery',126),
('14/3/2020','Ackee and saltfish',100,'20 min','Delivery',127),
('14/3/2020','Grilled Chicken',650,'20 min','Takeaway',128),
('14/3/2020','Ackee and saltfish',100,'20 min','Delivery',129),
('14/3/2020','Ackee and saltfish',100,'20 min','Delivery',130),
('15/3/2020','Macaroni and cheese',300,'20 min','Delivery',131),
('15/3/2020','Tender Salsa Beef',450,'20 min','Takeaway',132),
('15/3/2020','Tender Salsa Beef',450,'20 min','Takeaway',133),
('16/3/2020','Macaroni and cheese',300,'20 min','Delivery',134),
('16/3/2020','Ackee and saltfish',100,'20 min','Delivery',135),
('16/3/2020','Grilled Chicken',650,'20 min','Takeaway',136),
('16/3/2020','Ackee and saltfish',100,'20 min','Delivery',137),
('16/3/2020','Tender Salsa Beef',450,'20 min','Takeaway',138),
('17/3/2020','Grilled Chicken',650,'20 min','Takeaway',139),
('17/3/2020','Spiced Olives',150,'10 min','Dine in',140),
('17/3/2020','Chipped beef on toast',300,'40 min','Takeaway',141),
('17/3/2020','Spiced Olives',150,'10 min','Dine in',142),
('18/3/2020','Chicken Karahi',1000,'45 min','Takeaway',143),
('18/3/2020','Spiced Olives',150,'10 min','Dine in',144),
('18/3/2020','Chicken Karahi',1000,'45 min','Takeaway',145),
('19/3/2020','Spiced Olives',150,'10 min','Dine in',146),
('19/3/2020','Buffalo wings',1000,'30 min','Delivery',147),
('19/3/2020','Spiced Olives',150,'10 min','Dine in',148),
('19/3/2020','Buffalo wings',1000,'30 min','Delivery',149),
('20/3/2020','Spiced Olives',150,'10 min','Dine in',150),
('20/3/2020','Spiced Olives',150,'10 min','Dine in',151),
('20/3/2020','Buffalo wings',1000,'30 min','Delivery',152),
('21/3/2020','Chicken Karahi',1000,'45 min','Takeaway',153),
('22/3/2020','Spiced Olives',150,'10 min','Dine in',154),
('23/3/2020','Buffalo wings',1000,'30 min','Delivery',155),
('24/3/2020','Spiced Olives',150,'10 min','Dine in',156),
('24/3/2020','Chipped beef on toast',300,'40 min','Takeaway',157),
('25/3/2020','Spiced Olives',150,'10 min','Dine in',158),
('25/3/2020','Buffalo wings',1000,'30 min','Delivery',159),
('25/3/2020','Spiced Olives',150,'10 min','Dine in',160),
('25/3/2020','Chipped beef on toast',300,'40 min','Takeaway',161),
('2/4/2020','Biscuits and gravy',170,'30 min','Dine in',162), 
('2/4/2020','Ackee and saltfish',100,'20 min','Delivery',163),
('2/4/2020','Chipped beef on toast',300,'40 min','Takeaway',164),
('2/4/2020','Chicken Karahi',1000,'35 min','Dine in',165),
('2/4/2020','Buffalo wings',1000,'30 min','Delivery',166),
('2/4/2020','MeatLoafs and cheese',500,'20 min','Takeaway',167),
('3/4/2020','Spiced Olives',150,'10 min','Dine in',168),
('3/4/2020','Tender Salsa Beef',450,'35 min','Dine in',168),
('3/4/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',169),
('3/4/2020','Biscuits and gravy',170,'30 min','Dine in',170),
('3/4/2020','White Bean Soup',200,'35 min','Delivery',171),
('3/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',172),
('4/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',173),
('4/4/2020','Chicken Karahi',1000,'45 min','Delivery',174),
('4/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',175),
('4/4/2020','Chicken Karahi',1000,'45 min','Delivery',176),
('5/4/2020','Chicken fried steak',550,'30 min','Takeaway',177),
('5/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',178),
('5/4/2020','Chicken Karahi',1000,'45 min','Delivery',179),
('5/4/2020','Tender Salsa Beef',450,'20 min','Takeaway',180),
('5/4/2020','Tender Salsa Beef',450,'20 min','Dine in',181),
('6/4/2020','Chicken Karahi',1000,'45 min','Takeaway',182),
('6/4/2020','Chicken Karahi',1000,'45 min','Delivery',183),
('6/4/2020','Chicken fried steak',550,'30 min','Dine in',184),
('6/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',185),
('6/4/2020','Grilled Chicken',650,'20 min','Dine in',186),
('7/4/2020','Macaroni and cheese',300,'20 min','Dine in',187),
('7/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',188),
('7/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',189),
('7/4/2020','Chicken fried steak',550,'30 min','Dine in',190),
('7/4/2020','Macaroni and cheese',300,'20 min','Delivery',191),
('7/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',192),
('8/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',193),
('8/4/2020','Chicken fried steak',550,'30 min','Delivery',194),
('8/4/2020','Spiced Pita Chips',200,'20 min','Takeaway',195),
('8/4/2020','Macaroni and cheese',300,'20 min','Delivery',196),
('9/4/2020','MeatLoafs and cheese',500,'40 min','Takeaway',197),
('9/4/2020','Spiced Pita Chips',200,'20 min','Dine in',198),
('9/4/2020','Mexican Lasagna',500,'20 min','Dine in',199),
('9/4/2020','Grilled Chicken',650,'20 min','Takeaway',200),
('9/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',201),
('9/4/2020','Macaroni and cheese',300,'20 min','Delivery',202),
('9/4/2020','Grilled Chicken',650,'20 min','Takeaway',203),
('9/4/2020','MeatLoafs and cheese',500,'40 min','Delivery',204),
('10/4/2020','Mexican Lasagna',500,'35 min','Takeaway',205),
('10/4/2020','MeatLoafs and cheese',500,'40 min','Dine in',206),
('10/4/2020','Grilled Chicken',650,'20 min','Takeaway',207),
('10/4/2020','Mexican Lasagna',500,'35 min','Takeaway',208),
('11/4/2020','MeatLoafs and cheese',500,'40 min','Delivery',209),
('11/4/2020','Mexican Lasagna',500,'35 min','Takeaway',210),
('11/4/2020','MeatLoafs and cheese',500,'20 min','Dine in',211),
('11/4/2020','Mexican Lasagna',500,'35 min','Takeaway',212),
('11/4/2020','MeatLoafs and cheese',500,'20 min','Takeaway',213),
('12/4/2020','Spiced Pita Chips',200,'20 min','Dine in',214),
('12/4/2020','Spiced Pita Chips',200,'20 min','Dine in',215),
('12/4/2020','Tender Salsa Beef',450,'20 min','Takeaway',216),
('12/4/2020','Ackee and saltfish',100,'20 min','Delivery',217),
('13/4/2020','Grilled Chicken',650,'20 min','Takeaway',218),
('13/4/2020','Ackee and saltfish',100,'20 min','Delivery',219),
('13/4/2020','Macaroni and cheese',300,'20 min','Delivery',220),
('13/4/2020','Ackee and saltfish',100,'20 min','Delivery',221),
('13/4/2020','Macaroni and cheese',300,'20 min','Delivery',222),
('13/4/2020','Grilled Chicken',650,'20 min','Takeaway',223),
('13/4/2020','Ackee and saltfish',100,'20 min','Delivery',224),
('14/4/2020','Macaroni and cheese',300,'20 min','Delivery',225),
('14/4/2020','Ackee and saltfish',100,'20 min','Delivery',226),
('14/4/2020','Ackee and saltfish',100,'20 min','Delivery',227),
('14/4/2020','Grilled Chicken',650,'20 min','Takeaway',228),
('14/4/2020','Ackee and saltfish',100,'20 min','Delivery',229),
('14/4/2020','Ackee and saltfish',100,'20 min','Delivery',230),
('15/4/2020','Macaroni and cheese',300,'20 min','Delivery',231),
('15/4/2020','Tender Salsa Beef',450,'20 min','Takeaway',232),
('15/4/2020','Tender Salsa Beef',450,'20 min','Takeaway',133),
('16/4/2020','Macaroni and cheese',300,'20 min','Delivery',234),
('16/4/2020','Ackee and saltfish',100,'20 min','Delivery',235),
('16/4/2020','Grilled Chicken',650,'20 min','Takeaway',236),
('16/4/2020','Ackee and saltfish',100,'20 min','Delivery',237),
('16/4/2020','Tender Salsa Beef',450,'20 min','Takeaway',238),
('17/4/2020','Grilled Chicken',650,'20 min','Takeaway',239),
('17/4/2020','Spiced Olives',150,'10 min','Dine in',240),
('17/4/2020','Chipped beef on toast',300,'40 min','Takeaway',241),
('17/4/2020','Spiced Olives',150,'10 min','Dine in',242),
('18/4/2020','Chicken Karahi',1000,'45 min','Takeaway',243),
('18/4/2020','Spiced Olives',150,'10 min','Dine in',244),
('18/4/2020','Chicken Karahi',1000,'45 min','Takeaway',245),
('19/4/2020','Spiced Olives',150,'10 min','Dine in',246),
('19/4/2020','Buffalo wings',1000,'30 min','Delivery',247),
('19/4/2020','Spiced Olives',150,'10 min','Dine in',248),
('19/4/2020','Buffalo wings',1000,'30 min','Delivery',249),
('20/4/2020','Spiced Olives',150,'10 min','Dine in',250),
('20/4/2020','Spiced Olives',150,'10 min','Dine in',251),
('20/4/2020','Buffalo wings',1000,'30 min','Delivery',252),
('21/4/2020','Chicken Karahi',1000,'45 min','Takeaway',253),
('22/4/2020','Spiced Olives',150,'10 min','Dine in',254),
('23/4/2020','Buffalo wings',1000,'30 min','Delivery',255),
('24/4/2020','Spiced Olives',150,'10 min','Dine in',256),
('24/4/2020','Chipped beef on toast',300,'40 min','Takeaway',257),
('25/4/2020','Spiced Olives',150,'10 min','Dine in',258),
('25/4/2020','Buffalo wings',1000,'30 min','Delivery',259),
('25/4/2020','Spiced Olives',150,'10 min','Dine in',260),
('25/4/2020','Chipped beef on toast',300,'40 min','Takeaway',261),
('2/5/2020','Biscuits and gravy',170,'30 min','Dine in',262), 
('2/5/2020','Ackee and saltfish',100,'20 min','Delivery',263),
('2/5/2020','Chipped beef on toast',300,'40 min','Takeaway',264),
('2/5/2020','Chicken Karahi',1000,'35 min','Dine in',265),
('2/5/2020','Buffalo wings',1000,'30 min','Delivery',266),
('2/5/2020','MeatLoafs and cheese',500,'20 min','Takeaway',267),
('3/5/2020','Spiced Olives',150,'10 min','Dine in',268),
('3/5/2020','Tender Salsa Beef',450,'35 min','Dine in',268),
('3/5/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',269),
('3/5/2020','Biscuits and gravy',170,'30 min','Dine in',270),
('3/5/2020','White Bean Soup',200,'35 min','Delivery',271),
('3/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',272),
('4/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',273),
('4/5/2020','Chicken Karahi',1000,'45 min','Delivery',274),
('4/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',275),
('4/5/2020','Chicken Karahi',1000,'45 min','Delivery',276),
('5/5/2020','Chicken fried steak',550,'30 min','Takeaway',277),
('5/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',278),
('5/5/2020','Chicken Karahi',1000,'45 min','Delivery',279),
('5/5/2020','Tender Salsa Beef',450,'20 min','Takeaway',280),
('5/5/2020','Tender Salsa Beef',450,'20 min','Dine in',281),
('6/5/2020','Chicken Karahi',1000,'45 min','Takeaway',282),
('6/5/2020','Chicken Karahi',1000,'45 min','Delivery',283),
('6/5/2020','Chicken fried steak',550,'30 min','Dine in',284),
('6/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',285),
('6/5/2020','Grilled Chicken',650,'20 min','Dine in',286),
('7/5/2020','Macaroni and cheese',300,'20 min','Dine in',287),
('7/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',288),
('7/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',289),
('7/5/2020','Chicken fried steak',550,'30 min','Dine in',290),
('7/5/2020','Macaroni and cheese',300,'20 min','Delivery',291),
('7/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',292),
('8/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',293),
('8/5/2020','Chicken fried steak',550,'30 min','Delivery',294),
('8/5/2020','Spiced Pita Chips',200,'20 min','Takeaway',295),
('8/5/2020','Macaroni and cheese',300,'20 min','Delivery',296),
('9/5/2020','MeatLoafs and cheese',500,'40 min','Takeaway',297),
('9/5/2020','Spiced Pita Chips',200,'20 min','Dine in',298),
('9/5/2020','Mexican Lasagna',500,'20 min','Dine in',299),
('9/5/2020','Grilled Chicken',650,'20 min','Takeaway',300),
('9/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',301),
('9/5/2020','Macaroni and cheese',300,'20 min','Delivery',302),
('9/5/2020','Grilled Chicken',650,'20 min','Takeaway',303),
('9/5/2020','MeatLoafs and cheese',500,'40 min','Delivery',304),
('10/5/2020','Mexican Lasagna',500,'35 min','Takeaway',305),
('10/5/2020','MeatLoafs and cheese',500,'40 min','Dine in',306),
('10/5/2020','Grilled Chicken',650,'20 min','Takeaway',307),
('10/5/2020','Mexican Lasagna',500,'35 min','Takeaway',308),
('11/5/2020','MeatLoafs and cheese',500,'40 min','Delivery',309),
('11/5/2020','Mexican Lasagna',500,'35 min','Takeaway',310),
('11/5/2020','MeatLoafs and cheese',500,'20 min','Dine in',311),
('11/5/2020','Mexican Lasagna',500,'35 min','Takeaway',312),
('11/5/2020','MeatLoafs and cheese',500,'20 min','Takeaway',313),
('12/5/2020','Spiced Pita Chips',200,'20 min','Dine in',314),
('12/5/2020','Spiced Pita Chips',200,'20 min','Dine in',315),
('12/5/2020','Tender Salsa Beef',450,'20 min','Takeaway',316),
('12/5/2020','Ackee and saltfish',100,'20 min','Delivery',317),
('13/5/2020','Grilled Chicken',650,'20 min','Takeaway',318),
('13/5/2020','Ackee and saltfish',100,'20 min','Delivery',319),
('13/5/2020','Macaroni and cheese',300,'20 min','Delivery',320),
('13/5/2020','Ackee and saltfish',100,'20 min','Delivery',321),
('13/5/2020','Macaroni and cheese',300,'20 min','Delivery',322),
('13/5/2020','Grilled Chicken',650,'20 min','Takeaway',323),
('13/5/2020','Ackee and saltfish',100,'20 min','Delivery',324),
('14/5/2020','Macaroni and cheese',300,'20 min','Delivery',325),
('14/5/2020','Ackee and saltfish',100,'20 min','Delivery',326),
('14/5/2020','Ackee and saltfish',100,'20 min','Delivery',327),
('14/5/2020','Grilled Chicken',650,'20 min','Takeaway',328),
('14/5/2020','Ackee and saltfish',100,'20 min','Delivery',329),
('14/5/2020','Ackee and saltfish',100,'20 min','Delivery',330),
('15/5/2020','Macaroni and cheese',300,'20 min','Delivery',331),
('15/5/2020','Tender Salsa Beef',450,'20 min','Takeaway',332),
('15/5/2020','Tender Salsa Beef',450,'20 min','Takeaway',333),
('16/5/2020','Macaroni and cheese',300,'20 min','Delivery',334),
('16/5/2020','Ackee and saltfish',100,'20 min','Delivery',335),
('16/5/2020','Grilled Chicken',650,'20 min','Takeaway',336),
('16/5/2020','Ackee and saltfish',100,'20 min','Delivery',337),
('16/5/2020','Tender Salsa Beef',450,'20 min','Takeaway',338),
('17/5/2020','Grilled Chicken',650,'20 min','Takeaway',339),
('17/5/2020','Spiced Olives',150,'10 min','Dine in',340),
('17/5/2020','Chipped beef on toast',300,'40 min','Takeaway',341),
('17/5/2020','Spiced Olives',150,'10 min','Dine in',342),
('18/5/2020','Chicken Karahi',1000,'45 min','Takeaway',343),
('18/5/2020','Spiced Olives',150,'10 min','Dine in',344),
('18/5/2020','Chicken Karahi',1000,'45 min','Takeaway',345),
('19/5/2020','Spiced Olives',150,'10 min','Dine in',346),
('19/5/2020','Buffalo wings',1000,'30 min','Delivery',347),
('19/5/2020','Spiced Olives',150,'10 min','Dine in',348),
('19/5/2020','Buffalo wings',1000,'30 min','Delivery',349),
('20/5/2020','Spiced Olives',150,'10 min','Dine in',350),
('20/5/2020','Spiced Olives',150,'10 min','Dine in',351),
('20/5/2020','Buffalo wings',1000,'30 min','Delivery',352),
('21/5/2020','Chicken Karahi',1000,'45 min','Takeaway',353),
('22/5/2020','Spiced Olives',150,'10 min','Dine in',354),
('23/5/2020','Buffalo wings',1000,'30 min','Delivery',355),
('24/5/2020','Spiced Olives',150,'10 min','Dine in',356),
('24/5/2020','Chipped beef on toast',300,'40 min','Takeaway',357),
('25/5/2020','Spiced Olives',150,'10 min','Dine in',358),
('25/5/2020','Buffalo wings',1000,'30 min','Delivery',359),
('25/5/2020','Spiced Olives',150,'10 min','Dine in',360),
('25/5/2020','Chipped beef on toast',300,'40 min','Takeaway',361),
('2/6/2020','Biscuits and gravy',170,'30 min','Dine in',362), 
('2/6/2020','Ackee and saltfish',100,'20 min','Delivery',363),
('2/6/2020','Chipped beef on toast',300,'40 min','Takeaway',364),
('2/6/2020','Chicken Karahi',1000,'35 min','Dine in',365),
('2/6/2020','Buffalo wings',1000,'30 min','Delivery',366),
('2/6/2020','MeatLoafs and cheese',500,'20 min','Takeaway',367),
('3/6/2020','Spiced Olives',150,'10 min','Dine in',368),
('3/6/2020','Tender Salsa Beef',450,'35 min','Dine in',368),
('3/6/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',369),
('3/6/2020','Biscuits and gravy',170,'30 min','Dine in',370),
('3/6/2020','White Bean Soup',200,'35 min','Delivery',371),
('3/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',372),
('4/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',373),
('4/6/2020','Chicken Karahi',1000,'45 min','Delivery',374),
('4/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',375),
('4/6/2020','Chicken Karahi',1000,'45 min','Delivery',376),
('5/6/2020','Chicken fried steak',550,'30 min','Takeaway',377),
('5/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',378),
('5/6/2020','Chicken Karahi',1000,'45 min','Delivery',379),
('5/6/2020','Tender Salsa Beef',450,'20 min','Takeaway',380),
('5/6/2020','Tender Salsa Beef',450,'20 min','Dine in',381),
('6/6/2020','Chicken Karahi',1000,'45 min','Takeaway',382),
('6/6/2020','Chicken Karahi',1000,'45 min','Delivery',383),
('6/6/2020','Chicken fried steak',550,'30 min','Dine in',384),
('6/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',385),
('6/6/2020','Grilled Chicken',650,'20 min','Dine in',386),
('7/6/2020','Macaroni and cheese',300,'20 min','Dine in',387),
('7/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',388),
('7/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',389),
('7/6/2020','Chicken fried steak',550,'30 min','Dine in',390),
('7/6/2020','Macaroni and cheese',300,'20 min','Delivery',391),
('7/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',392),
('8/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',393),
('8/6/2020','Chicken fried steak',550,'30 min','Delivery',394),
('8/6/2020','Spiced Pita Chips',200,'20 min','Takeaway',395),
('8/6/2020','Macaroni and cheese',300,'20 min','Delivery',396),
('9/6/2020','MeatLoafs and cheese',500,'40 min','Takeaway',397),
('9/6/2020','Spiced Pita Chips',200,'20 min','Dine in',398),
('9/6/2020','Mexican Lasagna',500,'20 min','Dine in',399),
('9/6/2020','Grilled Chicken',650,'20 min','Takeaway',400),
('9/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',401),
('9/6/2020','Macaroni and cheese',300,'20 min','Delivery',402),
('9/6/2020','Grilled Chicken',650,'20 min','Takeaway',403),
('9/6/2020','MeatLoafs and cheese',500,'40 min','Delivery',404),
('10/6/2020','Mexican Lasagna',500,'35 min','Takeaway',405),
('10/6/2020','MeatLoafs and cheese',500,'40 min','Dine in',406),
('10/6/2020','Grilled Chicken',650,'20 min','Takeaway',407),
('10/6/2020','Mexican Lasagna',500,'35 min','Takeaway',408),
('11/6/2020','MeatLoafs and cheese',500,'40 min','Delivery',409),
('11/6/2020','Mexican Lasagna',500,'35 min','Takeaway',410),
('11/6/2020','MeatLoafs and cheese',500,'20 min','Dine in',411),
('11/6/2020','Mexican Lasagna',500,'35 min','Takeaway',412),
('11/6/2020','MeatLoafs and cheese',500,'20 min','Takeaway',413),
('12/6/2020','Spiced Pita Chips',200,'20 min','Dine in',414),
('12/6/2020','Spiced Pita Chips',200,'20 min','Dine in',415),
('12/6/2020','Tender Salsa Beef',450,'20 min','Takeaway',416),
('12/6/2020','Ackee and saltfish',100,'20 min','Delivery',417),
('13/6/2020','Grilled Chicken',650,'20 min','Takeaway',418),
('13/6/2020','Ackee and saltfish',100,'20 min','Delivery',419),
('13/6/2020','Macaroni and cheese',300,'20 min','Delivery',420),
('13/6/2020','Ackee and saltfish',100,'20 min','Delivery',421),
('13/6/2020','Macaroni and cheese',300,'20 min','Delivery',422),
('13/6/2020','Grilled Chicken',650,'20 min','Takeaway',423),
('13/6/2020','Ackee and saltfish',100,'20 min','Delivery',424),
('14/6/2020','Macaroni and cheese',300,'20 min','Delivery',425),
('14/6/2020','Ackee and saltfish',100,'20 min','Delivery',426),
('14/6/2020','Ackee and saltfish',100,'20 min','Delivery',427),
('14/6/2020','Grilled Chicken',650,'20 min','Takeaway',428),
('14/6/2020','Ackee and saltfish',100,'20 min','Delivery',429),
('14/6/2020','Ackee and saltfish',100,'20 min','Delivery',430),
('15/6/2020','Macaroni and cheese',300,'20 min','Delivery',431),
('15/6/2020','Tender Salsa Beef',450,'20 min','Takeaway',432),
('15/6/2020','Tender Salsa Beef',450,'20 min','Takeaway',433),
('16/6/2020','Macaroni and cheese',300,'20 min','Delivery',434),
('16/6/2020','Ackee and saltfish',100,'20 min','Delivery',435),
('16/6/2020','Grilled Chicken',650,'20 min','Takeaway',436),
('16/6/2020','Ackee and saltfish',100,'20 min','Delivery',437),
('16/6/2020','Tender Salsa Beef',450,'20 min','Takeaway',438),
('17/6/2020','Grilled Chicken',650,'20 min','Takeaway',439),
('17/6/2020','Spiced Olives',150,'10 min','Dine in',440),
('17/6/2020','Chipped beef on toast',300,'40 min','Takeaway',441),
('17/6/2020','Spiced Olives',150,'10 min','Dine in',442),
('18/6/2020','Chicken Karahi',1000,'45 min','Takeaway',443),
('18/6/2020','Spiced Olives',150,'10 min','Dine in',444),
('18/6/2020','Chicken Karahi',1000,'45 min','Takeaway',445),
('19/6/2020','Spiced Olives',150,'10 min','Dine in',446),
('19/6/2020','Buffalo wings',1000,'30 min','Delivery',447),
('19/6/2020','Spiced Olives',150,'10 min','Dine in',448),
('19/6/2020','Buffalo wings',1000,'30 min','Delivery',449),
('20/6/2020','Spiced Olives',150,'10 min','Dine in',450),
('20/6/2020','Spiced Olives',150,'10 min','Dine in',451),
('20/6/2020','Buffalo wings',1000,'30 min','Delivery',452),
('21/6/2020','Chicken Karahi',1000,'45 min','Takeaway',453),
('22/6/2020','Spiced Olives',150,'10 min','Dine in',454),
('23/6/2020','Buffalo wings',1000,'30 min','Delivery',455),
('24/6/2020','Spiced Olives',150,'10 min','Dine in',456),
('24/6/2020','Chipped beef on toast',300,'40 min','Takeaway',457),
('25/6/2020','Spiced Olives',150,'10 min','Dine in',458),
('25/6/2020','Buffalo wings',1000,'30 min','Delivery',459),
('25/6/2020','Spiced Olives',150,'10 min','Dine in',460),
('25/6/2020','Chipped beef on toast',300,'40 min','Takeaway',461),
('2/7/2020','Biscuits and gravy',170,'30 min','Dine in',462), 
('2/7/2020','Ackee and saltfish',100,'20 min','Delivery',463),
('2/7/2020','Chipped beef on toast',300,'40 min','Takeaway',464),
('2/7/2020','Chicken Karahi',1000,'35 min','Dine in',465),
('2/7/2020','Buffalo wings',1000,'30 min','Delivery',466),
('2/7/2020','MeatLoafs and cheese',500,'20 min','Takeaway',467),
('3/7/2020','Spiced Olives',150,'10 min','Dine in',468),
('3/7/2020','Tender Salsa Beef',450,'35 min','Dine in',468),
('3/7/2020','Eggless Chocolate Mousse',300,'40 min','Takeaway',469),
('3/7/2020','Biscuits and gravy',170,'30 min','Dine in',470),
('3/7/2020','White Bean Soup',200,'35 min','Delivery',471),
('3/7/2020','MeatLoafs and cheese',500,'40 min','Dine in',472),
('4/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',473),
('4/7/2020','Chicken Karahi',1000,'45 min','Delivery',474),
('4/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',475),
('4/7/2020','Chicken Karahi',1000,'45 min','Delivery',476),
('5/7/2020','Chicken fried steak',550,'30 min','Takeaway',477),
('5/7/2020','MeatLoafs and cheese',500,'40 min','Dine in',478),
('5/7/2020','Chicken Karahi',1000,'45 min','Delivery',479),
('5/7/2020','Tender Salsa Beef',450,'20 min','Takeaway',480),
('5/7/2020','Tender Salsa Beef',450,'20 min','Dine in',481),
('6/7/2020','Chicken Karahi',1000,'45 min','Takeaway',482),
('6/7/2020','Chicken Karahi',1000,'45 min','Delivery',483),
('6/7/2020','Chicken fried steak',550,'30 min','Dine in',484),
('6/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',485),
('6/7/2020','Grilled Chicken',650,'20 min','Dine in',486),
('7/7/2020','Macaroni and cheese',300,'20 min','Dine in',487),
('7/7/2020','MeatLoafs and cheese',500,'40 min','Dine in',488),
('7/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',489),
('7/7/2020','Chicken fried steak',550,'30 min','Dine in',490),
('7/7/2020','Macaroni and cheese',300,'20 min','Delivery',491),
('7/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',492),
('8/7/2020','MeatLoafs and cheese',500,'40 min','Dine in',493),
('8/7/2020','Chicken fried steak',550,'30 min','Delivery',494),
('8/7/2020','Spiced Pita Chips',200,'20 min','Takeaway',495),
('8/7/2020','Macaroni and cheese',300,'20 min','Delivery',496),
('9/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',497),
('9/7/2020','Spiced Pita Chips',200,'20 min','Dine in',498),
('6/7/2020','Chicken fried steak',550,'30 min','Dine in',499),
('6/7/2020','MeatLoafs and cheese',500,'40 min','Takeaway',500)


select * from Orders


---MENU TABLE---
drop table Menu

create table Menu(
	Item_ID int not null identity(1,1), 
	ItemName varchar(30) not null ,
	ItemStatus varchar(20) not null Check (ItemStatus in ('Breakfast','Lunch','Dinner','Dessert','Appetizer','Beverage')),
	ItemPrice_RS int not null CHECK (ItemPrice_RS>0),
	primary key(ItemName,ItemPrice_RS) --composite primary key
	)

insert into Menu values
('Ackee and saltfish','BreakFast',100),
('Aloo paratha','BreakFast',50),
('Apple dumpling','BreakFast',120),
('Bacon, egg and cheese sandwich','BreakFast',250),
('Bagel and cream cheese','BreakFast',200),
('Biscuits and gravy','BreakFast',170),
('Breakfast sandwich','BreakFast',180),
('Chicken and waffles','BreakFast',150),
('Prawns and saltfish','BreakFast',130),
('Chipped beef on toast','BreakFast',300),

('Pot roast','Lunch',500),
('Chana Kulcha','Lunch',100),
('Dal Makhani','Lunch',300),
('Chicken Karahi','Lunch',1000),
('Cornbread','Lunch',350),
('Chicken fried steak','Lunch',550),
('Wild Alaska salmon','Lunch',600),
('Meatloaf','Lunch',650),
('Macaroni and cheese','Lunch',300),
('Buffalo wings','Lunch',1000),


('Chicken Fajitas','Dinner',700),
('Spaghetti','Dinner',200),
('Pizza','Dinner',1100),
('Roast Chicken','Dinner',800),
('Grilled Chicken','Dinner',650),
('Zinger Burger','Dinner',250),
('Mexican Lasagna','Dinner',500),
('Tender Salsa Beef','Dinner',450),
('White Bean Soup','Dinner',200),
('MeatLoafs and cheese','Dinner',500),


('Spiced Olives','Appetizer',150),
('Goat Cheese Trio','Appetizer',200),
('Yogurt Dip','Appetizer',100),
('Fried Ravioli','Appetizer',300),
('Stuffed Cherry Peppers','Appetizer',450),
('Cheese Spread','Appetizer',250),
('Creamy Shrimp Dip','Appetizer',170),
('Italian Tuna Dip','Appetizer',250),
('Spiced Pita Chips','Appetizer',200),
('Biscuits with Cheese','Appetizer',130),


('Apple Pie','Dessert',100),
('Almond Malai Kulfi','Dessert',50),
('Gulab Jamun','Dessert',1200),
('Lemon Tart','Dessert',250),
('Fudgy Chewy Brownies','Dessert',600),
('Low Fat Tiramisu','Dessert',770),
('Coconut Kheer','Dessert',100),
('Chocolate Coffee Truffle','Dessert',350),
('Hot Cointreau Souffle','Dessert',130),
('Eggless Chocolate Mousse','Dessert',300),

('Freshly squeezed orange','Beverage',50),
('Sattu','Beverage',200),
('Filtered Coffee ','Beverage',150),
('Hot or Cold Chocolate','Beverage',250),
('Coca-Cola or Diet Coke,','Beverage',50),
('Mocha Cashew Butter','Beverage',170),
('Veggie cocktail','Beverage',280),
('Mint Margarita','Beverage',150),
('Fresh Badam Milk','Beverage',130),
('Mango and Peach Juice','Beverage',200)

CREATE unique NONCLUSTERED INDEX index_menu
ON Menu(Item_ID)

select * from Menu



---EMPLOYEE TABLE---
drop table Employees

create table Employees(
	Employee_ID int not null primary key identity(01,1),
	FirstName varchar(20),
	LastName varchar(20) not null,
	Gender varchar(10) not null Check (Gender in ('Male','Female')),
	ContactNumber varchar(11) not null,
	JobType varchar(15) not null,
	Salary int not null,
	JoiningDate date not null,
	City varchar(20) not null,
	ManagerID int foreign key references Managers(Manager_ID)
	)

insert into Employees values('Ali','Kareem','Male',03009447951,'Waiter',20000,'10/5/2020','Gujranwala',1),
('Sharaiz','Khan','Male',03785447951,'Waiter',20000,'3/2/2020','Lahore',1),
('Sohail','Sufi','Male',03785447000,'Waiter',21000,'3/2/2020','Sialkot',1),
('Hamza','Ameen','Male',03555447981,'Waiter',23000,'11/1/2020','Islamabad',1),
('Shahid','Khan','Male',03111147751,'Waiter',20000,'15/7/2020','Gujranwala',1),
('Rehan','Raheem','Male',03119447951,'Waiter',20000,'10/5/2020','Murree',1),
('ALi','Gujjar','Male',03785447321,'Waiter',20000,'3/8/2020','Rawalpindi',1),
('Bilal','Khokhar','Male',03785448888,'Waiter',21000,'6/2/2020','Gujranwala',1),
('Hamza','Kaleem','Male',03555400081,'Waiter',23000,'15/4/2020','Bahawalpur',1),
('Raheem','Khan','Male',03112227751,'Waiter',20000,'20/7/2020','Kohat',1),

('Ifrah','Elahi','Female',03112227351,'Chef',25000,'20/5/2020','Lahore',2),
('Waqar','Shahroze','Male',03331147951,'Chef',25000,'1/7/2020','Alipur',2),
('Alishba','Khalid','Female',03114447251,'Chef',30000,'3/2/2020','Sialkot',2),
('Mahin','Rashid','Male',03311147331,'Chef',25000,'15/7/2020','Quetta',2),
('Latif','Butt','Male',03112147758,'Chef',30000,'18/3/2020','Gujrat',2),

('Mahina','Rashid','Female',03311123331,'Cashier',35000,'2/2/2020','Peshawar',1),
('Latif','Butt','Male',03112147010,'Cashier',30000,'8/3/2020','Islamabad',1)
select * from Employees


---Manager TABLE---

drop table Managers

create table Managers(
	Manager_ID int not null primary key identity(1,1),
	FirstName varchar(20),
	LastName varchar(20) not null,
	Gender varchar(10) not null Check(Gender in('Male','Female')),
	ContactNumber varchar(11) not null, 
	ManagerType varchar(20) not null, 
	Salary int not null, 
	JoiningDate date not null, 
	City varchar(20) not null
	)
insert into Managers values ('Ali','Rehman','Male',03004596771,'Staff',70000,'1/1/2020','Lahore'),
('Ayesha','Kareem','Female',0300000001,'Kitchen',50000,'1/2/2020','Islamabad')

select * from Managers



---Bill TABLE---
drop table Bill

create table Bill(
	Bill_ID int not null primary key identity(1,1), 
	date varchar(15) not null, 
	ItemName varchar(30) not null,
	ItemPrice_RS int not null, 
	Customer_ID int foreign key references Customers(Customer_ID),
	Order_ID int foreign key references Orders(Order_ID)
	) 

alter table Bill
add constraint Fk_Item_Name_PriceRS
foreign key(ItemName,ItemPrice_RS) references Menu(ItemName,ItemPrice_RS)


insert into Bill values
('7/1/2020','Ackee and saltfish',100,1,142),
('2/1/2020','Chipped beef on toast',300,3,144),
('15/1/2020','Biscuits and gravy',170,2,101),
('6/1/2020','Buffalo wings',1000,4,105),
('5/1/2020','Chipped beef on toast',300,6,103),
('15/1/2020','Chicken Karahi',1000,5,106),
('22/1/2020','Mango and Peach Juice',200,9,107),
('30/1/2020','Spiced Pita Chips',200,7,108),
('15/1/2020','Eggless Chocolate Mousse',300,10,110),
('11/1/2020','Yogurt Dip',100,8,109),
('3/2/2020','MeatLoafs and cheese',500,7,111),
('3/2/2020','MeatLoafs and cheese',500,8,112),
('4/2/2020','Chicken Karahi',1000,7,113),
('4/2/2020','MeatLoafs and cheese',500,10,114),
('4/2/2020','Chicken Karahi',1000,7,115),
('5/2/2020','Chicken fried steak',550,3,116),
('5/2/2020','MeatLoafs and cheese',500,5,117),
('5/2/2020','Chicken Karahi',1000,11,118),
('5/2/2020','Tender Salsa Beef',450,7,119),
('5/2/2020','Tender Salsa Beef',450,13,120),
('6/2/2020','Chicken Karahi',1000,14,121),
('6/2/2020','Chicken Karahi',1000,15,122),
('6/2/2020','Chicken fried steak',550,16,123),
('6/2/2020','MeatLoafs and cheese',500,17,124),
('6/2/2020','Grilled Chicken',650,18,125),
('7/2/2020','Macaroni and cheese',300,19,126),
('7/2/2020','MeatLoafs and cheese',500,20,127),
('7/2/2020','MeatLoafs and cheese',500,21,128),
('7/2/2020','Chicken fried steak',550,22,129),
('7/2/2020','Macaroni and cheese',300,23,130),
('7/2/2020','MeatLoafs and cheese',500,24,131),
('8/2/2020','MeatLoafs and cheese',500,25,132),
('8/2/2020','Chicken fried steak',550,26,133),
('8/2/2020','Spiced Pita Chips',200,27,134),
('8/2/2020','Macaroni and cheese',300,28,135),
('9/2/2020','MeatLoafs and cheese',500,29,136),
('9/2/2020','Spiced Pita Chips',200,20,137),
('9/2/2020','Mexican Lasagna',500,30,138),
('9/2/2020','Grilled Chicken',650,31,139),
('9/2/2020','MeatLoafs and cheese',500,32,140),
('9/2/2020','Macaroni and cheese',300,33,141),
('9/2/2020','Grilled Chicken',650,34,142),
('9/2/2020','MeatLoafs and cheese',500,35,143),
('10/2/2020','Mexican Lasagna',500,37,144),
('10/2/2020','MeatLoafs and cheese',500,36,145),
('10/2/2020','Grilled Chicken',650,38,146),
('10/2/2020','Mexican Lasagna',500,39,147),
('11/2/2020','MeatLoafs and cheese',500,40,148),
('11/2/2020','Mexican Lasagna',500,41,149),
('11/2/2020','MeatLoafs and cheese',500,42,150),
('11/2/2020','Mexican Lasagna',500,43,151),
('11/2/2020','MeatLoafs and cheese',500,44,152),
('12/2/2020','Spiced Pita Chips',200,45,153),
('12/2/2020','Spiced Pita Chips',200,46,154),
('12/2/2020','Tender Salsa Beef',450,47,155),
('12/2/2020','Ackee and saltfish',100,48,156),
('13/2/2020','Grilled Chicken',650,47,157),
('13/2/2020','Ackee and saltfish',100,43,158),
('13/2/2020','Macaroni and cheese',300,49,159),
('13/2/2020','Ackee and saltfish',100,50,160),
('13/2/2020','Macaroni and cheese',300,51,161),
('13/2/2020','Grilled Chicken',650,52,162),
('13/2/2020','Ackee and saltfish',100,53,163),
('14/2/2020','Macaroni and cheese',300,53,164),
('14/2/2020','Ackee and saltfish',100,54,165),
('14/2/2020','Ackee and saltfish',100,55,166),
('14/2/2020','Grilled Chicken',650,56,167),
('14/2/2020','Ackee and saltfish',100,23,168),
('14/2/2020','Ackee and saltfish',100,33,169),
('15/2/2020','Macaroni and cheese',300,1,170),
('15/2/2020','Tender Salsa Beef',450,27,171),
('15/2/2020','Tender Salsa Beef',450,17,172),
('16/2/2020','Macaroni and cheese',300,33,173),
('16/2/2020','Ackee and saltfish',100,35,174),
('16/2/2020','Grilled Chicken',650,38,175),
('16/2/2020','Ackee and saltfish',100,9,176),
('16/2/2020','Tender Salsa Beef',450,7,177),
('17/2/2020','Grilled Chicken',650,5,178),
('17/2/2020','Spiced Olives',150,1,179),
('17/2/2020','Chipped beef on toast',300,2,180),
('17/2/2020','Spiced Olives',150,8,181),
('18/2/2020','Chicken Karahi',1000,14,182),
('18/2/2020','Spiced Olives',150,16,183),
('18/2/2020','Chicken Karahi',1000,14,184),
('19/2/2020','Spiced Olives',150,26,185),
('19/2/2020','Buffalo wings',1000,25,186),
('19/2/2020','Spiced Olives',150,56,187),
('19/2/2020','Buffalo wings',1000,15,188),
('20/2/2020','Spiced Olives',150,17,189),
('20/2/2020','Spiced Olives',150,18,190),
('20/2/2020','Buffalo wings',1000,25,191),
('21/2/2020','Chicken Karahi',1000,24,192),
('22/2/2020','Spiced Olives',150,26,193),
('23/2/2020','Buffalo wings',1000,25,194),
('24/2/2020','Spiced Olives',150,38,195),
('24/2/2020','Chipped beef on toast',300,34,196),
('25/2/2020','Spiced Olives',150,39,197),
('25/2/2020','Buffalo wings',1000,40,198),
('25/2/2020','Spiced Olives',150,42,199),
('25/2/2020','Chipped beef on toast',300,43,200),
('7/3/2020','Ackee and saltfish',100,44,242),
('2/3/2020','Chipped beef on toast',300,45,244),
('15/3/2020','Biscuits and gravy',170,46,201),
('6/3/2020','Buffalo wings',1000,47,205),
('5/3/2020','Chipped beef on toast',300,48,203),
('15/3/2020','Chicken Karahi',1000,49,206),
('22/3/2020','Mango and Peach Juice',200,49,207),
('30/3/2020','Spiced Pita Chips',200,50,208),
('15/3/2020','Eggless Chocolate Mousse',300,51,210),
('11/3/2020','Yogurt Dip',100,52,209),
('3/3/2020','MeatLoafs and cheese',500,53,211),
('3/3/2020','MeatLoafs and cheese',500,58,212),
('4/3/2020','Chicken Karahi',1000,57,213),
('4/3/2020','MeatLoafs and cheese',500,50,214),
('4/3/2020','Chicken Karahi',1000,57,215),
('5/3/2020','Chicken fried steak',550,53,216),
('5/3/2020','MeatLoafs and cheese',500,59,217),
('5/3/2020','Chicken Karahi',1000,61,218),
('5/3/2020','Tender Salsa Beef',450,60,219),
('5/3/2020','Tender Salsa Beef',450,63,220),
('6/3/2020','Chicken Karahi',1000,64,221),
('6/3/2020','Chicken Karahi',1000,65,222),
('6/3/2020','Chicken fried steak',550,66,223),
('6/3/2020','MeatLoafs and cheese',500,67,224),
('6/3/2020','Grilled Chicken',650,68,225),
('7/3/2020','Macaroni and cheese',300,69,226),
('7/3/2020','MeatLoafs and cheese',500,70,227),
('7/3/2020','MeatLoafs and cheese',500,71,228),
('7/3/2020','Chicken fried steak',550,72,229),
('7/3/2020','Macaroni and cheese',300,73,230),
('7/3/2020','MeatLoafs and cheese',500,74,231),
('8/3/2020','MeatLoafs and cheese',500,75,232),
('8/3/2020','Chicken fried steak',550,76,233),
('8/3/2020','Spiced Pita Chips',200,77,234),
('8//2020','Macaroni and cheese',300,78,235),
('9/3/2020','MeatLoafs and cheese',500,79,236),
('9/3/2020','Spiced Pita Chips',200,80,237),
('9/3/2020','Mexican Lasagna',500,81,238),
('9/3/2020','Grilled Chicken',650,81,239),
('9/3/2020','MeatLoafs and cheese',500,82,240),
('9/3/2020','Macaroni and cheese',300,83,241),
('9/3/2020','Grilled Chicken',650,84,242),
('9/3/2020','MeatLoafs and cheese',500,85,243),
('10/3/2020','Mexican Lasagna',500,87,244),
('10/3/2020','MeatLoafs and cheese',500,86,245),
('10/3/2020','Grilled Chicken',650,88,246),
('10/3/2020','Mexican Lasagna',500,89,247),
('11/3/2020','MeatLoafs and cheese',500,90,248),
('11/3/2020','Mexican Lasagna',500,91,249),
('11/3/2020','MeatLoafs and cheese',500,92,250),
('11/3/2020','Mexican Lasagna',500,93,251),
('11/3/2020','MeatLoafs and cheese',500,94,252),
('12/3/2020','Spiced Pita Chips',200,95,253),
('12/3/2020','Spiced Pita Chips',200,96,254),
('12/3/2020','Tender Salsa Beef',450,97,255),
('12/3/2020','Ackee and saltfish',100,98,256),
('13/3/2020','Grilled Chicken',650,97,257),
('13/3/2020','Ackee and saltfish',100,98,258),
('13/3/2020','Macaroni and cheese',300,99,259),
('13/3/2020','Ackee and saltfish',100,100,260),
('13/3/2020','Macaroni and cheese',300,101,261),
('13/3/2020','Grilled Chicken',650,102,262),
('13/3/2020','Ackee and saltfish',100,103,263),
('14/3/2020','Macaroni and cheese',300,103,264),
('14/3/2020','Ackee and saltfish',100,104,265),
('14/3/2020','Ackee and saltfish',100,105,266),
('14/3/2020','Grilled Chicken',650,106,267),
('14/3/2020','Ackee and saltfish',100,107,268),
('14/3/2020','Ackee and saltfish',100,108,269),
('15/3/2020','Macaroni and cheese',300,109,270),
('15/3/2020','Tender Salsa Beef',450,110,271),
('15/3/2020','Tender Salsa Beef',450,111,272),
('16/3/2020','Macaroni and cheese',300,112,273),
('16/3/2020','Ackee and saltfish',100,113,274),
('16/3/2020','Grilled Chicken',650,114,275),
('16/3/2020','Ackee and saltfish',100,115,276),
('16/3/2020','Tender Salsa Beef',450,116,277),
('17/3/2020','Grilled Chicken',650,117,278),
('17/3/2020','Spiced Olives',150,118,279),
('17/3/2020','Chipped beef on toast',300,119,280),
('17/3/2020','Spiced Olives',150,120,281),
('18/3/2020','Chicken Karahi',1000,121,282),
('18/3/2020','Spiced Olives',150,122,283),
('18/3/2020','Chicken Karahi',1000,123,284),
('19/3/2020','Spiced Olives',150,124,285),
('19/3/2020','Buffalo wings',1000,125,286),
('19/3/2020','Spiced Olives',150,126,287),
('19/3/2020','Buffalo wings',1000,127,288),
('20/3/2020','Spiced Olives',150,128,289),
('20/3/2020','Spiced Olives',150,129,290),
('20/3/2020','Buffalo wings',1000,130,291),
('21/3/2020','Chicken Karahi',1000,131,292),
('22/3/2020','Spiced Olives',150,132,293),
('23/3/2020','Buffalo wings',1000,133,294),
('24/3/2020','Spiced Olives',150,134,295),
('24/3/2020','Chipped beef on toast',300,135,296),
('25/3/2020','Spiced Olives',150,136,297),
('25/3/2020','Buffalo wings',1000,137,298),
('25/3/2020','Spiced Olives',150,138,299),
('25/3/2020','Chipped beef on toast',300,139,300),
('25/3/2020','Buffalo wings',1000,140,301),
('25/3/2020','Spiced Olives',150,141,302),
('25/3/2020','Chipped beef on toast',300,142,303),
('7/4/2020','Ackee and saltfish',100,144,304),
('2/4/2020','Chipped beef on toast',300,145,305),
('15/4/2020','Biscuits and gravy',170,146,306),
('6/4/2020','Buffalo wings',1000,147,307),
('5/4/2020','Chipped beef on toast',300,148,308),
('15/4/2020','Chicken Karahi',1000,149,309),
('22/4/2020','Mango and Peach Juice',200,149,310),
('30/4/2020','Spiced Pita Chips',200,150,311),
('15/4/2020','Eggless Chocolate Mousse',300,151,312),
('11/4/2020','Yogurt Dip',100,152,313),
('3/4/2020','MeatLoafs and cheese',500,153,314),
('3/4/2020','MeatLoafs and cheese',500,158,315),
('4/4/2020','Chicken Karahi',1000,157,316),
('4/4/2020','MeatLoafs and cheese',500,150,314),
('4/4/2020','Chicken Karahi',1000,157,315),
('5/4/2020','Chicken fried steak',550,153,316),
('5/4/2020','MeatLoafs and cheese',500,159,317),
('5/4/2020','Chicken Karahi',1000,161,318),
('5/4/2020','Tender Salsa Beef',450,160,319),
('5/4/2020','Tender Salsa Beef',450,163,320),
('6/4/2020','Chicken Karahi',1000,164,321),
('6/4/2020','Chicken Karahi',1000,165,322),
('6/4/2020','Chicken fried steak',550,166,323),
('6/4/2020','MeatLoafs and cheese',500,167,324),
('6/4/2020','Grilled Chicken',650,168,325),
('7/4/2020','Macaroni and cheese',300,169,326),
('7/4/2020','MeatLoafs and cheese',500,170,327),
('7/4/2020','MeatLoafs and cheese',500,171,328),
('7/4/2020','Chicken fried steak',550,172,329),
('7/4/2020','Macaroni and cheese',300,173,330),
('7/4/2020','MeatLoafs and cheese',500,174,331),
('8/4/2020','MeatLoafs and cheese',500,175,332),
('8/4/2020','Chicken fried steak',550,176,333),
('8/4/2020','Spiced Pita Chips',200,177,334),
('8/4/2020','Macaroni and cheese',300,178,335),
('9/4/2020','MeatLoafs and cheese',500,179,336),
('9/4/2020','Spiced Pita Chips',200,180,337),
('9/4/2020','Mexican Lasagna',500,181,338),
('9/4/2020','Grilled Chicken',650,181,339),
('9/4/2020','MeatLoafs and cheese',500,182,340),
('9/4/2020','Macaroni and cheese',300,183,341),
('9/4/2020','Grilled Chicken',650,184,342),
('9/4/2020','MeatLoafs and cheese',500,185,343),
('10/4/2020','Mexican Lasagna',500,187,344),
('10/4/2020','MeatLoafs and cheese',500,186,345),
('10/4/2020','Grilled Chicken',650,188,346),
('10/4/2020','Mexican Lasagna',500,189,347),
('11/4/2020','MeatLoafs and cheese',500,190,348),
('11/4/2020','Mexican Lasagna',500,191,349),
('11/4/2020','MeatLoafs and cheese',500,192,350),
('11/4/2020','Mexican Lasagna',500,193,351),
('11/4/2020','MeatLoafs and cheese',500,194,352),
('12/4/2020','Spiced Pita Chips',200,195,353),
('12/4/2020','Spiced Pita Chips',200,196,354),
('12/4/2020','Tender Salsa Beef',450,197,355),
('12/4/2020','Ackee and saltfish',100,198,356),
('13/4/2020','Grilled Chicken',650,197,357),
('13/4/2020','Ackee and saltfish',100,198,358),
('13/4/2020','Macaroni and cheese',300,199,359),
('13/4/2020','Ackee and saltfish',100,200,360),
('13/4/2020','Macaroni and cheese',300,201,361),
('13/4/2020','Grilled Chicken',650,202,362),
('13/4/2020','Ackee and saltfish',100,203,363),
('14/4/2020','Macaroni and cheese',300,203,364),
('14/4/2020','Ackee and saltfish',100,204,365),
('14/4/2020','Ackee and saltfish',100,205,366),
('14/4/2020','Grilled Chicken',650,206,367),
('14/4/2020','Ackee and saltfish',100,207,368),
('14/4/2020','Ackee and saltfish',100,208,369),
('15/4/2020','Macaroni and cheese',300,209,370),
('15/4/2020','Tender Salsa Beef',450,210,371),
('15/4/2020','Tender Salsa Beef',450,211,372),
('16/4/2020','Macaroni and cheese',300,212,373),
('16/4/2020','Ackee and saltfish',100,213,374),
('16/4/2020','Grilled Chicken',650,214,375),
('16/4/2020','Ackee and saltfish',100,215,376),
('16/4/2020','Tender Salsa Beef',450,216,377),
('17/4/2020','Grilled Chicken',650,217,378),
('17/4/2020','Spiced Olives',150,218,379),
('17/4/2020','Chipped beef on toast',300,219,380),
('17/4/2020','Spiced Olives',150,220,381),
('18/4/2020','Chicken Karahi',1000,221,382),
('18/4/2020','Spiced Olives',150,222,383),
('18/4/2020','Chicken Karahi',1000,223,384),
('19/4/2020','Spiced Olives',150,224,385),
('19/4/2020','Buffalo wings',1000,225,386),
('19/4/2020','Spiced Olives',150,226,387),
('19/4/2020','Buffalo wings',1000,227,388),
('20/4/2020','Spiced Olives',150,228,389),
('20/4/2020','Spiced Olives',150,229,390),
('20/4/2020','Buffalo wings',1000,230,391),
('21/4/2020','Chicken Karahi',1000,231,392),
('22/4/2020','Spiced Olives',150,232,393),
('23/4/2020','Buffalo wings',1000,233,394),
('24/4/2020','Spiced Olives',150,234,395),
('24/4/2020','Chipped beef on toast',300,235,396),
('25/4/2020','Spiced Olives',150,236,397),
('25/4/2020','Buffalo wings',1000,237,398),
('25/4/2020','Spiced Olives',150,238,399),
('25/4/2020','Chipped beef on toast',300,239,400),
('25/4/2020','Buffalo wings',1000,240,401),
('25/4/2020','Spiced Olives',150,241,402),
('25/4/2020','Chipped beef on toast',300,242,403),
('7/5/2020','Ackee and saltfish',100,244,404),
('2/5/2020','Chipped beef on toast',300,245,405),
('15/5/2020','Biscuits and gravy',170,246,406),
('6/5/2020','Buffalo wings',1000,247,407),
('5/5/2020','Chipped beef on toast',300,248,408),
('15/5/2020','Chicken Karahi',1000,249,409),
('22/5/2020','Mango and Peach Juice',200,249,410),
('30/5/2020','Spiced Pita Chips',200,250,411),
('15/5/2020','Eggless Chocolate Mousse',300,251,412),
('11/5/2020','Yogurt Dip',100,252,413),
('3/5/2020','MeatLoafs and cheese',500,253,414),
('3/5/2020','MeatLoafs and cheese',500,258,415),
('4/5/2020','Chicken Karahi',1000,257,416),
('4/5/2020','MeatLoafs and cheese',500,250,414),
('4/5/2020','Chicken Karahi',1000,257,415),
('5/5/2020','Chicken fried steak',550,253,416),
('5/5/2020','MeatLoafs and cheese',500,259,417),
('5/5/2020','Chicken Karahi',1000,261,418),
('5/5/2020','Tender Salsa Beef',450,260,419),
('5/5/2020','Tender Salsa Beef',450,263,420),
('6/5/2020','Chicken Karahi',1000,264,421),
('6/5/2020','Chicken Karahi',1000,265,422),
('6/5/2020','Chicken fried steak',550,266,423),
('6/5/2020','MeatLoafs and cheese',500,267,424),
('6/5/2020','Grilled Chicken',650,268,425),
('7/5/2020','Macaroni and cheese',300,269,426),
('7/5/2020','MeatLoafs and cheese',500,270,427),
('7/5/2020','MeatLoafs and cheese',500,271,428),
('7/5/2020','Chicken fried steak',550,272,429),
('7/5/2020','Macaroni and cheese',300,273,430),
('7/5/2020','MeatLoafs and cheese',500,274,431),
('8/5/2020','MeatLoafs and cheese',500,275,432),
('8/5/2020','Chicken fried steak',550,276,433),
('8/5/2020','Spiced Pita Chips',200,277,434),
('8/5/2020','Macaroni and cheese',300,278,435),
('9/5/2020','MeatLoafs and cheese',500,279,436),
('9/5/2020','Spiced Pita Chips',200,280,437),
('9/5/2020','Mexican Lasagna',500,281,438),
('9/5/2020','Grilled Chicken',650,281,439),
('9/5/2020','MeatLoafs and cheese',500,282,440),
('9/5/2020','Macaroni and cheese',300,283,441),
('9/5/2020','Grilled Chicken',650,284,442),
('9/5/2020','MeatLoafs and cheese',500,285,443),
('10/5/2020','Mexican Lasagna',500,287,444),
('10/5/2020','MeatLoafs and cheese',500,286,445),
('10/5/2020','Grilled Chicken',650,288,446),
('10/5/2020','Mexican Lasagna',500,289,447),
('11/5/2020','MeatLoafs and cheese',500,290,448),
('11/5/2020','Mexican Lasagna',500,291,449),
('11/5/2020','MeatLoafs and cheese',500,292,450),
('11/5/2020','Mexican Lasagna',500,293,451),
('11/5/2020','MeatLoafs and cheese',500,294,452),
('12/5/2020','Spiced Pita Chips',200,295,453),
('12/5/2020','Spiced Pita Chips',200,296,454),
('12/5/2020','Tender Salsa Beef',450,297,455),
('12/5/2020','Ackee and saltfish',100,298,456),
('13/5/2020','Grilled Chicken',650,297,457),
('13/5/2020','Ackee and saltfish',100,298,458),
('13/5/2020','Macaroni and cheese',300,299,459),
('13/5/2020','Ackee and saltfish',100,300,460),
('13/5/2020','Macaroni and cheese',300,301,461),
('13/5/2020','Grilled Chicken',650,302,462),
('13/5/2020','Ackee and saltfish',100,303,463),
('14/5/2020','Macaroni and cheese',300,303,464),
('14/5/2020','Ackee and saltfish',100,304,465),
('14/5/2020','Ackee and saltfish',100,305,466),
('14/5/2020','Grilled Chicken',650,306,467),
('14/5/2020','Ackee and saltfish',100,307,468),
('14/5/2020','Ackee and saltfish',100,308,469),
('15/5/2020','Macaroni and cheese',300,309,470),
('15/5/2020','Tender Salsa Beef',450,310,471),
('15/5/2020','Tender Salsa Beef',450,311,472),
('16/5/2020','Macaroni and cheese',300,312,473),
('16/5/2020','Ackee and saltfish',100,313,474),
('16/5/2020','Grilled Chicken',650,314,475),
('16/5/2020','Ackee and saltfish',100,315,476),
('16/5/2020','Tender Salsa Beef',450,316,477),
('17/5/2020','Grilled Chicken',650,317,478),
('17/5/2020','Spiced Olives',150,318,479),
('17/5/2020','Chipped beef on toast',300,319,480),
('17/5/2020','Spiced Olives',150,320,481),
('18/5/2020','Chicken Karahi',1000,321,482),
('18/5/2020','Spiced Olives',150,322,483),
('18/5/2020','Chicken Karahi',1000,323,484),
('19/5/2020','Spiced Olives',150,324,485),
('19/5/2020','Buffalo wings',1000,325,486),
('19/5/2020','Spiced Olives',150,326,487),
('19/5/2020','Buffalo wings',1000,327,488),
('20/5/2020','Spiced Olives',150,328,489),
('20/5/2020','Spiced Olives',150,329,490),
('20/5/2020','Buffalo wings',1000,330,491),
('21/5/2020','Chicken Karahi',1000,331,492),
('22/5/2020','Spiced Olives',150,332,493),
('23/5/2020','Buffalo wings',1000,333,494),
('24/5/2020','Spiced Olives',150,334,495),
('24/5/2020','Chipped beef on toast',300,335,496),
('25/5/2020','Spiced Olives',150,336,497),
('25/5/2020','Buffalo wings',1000,337,498),
('25/5/2020','Spiced Olives',150,338,499),
('25/5/2020','Chipped beef on toast',300,339,500),
('25/5/2020','Buffalo wings',1000,340,501),
('25/5/2020','Spiced Olives',150,341,502),
('25/5/2020','Chipped beef on toast',300,342,503),
('7/6/2020','Ackee and saltfish',100,344,504),
('2/6/2020','Chipped beef on toast',300,345,505),
('15/6/2020','Biscuits and gravy',170,346,506),
('6/6/2020','Buffalo wings',1000,347,507),
('5/6/2020','Chipped beef on toast',300,348,508),
('15/6/2020','Chicken Karahi',1000,349,509),
('22/6/2020','Mango and Peach Juice',200,349,510),
('30/6/2020','Spiced Pita Chips',200,350,511),
('15/6/2020','Eggless Chocolate Mousse',300,351,512),
('11/6/2020','Yogurt Dip',100,352,513),
('3/6/2020','MeatLoafs and cheese',500,353,514),
('3/6/2020','MeatLoafs and cheese',500,358,515),
('4/6/2020','Chicken Karahi',1000,357,516),
('4/6/2020','MeatLoafs and cheese',500,350,514),
('4/6/2020','Chicken Karahi',1000,357,515),
('5/6/2020','Chicken fried steak',550,353,516),
('5/6/2020','MeatLoafs and cheese',500,359,517),
('5/6/2020','Chicken Karahi',1000,361,518),
('5/6/2020','Tender Salsa Beef',450,360,519),
('5/6/2020','Tender Salsa Beef',450,363,520),
('6/6/2020','Chicken Karahi',1000,364,521),
('6/6/2020','Chicken Karahi',1000,365,522),
('6/6/2020','Chicken fried steak',550,366,523),
('6/6/2020','MeatLoafs and cheese',500,367,524),
('6/6/2020','Grilled Chicken',650,268,325),
('7/6/2020','Macaroni and cheese',300,369,526),
('7/6/2020','MeatLoafs and cheese',500,370,527),
('7/6/2020','MeatLoafs and cheese',500,371,528),
('7/6/2020','Chicken fried steak',550,372,529),
('7/6/2020','Macaroni and cheese',300,373,530),
('7/6/2020','MeatLoafs and cheese',500,374,531),
('8/6/2020','MeatLoafs and cheese',500,375,532),
('8/6/2020','Chicken fried steak',550,376,533),
('8/6/2020','Spiced Pita Chips',200,377,534),
('8/6/2020','Macaroni and cheese',300,378,535),
('9/6/2020','MeatLoafs and cheese',500,379,536),
('9/6/2020','Spiced Pita Chips',200,380,537),
('9/6/2020','Mexican Lasagna',500,381,538),
('9/6/2020','Grilled Chicken',650,381,539),
('9/6/2020','MeatLoafs and cheese',500,382,540),
('9/6/2020','Macaroni and cheese',300,383,541),
('9/6/2020','Grilled Chicken',650,384,542),
('9/6/2020','MeatLoafs and cheese',500,385,543),
('10/6/2020','Mexican Lasagna',500,387,544),
('10/6/2020','MeatLoafs and cheese',500,386,545),
('10/6/2020','Grilled Chicken',650,388,546),
('10/6/2020','Mexican Lasagna',500,389,547),
('11/6/2020','MeatLoafs and cheese',500,390,548),
('11/6/2020','Mexican Lasagna',500,391,549),
('11/6/2020','MeatLoafs and cheese',500,392,550),
('11/6/2020','Mexican Lasagna',500,393,551),
('11/6/2020','MeatLoafs and cheese',500,394,552),
('12/6/2020','Spiced Pita Chips',200,395,553),
('12/6/2020','Spiced Pita Chips',200,396,554),
('12/6/2020','Tender Salsa Beef',450,397,555),
('12/6/2020','Ackee and saltfish',100,398,556),
('13/6/2020','Grilled Chicken',650,397,557),
('13/6/2020','Ackee and saltfish',100,398,558),
('13/6/2020','Macaroni and cheese',300,399,559),
('13/6/2020','Ackee and saltfish',100,400,560),
('13/6/2020','Macaroni and cheese',300,401,561),
('13/6/2020','Grilled Chicken',650,402,562),
('13/6/2020','Ackee and saltfish',100,403,563),
('14/6/2020','Macaroni and cheese',300,403,564),
('14/6/2020','Ackee and saltfish',100,404,565),
('14/6/2020','Ackee and saltfish',100,405,566),
('14/6/2020','Grilled Chicken',650,406,567),
('14/6/2020','Ackee and saltfish',100,407,568),
('14/6/2020','Ackee and saltfish',100,408,569),
('15/6/2020','Macaroni and cheese',300,409,570),
('15/6/2020','Tender Salsa Beef',450,410,571),
('15/6/2020','Tender Salsa Beef',450,411,572),
('16/6/2020','Macaroni and cheese',300,412,573),
('16/6/2020','Ackee and saltfish',100,413,574),
('16/6/2020','Grilled Chicken',650,414,575),
('16/6/2020','Ackee and saltfish',100,415,576),
('16/6/2020','Tender Salsa Beef',450,416,577),
('17/6/2020','Grilled Chicken',650,417,578),
('17/6/2020','Spiced Olives',150,418,579),
('17/6/2020','Chipped beef on toast',300,419,580),
('17/6/2020','Spiced Olives',150,420,581),
('18/6/2020','Chicken Karahi',1000,421,582),
('18/6/2020','Spiced Olives',150,422,583),
('18/6/2020','Chicken Karahi',1000,423,584),
('19/6/2020','Spiced Olives',150,424,585),
('19/6/2020','Buffalo wings',1000,425,586),
('19/6/2020','Spiced Olives',150,426,587),
('19/6/2020','Buffalo wings',1000,427,588),
('20/6/2020','Spiced Olives',150,428,589),
('20/6/2020','Spiced Olives',150,429,590),
('20/6/2020','Buffalo wings',1000,430,591),
('21/6/2020','Chicken Karahi',1000,431,592),
('22/6/2020','Spiced Olives',150,432,593),
('23/6/2020','Buffalo wings',1000,433,594),
('24/6/2020','Spiced Olives',150,434,595),
('24/6/2020','Chipped beef on toast',300,435,596),
('25/6/2020','Spiced Olives',150,436,597),
('25/6/2020','Buffalo wings',1000,437,598),
('25/6/2020','Spiced Olives',150,438,599),
('25/6/2020','Chipped beef on toast',300,439,600),
('25/6/2020','Buffalo wings',1000,440,601),
('25/6/2020','Spiced Olives',150,441,602),
('25/6/2020','Chipped beef on toast',300,442,603)


select * from Bill

---Tables TABLE---
drop table Tables

create table Tables(
	Table_ID int not null primary key identity(1,1), 
	Capacity int not null,
	ReservationStatus varchar(10) not null Check(ReservationStatus in ('Empty','Occupied')) ,
	Customer_ID int foreign key references Customers(Customer_ID),
	Waiter_ID int foreign key references Employees(Employee_ID)
	)



insert into Tables values
(2,'Empty',1,1),
(2,'Occupied',2,2),
(4,'Empty',3,3),
(4,'Occupied',4,4),
(5,'Occupied',5,5),
(5,'Empty',6,6),
(8,'Occupied',7,7),
(8,'Empty',8,8),
(10,'Occupied',9,9),
(10,'Empty',10,10)
select * from Tables


--Feedback Table
drop table Feedback

Create table Feedback(
	Feedback_ID int primary key identity(1,1), 
	Customer_ID int foreign key references Customers(Customer_ID),
	Order_ID int foreign key references Orders(Order_ID),
	Good varchar(3) Check (Good in ('Yes','No')) not null,
	Satisfactory varchar(3) Check (Satisfactory in ('Yes','No')) not null,
	Remarks varchar(50) default 'No remarks given'
	) 

insert into Feedback values 
(1,100,'Yes','No','Meal was fresh'),
(4,101,'No','Yes','It was fine'),
(3,102,'Yes','No','It was finely cooked'),
(6,104,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(2,103,'Yes','No','I have never eaten such dish before :)'),
(8,105,'No','Yes','Order was late'),
(5,106,'Yes','No','Meal was Delicious'),
(10,107,'Yes','No','Meal had pure speice. Loved it'),
(7,108,'Yes','No','Waiter behaved rudely'),
(9,109,'Yes','No','I will definitely come again soon'),
(11,110,'Yes','No','Meal was fresh'),
(12,111,'No','Yes','It was pure juice'),
(13,112,'Yes','No','It was fully cooked'),
(14,113,'No','Yes','Order was not delieverd on time'),
(15,114,'No','Yes','It was juicy burger'),
(16,115,'Yes','No','It was finely cooked'),
(17,116,'Yes','No','I have really enjoyed eating'),
(18,117,'No','Yes','Order was late'),
(19,118,'Yes','No','Meal was Delicious'),
(10,119,'Yes','No','Meal had pure spcies'),
(20,120,'No','Yes','It was a bad experience'),
(21,121,'Yes','No','Meal was fully cooked'),
(22,122,'No','Yes','It was fine'),
(23,123,'Yes','No','It was great'),
(24,124,'No','Yes','It was a bad experience, not coming again'),
(25,125,'Yes','No','I loved it'),
(26,126,'No','Yes','Order was late'),
(27,127,'Yes','No','Meal was like traditional'),
(28,128,'Yes','No','Meal had pure speice'),
(29,129,'Yes','No','Cashier behaved rudely'),
(30,130,'Yes','No','I will definitely come again soon'),
(31,131,'Yes','No','Meal was delicious'),
(32,132,'No','Yes','It was fine'),
(33,133,'Yes','No','It was purely cooked'),
(34,134,'No','Yes','Juice was smelly'),
(35,135,'Yes','No','It was great'),
(36,136,'No','Yes','Order was late'),
(37,137,'Yes','No','Meal was in good quantity'),
(38,138,'Yes','No','Love your food'),
(39,139,'Yes','No','Staff behaved rudely'),
(40,140,'Yes','No','I will definitely come again soon'),
(41,141,'Yes','No','Meal was fresh'),
(42,142,'No','Yes','It was fine'),
(43,134,'Yes','No','It was finely cooked'),
(44,144,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(45,145,'Yes','No','I have never eaten such dish before :)'),
(46,146,'No','Yes','Order was late'),
(47,147,'Yes','No','Meal was Delicious'),
(48,149,'Yes','No','Meal had pure speice. Loved it'),
(49,150,'Yes','No','Waiter behaved rudely'),
(50,151,'Yes','No','I will definitely come again soon'),
(51,153,'Yes','No','Meal was fresh'),
(52,154,'No','Yes','It was fine'),
(53,155,'Yes','No','It was finely cooked'),
(54,156,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(55,157,'Yes','No','I have never eaten such dish before :)'),
(56,157,'No','Yes','Order was late'),
(57,158,'Yes','No','Meal was Delicious'),
(58,159,'Yes','No','Meal had pure speice. Loved it'),
(59,160,'Yes','No','Waiter behaved rudely'),
(60,202,'Yes','No','I will definitely come again soon'),
(31,203,'Yes','No','Meal was fully cooked'),
(42,204,'No','Yes','It was fine'),
(53,303,'Yes','No','It was great'),
(34,304,'No','Yes','It was a bad experience, not coming again'),
(5,305,'Yes','No','I loved it'),
(56,306,'No','Yes','Order was late'),
(57,307,'Yes','No','Meal was like traditional'),
(38,400,'Yes','No','Meal had pure speice'),
(29,404,'Yes','No','Cashier behaved rudely'),
(10,402,'Yes','No','I will definitely come again soon'),
(1,405,'Yes','No','Meal was fresh'),
(44,555,'No','Yes','It was fine'),
(3,323,'Yes','No','It was finely cooked'),
(16,363,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(52,222,'Yes','No','I have never eaten such dish before :)'),
(38,224,'No','Yes','Order was late'),
(25,225,'Yes','No','Meal was Delicious'),
(20,230,'Yes','No','Meal had pure speice. Loved it'),
(27,213,'Yes','No','Waiter behaved rudely'),
(39,215,'Yes','No','I will definitely come again soon'),
(51,218,'Yes','No','Meal was fresh'),
(42,220,'No','Yes','It was fine'),
(23,320,'Yes','No','It was finely cooked'),
(4,400,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(15,412,'Yes','No','I have never eaten such dish before :)'),
(56,214,'No','Yes','Order was late'),
(37,199,'Yes','No','Meal was Delicious'),
(48,191,'Yes','No','Meal had pure speice. Loved it'),
(59,189,'Yes','No','Waiter behaved rudely'),
(10,188,'Yes','No','I will definitely come again soon'),
(21,186,'Yes','No','Meal was fresh'),
(32,187,'No','Yes','It was pure juice'),
(43,182,'Yes','No','It was fully cooked'),
(24,351,'No','Yes','Order was not delieverd on time'),
(35,352,'No','Yes','It was juicy burger'),
(16,353,'Yes','No','It was finely cooked'),
(57,354,'Yes','No','I have really enjoyed eating'),
(18,355,'No','Yes','Order was late'),
(29,356,'Yes','No','Meal was Delicious'),
(30,357,'Yes','No','Meal had pure spcies'),
(50,358,'No','Yes','It was a bad experience'),
(61,100,'Yes','No','Meal was fresh'),
(62,101,'No','Yes','It was fine'),
(63,102,'Yes','No','It was finely cooked'),
(64,103,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(65,104,'Yes','No','I have never eaten such dish before :)'),
(66,105,'No','Yes','Order was late'),
(67,106,'Yes','No','Meal was Delicious'),
(68,107,'Yes','No','Meal had pure speice. Loved it'),
(69,108,'Yes','No','Waiter behaved rudely'),
(70,109,'Yes','No','I will definitely come again soon'),
(71,110,'Yes','No','Meal was fresh'),
(72,111,'No','Yes','It was pure juice'),
(73,112,'Yes','No','It was fully cooked'),
(74,113,'No','Yes','Order was not delieverd on time'),
(75,114,'No','Yes','It was juicy burger'),
(76,115,'Yes','No','It was finely cooked'),
(77,116,'Yes','No','I have really enjoyed eating'),
(78,117,'No','Yes','Order was late'),
(79,118,'Yes','No','Meal was Delicious'),
(80,119,'Yes','No','Meal had pure spcies'),
(80,120,'No','Yes','It was a bad experience'),
(81,121,'Yes','No','Meal was fully cooked'),
(82,122,'No','Yes','It was fine'),
(83,123,'Yes','No','It was great'),
(84,124,'No','Yes','It was a bad experience, not coming again'),
(85,125,'Yes','No','I loved it'),
(86,126,'No','Yes','Order was late'),
(87,127,'Yes','No','Meal was like traditional'),
(88,128,'Yes','No','Meal had pure speice'),
(89,129,'Yes','No','Cashier behaved rudely'),
(90,130,'Yes','No','I will definitely come again soon'),
(91,131,'Yes','No','Meal was delicious'),
(92,132,'No','Yes','It was fine'),
(93,133,'Yes','No','It was purely cooked'),
(94,134,'No','Yes','Juice was smelly'),
(95,135,'Yes','No','It was great'),
(96,136,'No','Yes','Order was late'),
(97,137,'Yes','No','Meal was in good quantity'),
(98,138,'Yes','No','Love your food'),
(99,139,'Yes','No','Staff behaved rudely'),
(100,140,'Yes','No','I will definitely come again soon'),
(101,141,'Yes','No','Meal was fresh'),
(102,142,'No','Yes','It was fine'),
(103,143,'Yes','No','It was finely cooked'),
(104,144,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(105,145,'Yes','No','I have never eaten such dish before :)'),
(106,146,'No','Yes','Order was late'),
(107,147,'Yes','No','Meal was Delicious'),
(108,148,'Yes','No','Meal had pure speice. Loved it'),
(109,149,'Yes','No','Waiter behaved rudely'),
(110,150,'Yes','No','I will definitely come again soon'),
(111,151,'Yes','No','Meal was fresh'),
(112,152,'No','Yes','It was fine'),
(113,153,'Yes','No','It was finely cooked'),
(114,154,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(115,155,'Yes','No','I have never eaten such dish before :)'),
(116,156,'No','Yes','Order was late'),
(117,157,'Yes','No','Meal was Delicious'),
(118,158,'Yes','No','Meal had pure speice. Loved it'),
(119,159,'Yes','No','Waiter behaved rudely'),
(120,160,'Yes','No','I will definitely come again soon'),
(121,161,'Yes','No','Meal was fully cooked'),
(122,162,'No','Yes','It was fine'),
(123,163,'Yes','No','It was great'),
(124,164,'No','Yes','It was a bad experience, not coming again'),
(125,165,'Yes','No','I loved it'),
(126,166,'No','Yes','Order was late'),
(127,167,'Yes','No','Meal was like traditional'),
(128,168,'Yes','No','Meal had pure speice'),
(129,169,'Yes','No','Cashier behaved rudely'),
(130,170,'Yes','No','I will definitely come again soon'),
(131,171,'Yes','No','Meal was fresh'),
(132,172,'No','Yes','It was fine'),
(133,173,'Yes','No','It was finely cooked'),
(134,174,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(135,175,'Yes','No','I have never eaten such dish before :)'),
(136,176,'No','Yes','Order was late'),
(137,177,'Yes','No','Meal was Delicious'),
(138,178,'Yes','No','Meal had pure speice. Loved it'),
(139,179,'Yes','No','Waiter behaved rudely'),
(140,180,'Yes','No','I will definitely come again soon'),
(141,181,'Yes','No','Meal was fresh'),
(142,182,'No','Yes','It was fine'),
(143,183,'Yes','No','It was finely cooked'),
(144,184,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(145,185,'Yes','No','I have never eaten such dish before :)'),
(146,186,'No','Yes','Order was late'),
(147,187,'Yes','No','Meal was Delicious'),
(148,188,'Yes','No','Meal had pure speice. Loved it'),
(149,189,'Yes','No','Waiter behaved rudely'),
(150,190,'Yes','No','I will definitely come again soon'),
(151,191,'Yes','No','Meal was fresh'),
(152,192,'No','Yes','It was pure juice'),
(153,193,'Yes','No','It was fully cooked'),
(154,194,'No','Yes','Order was not delieverd on time'),
(155,195,'No','Yes','It was juicy burger'),
(156,196,'Yes','No','It was finely cooked'),
(157,197,'Yes','No','I have really enjoyed eating'),
(158,198,'No','Yes','Order was late'),
(159,199,'Yes','No','Meal was Delicious'),
(160,200,'Yes','No','Meal had pure spcies'),
(161,201,'No','Yes','It was a bad experience'),
(162,202,'No','Yes','It was fine'),
(163,203,'Yes','No','It was finely cooked'),
(164,204,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(165,205,'Yes','No','I have never eaten such dish before :)'),
(166,206,'No','Yes','Order was late'),
(167,207,'Yes','No','Meal was Delicious'),
(168,208,'Yes','No','Meal had pure speice. Loved it'),
(169,209,'Yes','No','Waiter behaved rudely'),
(170,210,'Yes','No','I will definitely come again soon'),
(171,211,'Yes','No','Meal was fresh'),
(172,212,'No','Yes','It was pure juice'),
(173,213,'Yes','No','It was fully cooked'),
(174,214,'No','Yes','Order was not delieverd on time'),
(175,215,'No','Yes','It was juicy burger'),
(176,216,'Yes','No','It was finely cooked'),
(177,217,'Yes','No','I have really enjoyed eating'),
(178,218,'No','Yes','Order was late'),
(179,219,'Yes','No','Meal was Delicious'),
(180,220,'Yes','No','Meal had pure spcies'),
(180,221,'No','Yes','It was a bad experience'),
(181,222,'Yes','No','Meal was fully cooked'),
(182,223,'No','Yes','It was fine'),
(183,224,'Yes','No','It was great'),
(184,225,'No','Yes','It was a bad experience, not coming again'),
(185,226,'Yes','No','I loved it'),
(186,227,'No','Yes','Order was late'),
(187,228,'Yes','No','Meal was like traditional'),
(188,229,'Yes','No','Meal had pure speice'),
(189,230,'Yes','No','Cashier behaved rudely'),
(190,231,'Yes','No','I will definitely come again soon'),
(191,232,'Yes','No','Meal was delicious'),
(192,233,'No','Yes','It was fine'),
(193,234,'Yes','No','It was purely cooked'),
(194,235,'No','Yes','Juice was smelly'),
(195,236,'Yes','No','It was great'),
(196,237,'No','Yes','Order was late'),
(197,238,'Yes','No','Meal was in good quantity'),
(198,239,'Yes','No','Love your food'),
(199,240,'Yes','No','Staff behaved rudely'),
(200,241,'Yes','No','I will definitely come again soon'),
(201,242,'Yes','No','Meal was fresh'),
(202,243,'No','Yes','It was fine'),
(203,244,'Yes','No','It was finely cooked'),
(204,245,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(205,246,'Yes','No','I have never eaten such dish before :)'),
(206,247,'No','Yes','Order was late'),
(207,248,'Yes','No','Meal was Delicious'),
(208,249,'Yes','No','Meal had pure speice. Loved it'),
(209,250,'Yes','No','Waiter behaved rudely'),
(210,251,'Yes','No','I will definitely come again soon'),
(211,252,'Yes','No','Meal was fresh'),
(212,253,'No','Yes','It was fine'),
(213,254,'Yes','No','It was finely cooked'),
(214,255,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(215,256,'Yes','No','I have never eaten such dish before :)'),
(216,257,'No','Yes','Order was late'),
(217,258,'Yes','No','Meal was Delicious'),
(218,259,'Yes','No','Meal had pure speice. Loved it'),
(219,260,'Yes','No','Waiter behaved rudely'),
(220,261,'Yes','No','I will definitely come again soon'),
(221,262,'Yes','No','Meal was fully cooked'),
(222,263,'No','Yes','It was fine'),
(223,264,'Yes','No','It was great'),
(224,265,'No','Yes','It was a bad experience, not coming again'),
(225,266,'Yes','No','I loved it'),
(226,267,'No','Yes','Order was late'),
(227,268,'Yes','No','Meal was like traditional'),
(228,269,'Yes','No','Meal had pure speice'),
(229,270,'Yes','No','Cashier behaved rudely'),
(230,271,'Yes','No','I will definitely come again soon'),
(231,272,'Yes','No','Meal was fresh'),
(232,273,'No','Yes','It was fine'),
(233,274,'Yes','No','It was finely cooked'),
(234,275,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(235,276,'Yes','No','I have never eaten such dish before :)'),
(236,277,'No','Yes','Order was late'),
(237,278,'Yes','No','Meal was Delicious'),
(238,279,'Yes','No','Meal had pure speice. Loved it'),
(239,280,'Yes','No','Waiter behaved rudely'),
(240,281,'Yes','No','I will definitely come again soon'),
(241,282,'Yes','No','Meal was fresh'),
(242,283,'No','Yes','It was fine'),
(243,284,'Yes','No','It was finely cooked'),
(244,285,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(245,286,'Yes','No','I have never eaten such dish before :)'),
(246,287,'No','Yes','Order was late'),
(247,288,'Yes','No','Meal was Delicious'),
(248,289,'Yes','No','Meal had pure speice. Loved it'),
(249,290,'Yes','No','Waiter behaved rudely'),
(250,291,'Yes','No','I will definitely come again soon'),
(251,292,'Yes','No','Meal was fresh'),
(252,293,'No','Yes','It was pure juice'),
(253,294,'Yes','No','It was fully cooked'),
(254,295,'No','Yes','Order was not delieverd on time'),
(255,296,'No','Yes','It was juicy burger'),
(256,297,'Yes','No','It was finely cooked'),
(257,298,'Yes','No','I have really enjoyed eating'),
(258,299,'No','Yes','Order was late'),
(259,300,'Yes','No','Meal was Delicious'),
(260,301,'Yes','No','Meal had pure spcies'),
(261,302,'No','Yes','It was a bad experience'),
(262,303,'No','Yes','It was fine'),
(263,304,'Yes','No','It was finely cooked'),
(264,305,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(265,306,'Yes','No','I have never eaten such dish before :)'),
(266,307,'No','Yes','Order was late'),
(267,308,'Yes','No','Meal was Delicious'),
(268,309,'Yes','No','Meal had pure speice. Loved it'),
(269,310,'Yes','No','Waiter behaved rudely'),
(270,311,'Yes','No','I will definitely come again soon'),
(271,312,'Yes','No','Meal was fresh'),
(272,313,'No','Yes','It was pure juice'),
(273,314,'Yes','No','It was fully cooked'),
(274,315,'No','Yes','Order was not delieverd on time'),
(275,316,'No','Yes','It was juicy burger'),
(276,317,'Yes','No','It was finely cooked'),
(277,318,'Yes','No','I have really enjoyed eating'),
(278,319,'No','Yes','Order was late'),
(279,320,'Yes','No','Meal was Delicious'),
(280,321,'Yes','No','Meal had pure spcies'),
(280,322,'No','Yes','It was a bad experience'),
(281,323,'Yes','No','Meal was fully cooked'),
(282,324,'No','Yes','It was fine'),
(283,325,'Yes','No','It was great'),
(284,326,'No','Yes','It was a bad experience, not coming again'),
(285,327,'Yes','No','I loved it'),
(286,328,'No','Yes','Order was late'),
(287,329,'Yes','No','Meal was like traditional'),
(288,330,'Yes','No','Meal had pure speice'),
(289,331,'Yes','No','Cashier behaved rudely'),
(290,332,'Yes','No','I will definitely come again soon'),
(291,333,'Yes','No','Meal was delicious'),
(292,334,'No','Yes','It was fine'),
(293,335,'Yes','No','It was purely cooked'),
(294,336,'No','Yes','Juice was smelly'),
(295,337,'Yes','No','It was great'),
(296,338,'No','Yes','Order was late'),
(297,339,'Yes','No','Meal was in good quantity'),
(298,340,'Yes','No','Love your food'),
(299,341,'Yes','No','Staff behaved rudely'),
(300,342,'Yes','No','I will definitely come again soon'),
(301,343,'Yes','No','Meal was fresh'),
(302,344,'No','Yes','It was fine'),
(303,345,'Yes','No','It was finely cooked'),
(304,346,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(305,347,'Yes','No','I have never eaten such dish before :)'),
(306,348,'No','Yes','Order was late'),
(307,349,'Yes','No','Meal was Delicious'),
(308,350,'Yes','No','Meal had pure speice. Loved it'),
(309,351,'Yes','No','Waiter behaved rudely'),
(310,352,'Yes','No','I will definitely come again soon'),
(311,353,'Yes','No','Meal was fresh'),
(312,354,'No','Yes','It was fine'),
(313,355,'Yes','No','It was finely cooked'),
(314,356,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(315,357,'Yes','No','I have never eaten such dish before :)'),
(316,358,'No','Yes','Order was late'),
(317,359,'Yes','No','Meal was Delicious'),
(318,360,'Yes','No','Meal had pure speice. Loved it'),
(319,361,'Yes','No','Waiter behaved rudely'),
(320,362,'Yes','No','I will definitely come again soon'),
(321,363,'Yes','No','Meal was fully cooked'),
(322,364,'No','Yes','It was fine'),
(323,365,'Yes','No','It was great'),
(324,366,'No','Yes','It was a bad experience, not coming again'),
(325,367,'Yes','No','I loved it'),
(326,368,'No','Yes','Order was late'),
(327,369,'Yes','No','Meal was like traditional'),
(328,370,'Yes','No','Meal had pure speice'),
(329,371,'Yes','No','Cashier behaved rudely'),
(330,372,'Yes','No','I will definitely come again soon'),
(331,372,'Yes','No','Meal was fresh'),
(332,374,'No','Yes','It was fine'),
(333,375,'Yes','No','It was finely cooked'),
(334,376,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(335,377,'Yes','No','I have never eaten such dish before :)'),
(336,378,'No','Yes','Order was late'),
(337,379,'Yes','No','Meal was Delicious'),
(338,380,'Yes','No','Meal had pure speice. Loved it'),
(339,381,'Yes','No','Waiter behaved rudely'),
(340,382,'Yes','No','I will definitely come again soon'),
(341,383,'Yes','No','Meal was fresh'),
(342,384,'No','Yes','It was fine'),
(343,385,'Yes','No','It was finely cooked'),
(344,386,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(345,387,'Yes','No','I have never eaten such dish before :)'),
(346,388,'No','Yes','Order was late'),
(347,389,'Yes','No','Meal was Delicious'),
(348,390,'Yes','No','Meal had pure speice. Loved it'),
(349,391,'Yes','No','Waiter behaved rudely'),
(350,392,'Yes','No','I will definitely come again soon'),
(351,393,'Yes','No','Meal was fresh'),
(352,394,'No','Yes','It was pure juice'),
(353,395,'Yes','No','It was fully cooked'),
(354,396,'No','Yes','Order was not delieverd on time'),
(355,397,'No','Yes','It was juicy burger'),
(356,398,'Yes','No','It was finely cooked'),
(357,399,'Yes','No','I have really enjoyed eating'),
(358,400,'No','Yes','Order was late'),
(359,401,'Yes','No','Meal was Delicious'),
(360,402,'Yes','No','Meal had pure spcies'),
(361,403,'No','Yes','It was a bad experience'),
(362,404,'No','Yes','It was fine'),
(363,405,'Yes','No','It was finely cooked'),
(364,406,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(365,407,'Yes','No','I have never eaten such dish before :)'),
(366,408,'No','Yes','Order was late'),
(367,409,'Yes','No','Meal was Delicious'),
(368,410,'Yes','No','Meal had pure speice. Loved it'),
(369,411,'Yes','No','Waiter behaved rudely'),
(370,412,'Yes','No','I will definitely come again soon'),
(371,413,'Yes','No','Meal was fresh'),
(372,414,'No','Yes','It was pure juice'),
(373,415,'Yes','No','It was fully cooked'),
(374,416,'No','Yes','Order was not delieverd on time'),
(375,417,'No','Yes','It was juicy burger'),
(376,418,'Yes','No','It was finely cooked'),
(377,419,'Yes','No','I have really enjoyed eating'),
(378,420,'No','Yes','Order was late'),
(379,421,'Yes','No','Meal was Delicious'),
(380,422,'Yes','No','Meal had pure spcies'),
(380,423,'No','Yes','It was a bad experience'),
(381,424,'Yes','No','Meal was fully cooked'),
(382,425,'No','Yes','It was fine'),
(383,426,'Yes','No','It was great'),
(384,427,'No','Yes','It was a bad experience, not coming again'),
(385,428,'Yes','No','I loved it'),
(386,429,'No','Yes','Order was late'),
(387,430,'Yes','No','Meal was like traditional'),
(388,431,'Yes','No','Meal had pure speice'),
(389,432,'Yes','No','Cashier behaved rudely'),
(390,433,'Yes','No','I will definitely come again soon'),
(391,434,'Yes','No','Meal was delicious'),
(392,435,'No','Yes','It was fine'),
(393,436,'Yes','No','It was purely cooked'),
(394,437,'No','Yes','Juice was smelly'),
(395,438,'Yes','No','It was great'),
(396,439,'No','Yes','Order was late'),
(397,440,'Yes','No','Meal was in good quantity'),
(398,441,'Yes','No','Love your food'),
(399,442,'Yes','No','Staff behaved rudely'),
(400,443,'Yes','No','I will definitely come again soon'),
(401,444,'Yes','No','Meal was fresh'),
(402,445,'No','Yes','It was fine'),
(403,446,'Yes','No','It was finely cooked'),
(404,447,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(405,448,'Yes','No','I have never eaten such dish before :)'),
(406,449,'No','Yes','Order was late'),
(407,450,'Yes','No','Meal was Delicious'),
(408,451,'Yes','No','Meal had pure speice. Loved it'),
(409,452,'Yes','No','Waiter behaved rudely'),
(410,453,'Yes','No','I will definitely come again soon'),
(411,454,'Yes','No','Meal was fresh'),
(412,455,'No','Yes','It was fine'),
(413,456,'Yes','No','It was finely cooked'),
(414,457,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(415,458,'Yes','No','I have never eaten such dish before :)'),
(416,459,'No','Yes','Order was late'),
(417,460,'Yes','No','Meal was Delicious'),
(418,461,'Yes','No','Meal had pure speice. Loved it'),
(419,462,'Yes','No','Waiter behaved rudely'),
(420,463,'Yes','No','I will definitely come again soon'),
(421,464,'Yes','No','Meal was fully cooked'),
(422,465,'No','Yes','It was fine'),
(423,466,'Yes','No','It was great'),
(424,467,'No','Yes','It was a bad experience, not coming again'),
(425,468,'Yes','No','I loved it'),
(426,469,'No','Yes','Order was late'),
(427,470,'Yes','No','Meal was like traditional'),
(428,471,'Yes','No','Meal had pure speice'),
(429,472,'Yes','No','Cashier behaved rudely'),
(430,473,'Yes','No','I will definitely come again soon'),
(431,474,'Yes','No','Meal was fresh'),
(432,475,'No','Yes','It was fine'),
(433,476,'Yes','No','It was finely cooked'),
(434,477,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(435,478,'Yes','No','I have never eaten such dish before :)'),
(436,479,'No','Yes','Order was late'),
(437,480,'Yes','No','Meal was Delicious'),
(438,481,'Yes','No','Meal had pure speice. Loved it'),
(439,482,'Yes','No','Waiter behaved rudely'),
(440,483,'Yes','No','I will definitely come again soon'),
(441,484,'Yes','No','Meal was fresh'),
(442,485,'No','Yes','It was fine'),
(443,486,'Yes','No','It was finely cooked'),
(444,487,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(445,488,'Yes','No','I have never eaten such dish before :)'),
(446,489,'No','Yes','Order was late'),
(447,490,'Yes','No','Meal was Delicious'),
(448,491,'Yes','No','Meal had pure speice. Loved it'),
(449,492,'Yes','No','Waiter behaved rudely'),
(450,493,'Yes','No','I will definitely come again soon'),
(451,494,'Yes','No','Meal was fresh'),
(452,495,'No','Yes','It was pure juice'),
(453,496,'Yes','No','It was fully cooked'),
(454,497,'No','Yes','Order was not delieverd on time'),
(455,498,'No','Yes','It was juicy burger'),
(456,499,'Yes','No','It was finely cooked'),
(457,500,'Yes','No','I have really enjoyed eating'),
(458,501,'No','Yes','Order was late'),
(459,502,'Yes','No','Meal was Delicious'),
(460,503,'Yes','No','Meal had pure spcies'),
(461,504,'No','Yes','It was a bad experience'),
(462,505,'No','Yes','It was fine'),
(463,506,'Yes','No','It was finely cooked'),
(464,507,'No','Yes','It was a bad experience, Chicken Karahi was cold'),
(465,508,'Yes','No','I have never eaten such dish before :)'),
(466,509,'No','Yes','Order was late'),
(467,510,'Yes','No','Meal was Delicious'),
(468,511,'Yes','No','Meal had pure speice. Loved it'),
(469,512,'Yes','No','Waiter behaved rudely'),
(470,513,'Yes','No','I will definitely come again soon'),
(471,514,'Yes','No','Meal was fresh'),
(472,515,'No','Yes','It was pure juice'),
(473,516,'Yes','No','It was fully cooked'),
(474,517,'No','Yes','Order was not delieverd on time'),
(475,518,'No','Yes','It was juicy burger'),
(476,519,'Yes','No','It was finely cooked'),
(477,520,'Yes','No','I have really enjoyed eating'),
(478,521,'No','Yes','Order was late'),
(479,522,'Yes','No','Meal was Delicious'),
(480,523,'Yes','No','Meal had pure spcies'),
(480,524,'No','Yes','It was a bad experience'),
(481,525,'Yes','No','Meal was fully cooked'),
(82,526,'No','Yes','It was fine'),
(483,527,'Yes','No','It was great'),
(484,528,'No','Yes','It was a bad experience, not coming again'),
(485,529,'Yes','No','I loved it'),
(486,530,'No','Yes','Order was late'),
(487,531,'Yes','No','Meal was like traditional'),
(488,532,'Yes','No','Meal had pure speice'),
(489,533,'Yes','No','Cashier behaved rudely'),
(490,534,'Yes','No','I will definitely come again soon'),
(491,535,'Yes','No','Meal was delicious'),
(492,536,'No','Yes','It was fine'),
(493,537,'Yes','No','It was purely cooked'),
(494,538,'No','Yes','Juice was smelly'),
(495,539,'Yes','No','It was great'),
(496,540,'No','Yes','Order was late'),
(497,541,'Yes','No','Meal was in good quantity'),
(498,542,'Yes','No','Love your food'),
(499,543,'Yes','No','Staff behaved rudely'),
(500,544,'Yes','No','I will definitely come again soon')

select * from Feedback



