/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 03/11/2015 21:08:51          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

SET CLIENTLIB 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll';

CREATE DATABASE 'C:\Users\Danilo de Canini\Desktop\BD\DATABASE.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CENTRODECUSTO (
    COD_CC     INTEGER NOT NULL,
    NUM_CC     INTEGER,
    DESC_CC    VARCHAR(60),
    ANALITICO  VARCHAR(1),
    COD_GRUPO  INTEGER
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD PRIMARY KEY (COD_CC);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD FOREIGN KEY (COD_GRUPO) REFERENCES EMPRESA (COD_EMPRESA);