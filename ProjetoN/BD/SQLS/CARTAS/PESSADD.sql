/******************************************************************************/
/***               Generated by IBExpert 22/10/2015 14:35:56                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE PESSADD (
    PADD_EMPRESA       INTEGER NOT NULL,
    PADD_PESSOA        VARCHAR(30) NOT NULL,
    PADD_CARGO         VARCHAR(20),
    PADD_ESTCIVIL      CHAR(1),
    PADD_NATURALIDADE  VARCHAR(30),
    PADD_CONJUGUE      VARCHAR(30),
    PADD_CONJTEL       VARCHAR(12),
    PADD_CONJCEL       VARCHAR(12),
    PADD_DTNASC        DATE
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE PESSADD ADD CONSTRAINT PK_PESSADD PRIMARY KEY (PADD_EMPRESA, PADD_PESSOA);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE PESSADD ADD CONSTRAINT FK_PESSADD_PESSOA FOREIGN KEY (PADD_EMPRESA, PADD_PESSOA) REFERENCES PESSOAS (PESS_EMPRESA, PESS_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
