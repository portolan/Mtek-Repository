/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:23:57                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE ESTOQUE (
    ESTOQ_EMPRESA     INTEGER NOT NULL,
    ESTOQ_CODIGO      VARCHAR(30) NOT NULL,
    ESTOQ_PRODUTO     VARCHAR(30) NOT NULL,
    ESTOQ_STATUS      CHAR(1) DEFAULT 'A',
    ESTOQ_QTD         NUMERIC(18,2),
    ESTOQ_QTDMIN      NUMERIC(18,2),
    ESTOQ_QTDMAX      NUMERIC(18,2),
    ESTOQ_PRATELEIRA  VARCHAR(30),
    ESTOQ_CATEGORIA   INTEGER,
    ESTOQ_TIPO        INTEGER,
    ESTOQ_LOCAL       VARCHAR(30),
    ESTOQ_DTCADASTRO  DATE,
    ESTOQ_OBS         VARCHAR(100)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQUE ADD CONSTRAINT PK_ESTOQUE PRIMARY KEY (ESTOQ_EMPRESA, ESTOQ_CODIGO, ESTOQ_PRODUTO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_PRODUTO FOREIGN KEY (ESTOQ_PRODUTO) REFERENCES PRODUTOS (PRO_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/

