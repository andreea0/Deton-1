--------------------------------------------------------
--  File created - miercuri-aprilie-12-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CABINE
--------------------------------------------------------
  drop table cabine cascade constraints purge;
  CREATE TABLE "CABINE" 
   (	"ID_CABINA" NUMBER(10,0), 
	"CAPACITATE" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APLICATIE" ;
REM INSERTING into CABINE
SET DEFINE OFF;
Insert into CABINE (ID_CABINA,CAPACITATE) values ('1','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('2','4');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('3','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('4','6');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('5','7');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('6','6');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('7','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('8','2');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('9','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('10','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('11','4');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('12','2');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('13','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('14','7');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('15','7');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('16','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('17','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('18','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('19','4');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('20','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('21','6');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('22','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('23','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('24','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('25','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('26','6');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('27','3');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('28','1');
Insert into CABINE (ID_CABINA,CAPACITATE) values ('29','2');
--------------------------------------------------------
--  DDL for Index CABINE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CABINE_PK" ON "CABINE" ("ID_CABINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APLICATIE" ;
--------------------------------------------------------
--  Constraints for Table CABINE
--------------------------------------------------------

  ALTER TABLE "CABINE" ADD CONSTRAINT "CABINE_PK" PRIMARY KEY ("ID_CABINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APLICATIE"  ENABLE;
