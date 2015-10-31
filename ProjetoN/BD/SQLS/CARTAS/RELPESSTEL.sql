/******************************************************************************/
/***               Generated by IBExpert 22/10/2015 14:36:05                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE RELPESSTEL (
    RPT_EMPRESA   INTEGER NOT NULL,
    RPT_PESSOA    VARCHAR(30) NOT NULL,
    RPT_CODIGO    VARCHAR(30) NOT NULL,
    RPT_TELEFONE  VARCHAR(12),
    RPT_TIPO      VARCHAR(1)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE RELPESSTEL ADD CONSTRAINT PK_RELPESSTEL PRIMARY KEY (RPT_EMPRESA, RPT_PESSOA, RPT_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE RELPESSTEL ADD CONSTRAINT FK_RPT_PESSOA FOREIGN KEY (RPT_EMPRESA, RPT_PESSOA) REFERENCES PESSOAS (PESS_EMPRESA, PESS_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
