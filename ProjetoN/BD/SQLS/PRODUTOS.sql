/******************************************************************************/
/***               Generated by IBExpert 10/10/2015 15:24:53                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE PRODUTOS (
    PRO_EMPRESA        INTEGER NOT NULL,
    PRO_CODIGO         VARCHAR(30) NOT NULL,
    PRO_CODREF         VARCHAR(30),
    PRO_CODBARRAS      VARCHAR(60),
    PRO_STATUS         CHAR(1) DEFAULT 'A',
    PRO_DTCADASTRO     DATE,
    PRO_CLASSFISCAL    VARCHAR(30),
    PRO_CSTCSOSN       VARCHAR(30),
    PRO_NCMSH          VARCHAR(30),
    PRO_EXTIPI         VARCHAR(30),
    PRO_SITTRIB        VARCHAR(30),
    PRO_DESCRICAO      VARCHAR(60),
    PRO_UNID           VARCHAR(5),
    PRO_MARCA          INTEGER,
    PRO_MOEDA          VARCHAR(10),
    PRO_CATEGORIA      INTEGER,
    PRO_PIS            NUMERIC(18,2),
    PRO_COFINS         NUMERIC(18,2),
    PRO_CSTPIS         NUMERIC(18,2),
    PRO_ESTATUAL       VARCHAR(20),
    PRO_PESO           NUMERIC(18,2),
    PRO_VLRCUSTO       NUMERIC(18,2),
    PRO_PERCFRETE      NUMERIC(18,2),
    PRO_VLRFRETE       NUMERIC(18,2),
    PRO_PERCENCARG     NUMERIC(18,2),
    PRO_VLRENCARG      NUMERIC(18,2),
    PRO_PERCMARGLUCR   NUMERIC(18,2),
    PRO_VLRMARGLUCR    NUMERIC(18,2),
    PRO_VLRVENDA1      NUMERIC(18,2),
    PRO_PERCVLRVENDA2  NUMERIC(18,2),
    PRO_VLRVENDA2      NUMERIC(18,2),
    PRO_PERCVLRVENDA3  NUMERIC(18,2),
    PRO_VLRVENDA3      NUMERIC(18,2),
    PRO_OBS            VARCHAR(100),
    PRO_IMG            BLOB SUB_TYPE 0 SEGMENT SIZE 4096
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRO_EMPRESA, PRO_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PROMARC FOREIGN KEY (PRO_MARCA) REFERENCES MARCAS (MARC_CODIGO);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
