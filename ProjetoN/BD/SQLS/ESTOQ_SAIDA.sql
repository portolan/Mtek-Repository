/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:24:31                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE ESTOQ_SAIDA (
    ES_ESTOQUE  VARCHAR(30) NOT NULL,
    ES_PRODUTO  VARCHAR(30) NOT NULL,
    ES_CODIGO   VARCHAR(30) NOT NULL,
    ES_QTD      NUMERIC(18,2),
    ES_DATA     TIMESTAMP
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQ_SAIDA ADD CONSTRAINT PK_ESTOQ_SAIDA PRIMARY KEY (ES_ESTOQUE, ES_PRODUTO, ES_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQ_SAIDA ADD CONSTRAINT FK_ES_ESTOQUE FOREIGN KEY (ES_ESTOQUE, ES_PRODUTO) REFERENCES ESTOQUE (ESTOQ_CODIGO, ESTOQ_PRODUTO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/

