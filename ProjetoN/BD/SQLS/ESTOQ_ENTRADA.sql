/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:24:22                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE ESTOQ_ENTRADA (
    EE_EMPRESA  INTEGER NOT NULL,
    EE_ESTOQUE  VARCHAR(30) NOT NULL,
    EE_PRODUTO  VARCHAR(30) NOT NULL,
    EE_CODIGO   VARCHAR(30) NOT NULL,
    EE_QTD      NUMERIC(18,2),
    EE_DATA     TIMESTAMP
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQ_ENTRADA ADD CONSTRAINT PK_ESTOQ_ENTRADA PRIMARY KEY (EE_EMPRESA, EE_ESTOQUE, EE_PRODUTO, EE_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQ_ENTRADA ADD CONSTRAINT FK_EE_ESTOQUE FOREIGN KEY (EE_ESTOQUE, EE_PRODUTO) REFERENCES ESTOQUE (ESTOQ_CODIGO, ESTOQ_PRODUTO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
