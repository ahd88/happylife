create schema spring;
use spring;
/*DROP TABLE hl_users;*/
CREATE TABLE HL_USERS(
	userId BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    FNAME VARCHAR(50) NOT NULL,
	LNAME VARCHAR(20) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	USERNAME VARCHAR(15) NOT NULL,
	PASSWD VARCHAR(10) NOT NULL,
	GENDER VARCHAR(10) NOT NULL,
	LOOKINGIN VARCHAR(25) NOT NULL,
	PHONE VARCHAR(20) NOT NULL,
	IMAGE VARCHAR(50),
	DOB DATE NOT NULL,
	Age VARCHAR(5) NULL,
	RESIDENCY_STATUS VARCHAR(20),
	ABOUT_MYSELF VARCHAR(1000),
	MY_FAV VARCHAR(1000),
	PUBLIC_PHOTO VARCHAR(50),
	LastLogin TIMESTAMP,
	ProfilePostedBy VARCHAR(10),
	EthnicOrigin VARCHAR(10),
	ReligiousHistory VARCHAR(15),
	HairColor VARCHAR(10),
	BodyType VARCHAR(10),
	Beard VARCHAR(10),
	Hijab_Beard VARCHAR(20),
	Height VARCHAR(10),
	Pray VARCHAR(20),
	Sect VARCHAR(10),
	MaritalStatus VARCHAR(10),
	Children VARCHAR(10),
	LikeToHaveChildren VARCHAR(10),
	Languages VARCHAR(10),
	Profession VARCHAR (30),
	HighestQual VARCHAR(10)
);

ALTER TABLE HL_USERS RENAME COLUMN LOOKING_FOR TO MY_FAV;
ALTER TABLE HL_USERS MODIFY COLUMN beard VARCHAR(2000) NULL;
ALTER TABLE HL_USERS RENAME COLUMN beard TO NOTIFICATIONS;

select * from hl_users;
/*
ALTER TABLE HL_USERS MODIFY COLUMN Age VARCHAR(5) NULL;
ALTER TABLE HL_USERS ALTER COLUMN RENAME country TO LOOKINGIN;
*/

CREATE TABLE LOOKING_FOR(
	ID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	userId BIGINT NOT NULL references HL_USERS(userId),
	AgeL VARCHAR(5) NOT NULL,
	AgeH VARCHAR(5) NOT NULL,
	LOOKINGIN VARCHAR(100) NOT NULL,
	RESIDENCY_STATUS VARCHAR(50),
	WILLING_TO_RELOCATE VARCHAR(10) NOT NULL,
	EthnicOrigin VARCHAR(50) NOT NULL,
	ReligiousHistory VARCHAR(15) NOT NULL,
	Living_With_InLaws VARCHAR(25) NOT NULL,
	Pray VARCHAR(15) NOT NULL,
	Sect VARCHAR(10) NOT NULL,
	MaritalStatus VARCHAR(12) NOT NULL,
	HasChildren VARCHAR(10) NOT NULL,
	HasPDisability VARCHAR(10), 
	LikeToHaveChildren VARCHAR(10) NOT NULL,
	Polygamy VARCHAR(10),
	BodyType VARCHAR(20),
    HeightL VARCHAR(7),
    HeightH VARCHAR(7),
	Hijab_Beard VARCHAR(15),
	Profession VARCHAR(100),
	HighestQual VARCHAR(50),
	LOOKING_FOR VARCHAR(1000)
);

ALTER TABLE LOOKING_FOR MODIFY COLUMN AgeL VARCHAR(5) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN AgeH VARCHAR(5) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN EthnicOrigin VARCHAR(50) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN HasChildren VARCHAR(10) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN LikeToHaveChildren VARCHAR(10) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN Pray VARCHAR(15) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN WILLING_TO_RELOCATE VARCHAR(10) NULL;

ALTER TABLE LOOKING_FOR MODIFY COLUMN Living_With_InLaws VARCHAR(25) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN MaritalStatus VARCHAR(12) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN ReligiousHistory VARCHAR(15) NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN Sect VARCHAR(10)  NULL;
ALTER TABLE LOOKING_FOR MODIFY COLUMN LOOKINGIN VARCHAR(100)  NULL;


CREATE TABLE Messages(
	msgId BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	senderId BIGINT NOT NULL,
	recipientId BIGINT NOT NULL,
	msgContent VARCHAR(1000),
	msgTime timestamp,
	msgRead boolean
);

CREATE TABLE viewed(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	uid1 BIGINT NOT NULL,
	uid2 BIGINT NOT NULL,
	historyContent VARCHAR(1000),
	user1vieweduser2 boolean,
    user2vieweduser1 boolean,
    user1inviteduser2 boolean,
    user2inviteduser1 boolean
);
/*DROP TABLE RESET_PASS;*/
CREATE TABLE RESET_PASS(
	EMAIL VARCHAR(50) NOT NULL PRIMARY KEY,
    token VARCHAR(50) 
);

ALTER TABLE viewed ADD user1Notes VARCHAR(500);
ALTER TABLE viewed ADD user2Notes VARCHAR(500);
use spring;
select * from viewed;

UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS', `MaritalStatus` = 'NM', `Profession` = 'itprofessional' WHERE (`userId` = '2');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS', `MaritalStatus` = 'NM', `Profession` = 'Teacher' WHERE (`userId` = '3');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS', `MaritalStatus` = 'NM', `Profession` = 'Other' WHERE (`userId` = '4');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS', `MaritalStatus` = 'NM', `Profession` = 'Other' WHERE (`userId` = '5');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'Engineer' WHERE (`userId` = '6');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Soufi', `MaritalStatus` = 'Divorced', `Profession` = 'Optician' WHERE (`userId` = '7');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'Pharmacist' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Salafi', `MaritalStatus` = 'NM', `Profession` = 'Pharmacist' WHERE (`userId` = '9');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS' WHERE (`userId` = '1');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni' WHERE (`userId` = '10');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'semployed' WHERE (`userId` = '11');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'sales' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'sales' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'Engineer' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'Lecturer' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'SS', `MaritalStatus` = 'NM', `Profession` = 'Teacher' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni', `MaritalStatus` = 'NM', `Profession` = 'Teacher' WHERE (`userId` = '17');

UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '1');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '2');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '3');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '4');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '5');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '6');
UPDATE `spring`.`HL_USERS` SET `Pray` = '3' WHERE (`userId` = '7');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '9');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '10');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '11');
UPDATE `spring`.`HL_USERS` SET `Pray` = '1' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `Pray` = '2' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `Pray` = '3' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `Pray` = '4' WHERE (`userId` = '17');

UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '2');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '3');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '4');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '5');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '6');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '7');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '9');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '11');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'RM' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `ReligiousHistory` = 'BM' WHERE (`userId` = '17');

UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '2');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Slim' WHERE (`userId` = '3');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '4');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '1');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Slim' WHERE (`userId` = '5');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '6');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Muscular' WHERE (`userId` = '7');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '9');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '11');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Muscular' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Slim' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'preferN' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `BodyType` = 'Average' WHERE (`userId` = '17');

UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'svisa' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '10');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '11');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '17');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '5');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '1');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '2');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '3');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '4');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'svisa' WHERE (`userId` = '6');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'Citizen' WHERE (`userId` = '7');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'svisa' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `RESIDENCY_STATUS` = 'svisa' WHERE (`userId` = '9');

UPDATE `spring`.`HL_USERS` SET `LOOKINGIN` = 'India' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `LOOKINGIN` = 'India' WHERE (`userId` = '13');

UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'manonymous.png' WHERE (`userId` = '16');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'fanonymous.png' WHERE (`userId` = '17');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'manonymous.png' WHERE (`userId` = '14');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'manonymous.png' WHERE (`userId` = '13');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'manonymous.png' WHERE (`userId` = '12');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'manonymous.png' WHERE (`userId` = '10');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'fanonymous.png' WHERE (`userId` = '15');
UPDATE `spring`.`HL_USERS` SET `IMAGE` = 'fanonymous.png' WHERE (`userId` = '11');

UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='4';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='2';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='3';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='5';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='6';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='7';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='9';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='11';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='12';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='13';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Asian' WHERE `userId`='14';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='15';
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='African' WHERE `userId`='16';

UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Always' WHERE `userId`='4';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Always' WHERE `userId`='3';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='2';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='5';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='No' WHERE `userId`='6';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Sometimes' WHERE `userId`='7';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='8';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='9';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Always' WHERE `userId`='11';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='12';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='No' WHERE `userId`='13';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='14';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Always' WHERE `userId`='15';
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Yes' WHERE `userId`='16';
UPDATE `spring`.`hl_users` SET `Height`='180' WHERE `userId`='3';
UPDATE `spring`.`hl_users` SET `Height`='178' WHERE `userId`='2';
UPDATE `spring`.`hl_users` SET `Height`='181' WHERE `userId`='5';
UPDATE `spring`.`hl_users` SET `Height`='179' WHERE `userId`='6';
UPDATE `spring`.`hl_users` SET `Height`='169' WHERE `userId`='7';
UPDATE `spring`.`hl_users` SET `Height`='179' WHERE `userId`='8';
UPDATE `spring`.`hl_users` SET `Height`='181' WHERE `userId`='9';
UPDATE `spring`.`hl_users` SET `Height`='170' WHERE `userId`='11';
UPDATE `spring`.`hl_users` SET `Height`='177' WHERE `userId`='12';
UPDATE `spring`.`hl_users` SET `Height`='176' WHERE `userId`='13';
UPDATE `spring`.`hl_users` SET `Height`='182' WHERE `userId`='14';
UPDATE `spring`.`hl_users` SET `Height`='159' WHERE `userId`='15';
UPDATE `spring`.`hl_users` SET `Height`='180' WHERE `userId`='16';



/* for pure match hassan & asma */
UPDATE `spring`.`looking_for` SET `AgeL` = '24', `AgeH` = '35', `LOOKINGIN` = 'Sudan', `RESIDENCY_STATUS` = 'Citizen', `EthnicOrigin` = 'Arab', `ReligiousHistory` = 'BM', `Pray` = '5', `Sect` = 'Sunni', `MaritalStatus` = 'NM', `HasChildren` = 'None', `LikeToHaveChildren` = 'Yes', `BodyType` = 'Average', `HeightL` = '170', `HeightH` = '180', `Hijab_Beard` = 'Always', `Profession` = 'Other' WHERE (`ID` = '8');
UPDATE `spring`.`HL_USERS` SET `Sect` = 'Sunni' WHERE (`userId` = '4');
UPDATE `spring`.`hl_users` SET `Hijab_Beard`='Always' WHERE `userId`='4';
UPDATE `spring`.`hl_users` SET `Height`='175' WHERE `userId`='4';

UPDATE `spring`.`looking_for` SET `RESIDENCY_STATUS`='dontmind' WHERE `ID`='4';
UPDATE `spring`.`looking_for` SET `AgeL` = '29', `AgeH` = '40', `LOOKINGIN` = 'Sudan', `RESIDENCY_STATUS` = 'Citizen', `EthnicOrigin` = 'Arab', `ReligiousHistory` = 'dontmind', `Living_With_InLaws` = 'wc', `Pray` = '5', `Sect` = 'Sunni', `MaritalStatus` = 'NM', `HasChildren` = 'None', `LikeToHaveChildren` = 'Yes', `BodyType` = 'Average', `HeightL` = '170', `HeightH` = '182', `Hijab_Beard` = 'dontmind', `Profession` = 'Pharmacist' WHERE (`ID` = '4');
UPDATE `spring`.`HL_USERS` SET `EthnicOrigin` = 'Arab' WHERE (`userId` = '8');
UPDATE `spring`.`HL_USERS` SET `Pray` = '5' WHERE (`userId` = '8');
UPDATE `spring`.`hl_users` SET `EthnicOrigin`='Arab' WHERE `userId`='4';
/* for pure match hassan & asma */

ALTER TABLE Messages ADD FOREIGN KEY (senderId) REFERENCES HL_USERS (userId);

select * from hl_users;
select * from looking_for;
select * from Viewed;

select * from hl_users where (lookingin='Sudan' or lookingin='dontmind') and (ethnicorigin='Arab' or ethnicorigin='dontmind') and (bodytype='Average' or bodytype='dontmind') and (pray>='5' or pray='dontmind') and (sect='Sunni' or sect='dontmind') and (maritalstatus='NM' or maritalstatus='dontmind') and (profession='Pharmacist' or profession='dontmind' or profession='Other') and gender='M';
select userId from looking_for where (lookingin='Sudan' or lookingin='dontmind') and (ethnicorigin='Arab' or ethnicorigin='dontmind') and (bodytype='Average' or bodytype='dontmind') and (hijab_beard='Always' or hijab_beard='dontmind') and (pray>='5' or pray='dontmind') and (sect='SS' or sect='dontmind') and (maritalstatus='NM' or maritalstatus='dontmind') and (profession='Other' or profession='dontmind' or profession='Other');

select * from hl_users where (lookingin='Sudan' or lookingin='dontmind') and (ethnicorigin='Arab' or ethnicorigin='dontmind') and (bodytype='Average' or bodytype='dontmind') and (pray>='5' or pray='dontmind') and (sect='Sunni' or sect='dontmind') and (maritalstatus='NM' or maritalstatus='dontmind') and (profession='Pharmacist' or profession='dontmind' or profession='Other') and gender='M';

select userId from looking_for where (lookingin='Sudan' or lookingin='dontmind') and (ethnicorigin='Arab' or ethnicorigin='dontmind') and (bodytype='Average' or bodytype='dontmind') and (hijab_beard='Always' or hijab_beard='dontmind') and (pray>='5' or pray='dontmind') and (sect='SS' or sect='dontmind') and (maritalstatus='NM' or maritalstatus='dontmind') and (profession='Other' or profession='dontmind' or profession='Other');


use spring;
select * from viewed;
select * from RESET_PASS;
select * from looking_for;
select * from hl_users;
/*truncate table viewed;*/
truncate table RESET_PASS;
insert into RESET_PASS (email,token) values ('elafmirghany@gmail.com','0f6ed546-d685-4647-8141-49251a0559a4');
insert into RESET_PASS (email,token) values('mohammedsulaiman22@gmail.com','5491bc55-fc9f-46f4-a1a1-ea91cf1ee44c');
insert into RESET_PASS (email,token) values('Sumayyah@gmail.com','f528f90c-cf38-45e6-95b6-d4b30d1e0daa');
insert into RESET_PASS (email,token) values('asma.mirghany@gmail.com','f5b6041d-0e6f-4136-b7b2-a778e35815a8');
insert into RESET_PASS (email,token) values('saim@gmail.com','f5b68a1d-0e6f-4136-b7b2-a778e35815a8');
insert into RESET_PASS (email,token) values('qibati@gmail.com','0f6de546-d685-4647-8141-49251a0559a4');
insert into RESET_PASS (email,token) values('inaas@gmail.com','f5b604sz-0e6f-4136-b7b2-a778e35815a8');
insert into RESET_PASS (email,token) values('hassan_kassala@gmail.com','f5b604d1-0e6f-4136-b7cc-a778e35815a8');
insert into RESET_PASS (email,token) values('yafee@gmail.com','f5b6041d-0e6f-4156-b7b2-a778e38715a8');
insert into RESET_PASS (email,token) values('wdyahia36@gmail.com','f5b6041d-0e6f-5536-b7b2-a7782w5815a8');
insert into RESET_PASS (email,token) values('safa2020@yahoo.com','f5b6041d-0e6f-4896-b7b2-a778eas815a8');
insert into RESET_PASS (email,token) values('khizer@gmail.com','f5b6041d-0e6f-4136-b8b2-a778e35813p8');
insert into RESET_PASS (email,token) values('mubarakali.ali2@gmail.com','f5b6041d-0e6f-4136-b7b2-a7aae35815a8');
insert into RESET_PASS (email,token) values('sunasayyed@gmail.com','f5b6041d-0e6f-4136-b7b2-a778e3dfs5a8');
insert into RESET_PASS (email,token) values('sir.fartak@gmail.com','f5b6041d-0e6f-5626-b7b2-a773r35815a8');
insert into RESET_PASS (email,token) values('aboubakarissa111@gmail.com','f5b6416d-0e6f-4136-b8j2-a778e35815a8');
insert into RESET_PASS (email,token) values('t.alhaj.sa@gmail.com','f5b6041d-e96f-4696-b7b2-a778e35815a8');



UPDATE `spring`.`viewed` SET `historyContent` = 'Asma viewed Hassan\'s profile, Hassan viewed Asma\'s profile' 
	WHERE (`id` = '1');
update viewed set historyContent='' where uid1='' and uid2='';
SELECT CONCAT(c.historyContent, ' Hassan viewed Asma profile') AS historyContent, c.* 
	FROM `viewed` c where uid1='4';


select * from viewed where uid2='1' and user1vieweduser2=true;



create schema test;
use test;
create table NewLineDemo ( CountryName varchar(10) );
insert into NewLineDemo values('US');
insert into NewLineDemo values('UK');
insert into NewLineDemo values('AUS');

select * from NewLineDemo;
select concat_ws('\n',CountryName) as CountryList from NewLineDemo;