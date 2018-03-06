--CREATE TABLES--

--PRIZES--
CREATE TABLE EJERCICIOU2.PRIZES
(
  PRIZE_ID          NUMBER                      NOT NULL,
  FIELD_ID          NUMBER,
  PRIZE_WINNERS_ID  NUMBER,
  CATEGORY_ID       NUMBER,
  PRIZE_YEAR        INTEGER,
  PRIZE_NAME        VARCHAR2(200),
  MOTIVATION        VARCHAR2(500)
);


ALTER TABLE EJERCICIOU2.PRIZES ADD (
  CONSTRAINT PRIZES_PK
  PRIMARY KEY
  (PRIZE_ID)
  ENABLE VALIDATE);
  
--WINNERS--
CREATE TABLE EJERCICIOU2.WINNERS
(
  WINNER_ID         NUMBER                      NOT NULL,
  WINNER_NAME       VARCHAR2(200),
  BIRTHPLACE_ID     NUMBER,
  RESIDENCE_ID      NUMBER,
  PRICE_ID          NUMBER,
  BIRTH_DATE        DATE,
  ROLE_AFFILIATION_ID  NUMBER
);


ALTER TABLE EJERCICIOU2.WINNERS ADD (
  CONSTRAINT WINNERS_PK
  PRIMARY KEY
  (WINNER_ID)
  ENABLE VALIDATE);
  
--CATEGORIES--
CREATE TABLE EJERCICIOU2.CATEGORIES
(
  CAATEGORY_ID  NUMBER                          NOT NULL,
  CATEGORY      VARCHAR2(150)
);


ALTER TABLE EJERCICIOU2.CATEGORIES ADD (
  CONSTRAINT CATEGORIES_PK
  PRIMARY KEY
  (CAATEGORY_ID)
  ENABLE VALIDATE);

--COUNTRIES--
CREATE TABLE EJERCICIOU2.COUNTRIES
(
  COUNTRY_ID  NUMBER                            NOT NULL,
  COUNTRY     VARCHAR2(100)
);


ALTER TABLE EJERCICIOU2.COUNTRIES ADD (
  CONSTRAINT COUNTRIES_PK
  PRIMARY KEY
  (COUNTRY_ID)
  ENABLE VALIDATE);

--CITIES--
CREATE TABLE EJERCICIOU2.CITIES
(
  CITY_ID  NUMBER                               NOT NULL,
  CITY     VARCHAR2(100)
);


ALTER TABLE EJERCICIOU2.CITIES ADD (
  CONSTRAINT CITIES_PK
  PRIMARY KEY
  (CITY_ID)
  ENABLE VALIDATE);

--FIELDS--
CREATE TABLE EJERCICIOU2.FIELDS
(
  FIELD_ID  NUMBER                              NOT NULL,
  FIELD     VARCHAR2(200)
);


ALTER TABLE EJERCICIOU2.FIELDS ADD (
  CONSTRAINT FIELDS_PK
  PRIMARY KEY
  (FIELD_ID)
  ENABLE VALIDATE);

--PRIZE_WINNERS--
CREATE TABLE EJERCICIOU2.PRIZE_WINNERS
(
  PRIZE_WINNERS_ID  NUMBER                      NOT NULL,
  PRIZE_ID          NUMBER,
  WINNER_ID         NUMBER,
  COUNTRY_ID        NUMBER
);


ALTER TABLE EJERCICIOU2.PRIZE_WINNERS ADD (
  CONSTRAINT PRIZE_WINNERS_PK
  PRIMARY KEY
  (PRIZE_WINNERS_ID)
  ENABLE VALIDATE);
  
--ROLES_AFFILIATIONS--
CREATE TABLE EJERCICIOU2.ROLES_AFFILIATIONS
(
  ROLES_AFFILIATIONS_ID  NUMBER                 NOT NULL,
  ROLE_AFFILIATION       VARCHAR2(500),
  COUNTRY_ID             NUMBER
);


ALTER TABLE EJERCICIOU2.ROLES_AFFILIATIONS ADD (
  CONSTRAINT ROLES_AFFILIATIONS_PK
  PRIMARY KEY
  (ROLES_AFFILIATIONS_ID)
  ENABLE VALIDATE);
  
--CREATE CONSTRAINTS--
ALTER TABLE EJERCICIOU2.PRIZES ADD 
CONSTRAINT PRIZES_R01
 FOREIGN KEY (FIELD_ID)
 REFERENCES EJERCICIOU2.FIELDS (FIELD_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.PRIZES ADD 
CONSTRAINT PRIZES_R02
 FOREIGN KEY (PRIZE_WINNERS_ID)
 REFERENCES EJERCICIOU2.PRIZE_WINNERS (PRIZE_WINNERS_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.PRIZES ADD 
CONSTRAINT PRIZES_R03
 FOREIGN KEY (CATEGORY_ID)
 REFERENCES EJERCICIOU2.CATEGORIES (CAATEGORY_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.PRIZE_WINNERS ADD 
CONSTRAINT PRIZE_WINNERS_R01
 FOREIGN KEY (PRIZE_ID)
 REFERENCES EJERCICIOU2.PRIZES (PRIZE_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.PRIZE_WINNERS ADD 
CONSTRAINT PRIZE_WINNERS_R02
 FOREIGN KEY (WINNER_ID)
 REFERENCES EJERCICIOU2.WINNERS (WINNER_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.PRIZE_WINNERS ADD 
CONSTRAINT PRIZE_WINNERS_R03
 FOREIGN KEY (COUNTRY_ID)
 REFERENCES EJERCICIOU2.COUNTRIES (COUNTRY_ID)
 ENABLE
 VALIDATE;

ALTER TABLE EJERCICIOU2.WINNERS ADD 
CONSTRAINT WINNERS_R01
 FOREIGN KEY (BIRTHPLACE_ID)
 REFERENCES EJERCICIOU2.CITIES (CITY_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.WINNERS ADD 
CONSTRAINT WINNERS_R02
 FOREIGN KEY (RESIDENCE_ID)
 REFERENCES EJERCICIOU2.COUNTRIES (COUNTRY_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.WINNERS ADD 
CONSTRAINT WINNERS_R03
 FOREIGN KEY (ROLE_AFFILIATION_ID)
 REFERENCES EJERCICIOU2.ROLES_AFFILIATIONS (ROLES_AFFILIATIONS_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EJERCICIOU2.ROLES_AFFILIATIONS ADD 
CONSTRAINT ROLES_AFFILIATIONS_R01
 FOREIGN KEY (COUNTRY_ID)
 REFERENCES EJERCICIOU2.COUNTRIES (COUNTRY_ID)
 ENABLE
 VALIDATE;
 
