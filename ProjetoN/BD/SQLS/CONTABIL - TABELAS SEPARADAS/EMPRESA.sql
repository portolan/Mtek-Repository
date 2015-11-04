/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 03/11/2015 21:09:04          ***/
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



CREATE TABLE EMPRESA (
    COD_EMPRESA   INTEGER NOT NULL,
    CNPJ_EMPRESA  NUMERIC(18,2),
    EMP_RAZAO     VARCHAR(60),
    EMP_NOMEF     VARCHAR(60),
    EMP_ENDERECO  VARCHAR(60),
    EMP_END_NUM   INTEGER,
    EMP_BAIRRO    VARCHAR(20),
    EMP_CIDADE    VARCHAR(60),
    EMP_UF        VARCHAR(2),
    EMP_CEP       INTEGER,
    EMP_FONE      INTEGER,
    EMP_TITULAR   VARCHAR(60)
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE EMPRESA ADD PRIMARY KEY (COD_EMPRESA);