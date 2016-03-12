delete from BSST_APA_APP_PARAM;

delete from BSST_APP_APP;
insert into BSST_APP_APP(APP_S_NAME,APP_S_DESC) values ('UrbanBot','UrbanBot');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'bot_url','https://api.telegram.org/<bot_token>/','S');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'bot_file_url','https://api.telegram.org/file/<bot_token>/','S');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'external_url_core','http://localhost:8080/cy-bss-core','S');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'download_path','/home/antonio/cy-urbanbot/downloads/','S');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'default_latitude','40.707137','N');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'default_longitude','17.659495','N');

insert into BSST_APA_APP_PARAM(APP_N_APP_ID,APA_S_NAME,APA_S_VALUE,APA_C_TYPE)
values (
(select APP_N_APP_ID from BSST_APP_APP where APP_S_NAME='UrbanBot'),
'media_mediation','Y','S');


delete from BSST_TCL_TICKET_CATEGORY_LANG;
delete from BSST_TCA_TICKET_CATEGORY;

ALTER TABLE BSST_TCA_TICKET_CATEGORY AUTO_INCREMENT= 1;	

insert into BSST_TCA_TICKET_CATEGORY(TCA_S_NAME,TCA_S_DESC)
values ('Streets','Streets');
insert into BSST_TCA_TICKET_CATEGORY(TCA_S_NAME,TCA_S_DESC)
values ('Garbage','Garbage');
insert into BSST_TCA_TICKET_CATEGORY(TCA_S_NAME,TCA_S_DESC)
values ('Lighting','Lighting');
insert into BSST_TCA_TICKET_CATEGORY(TCA_S_NAME,TCA_S_DESC)
values ('Other','Other');


insert into BSST_TCL_TICKET_CATEGORY_LANG(TCA_N_CATEGORY_ID,LAN_N_LANG_ID,TCL_S_NAME,TCL_S_DESC)
values (
(SELECT TCA_N_CATEGORY_ID from BSST_TCA_TICKET_CATEGORY WHERE TCA_S_NAME='Streets'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Strade','Strade');
insert into BSST_TCL_TICKET_CATEGORY_LANG(TCA_N_CATEGORY_ID,LAN_N_LANG_ID,TCL_S_NAME,TCL_S_DESC)
values (
(SELECT TCA_N_CATEGORY_ID from BSST_TCA_TICKET_CATEGORY WHERE TCA_S_NAME='Garbage'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Rifiuti','Rifiuti');
insert into BSST_TCL_TICKET_CATEGORY_LANG(TCA_N_CATEGORY_ID,LAN_N_LANG_ID,TCL_S_NAME,TCL_S_DESC)
values (
(SELECT TCA_N_CATEGORY_ID from BSST_TCA_TICKET_CATEGORY WHERE TCA_S_NAME='Lighting'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Illuminazione','Illuminazione');
insert into BSST_TCL_TICKET_CATEGORY_LANG(TCA_N_CATEGORY_ID,LAN_N_LANG_ID,TCL_S_NAME,TCL_S_DESC)
values (
(SELECT TCA_N_CATEGORY_ID from BSST_TCA_TICKET_CATEGORY WHERE TCA_S_NAME='Other'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Altro','Altro');

delete from BSST_TSL_TICKET_STATUS_LANG;		
	
INSERT INTO BSST_TSL_TICKET_STATUS_LANG(TST_N_STATUS_ID,LAN_N_LANG_ID,TSL_S_NAME,TSL_S_DESC)
VALUES (
(SELECT TST_N_STATUS_ID from BSST_TST_TICKET_STATUS WHERE TST_S_NAME='Candidate'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Candidata','Candidata');

INSERT INTO BSST_TSL_TICKET_STATUS_LANG(TST_N_STATUS_ID,LAN_N_LANG_ID,TSL_S_NAME,TSL_S_DESC)
VALUES (
(SELECT TST_N_STATUS_ID from BSST_TST_TICKET_STATUS WHERE TST_S_NAME='Open'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Aperta','Aperta');

INSERT INTO BSST_TSL_TICKET_STATUS_LANG(TST_N_STATUS_ID,LAN_N_LANG_ID,TSL_S_NAME,TSL_S_DESC)
VALUES (
(SELECT TST_N_STATUS_ID from BSST_TST_TICKET_STATUS WHERE TST_S_NAME='Resolved'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Risolta','Risolta');

INSERT INTO BSST_TSL_TICKET_STATUS_LANG(TST_N_STATUS_ID,LAN_N_LANG_ID,TSL_S_NAME,TSL_S_DESC)
VALUES (
(SELECT TST_N_STATUS_ID from BSST_TST_TICKET_STATUS WHERE TST_S_NAME='Rejected'),
(SELECT LAN_N_LANG_ID from BSST_LAN_LANGUAGE WHERE LAN_S_CODE='it'),
'Respinta','Respinta');


