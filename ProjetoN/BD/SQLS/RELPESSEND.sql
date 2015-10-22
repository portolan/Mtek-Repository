/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:25:05                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE RELPESSEND (
    RPE_EMPRESA      INTEGER NOT NULL,
    RPE_PESSOA       VARCHAR(30) NOT NULL,
    RPE_CODIGO       VARCHAR(30) NOT NULL,
    RPE_LOGRADOURO   VARCHAR(60),
    RPE_NR           VARCHAR(5),
    RPE_COMPLEMENTO  VARCHAR(20),
    RPE_BAIRRO       VARCHAR(20),
    RPE_TIPO         CHAR(1),
    RPE_OBS          VARCHAR(20)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE RELPESSEND ADD CONSTRAINT PK_RELPESSEND PRIMARY KEY (RPE_EMPRESA, RPE_PESSOA, RPE_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE RELPESSEND ADD CONSTRAINT FK_RPE_PESSOA FOREIGN KEY (RPE_PESSOA) REFERENCES PESSOAS (PESS_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
