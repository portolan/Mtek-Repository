

/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN DMCELULAR AS
VARCHAR(12);

CREATE DOMAIN DMCNPJ AS
VARCHAR(14);

CREATE DOMAIN DMCPF AS
VARCHAR(11);

CREATE DOMAIN DMINSCESTADUAL AS
VARCHAR(9);

CREATE DOMAIN DMINSCMUNICIPAL AS
VARCHAR(15);

CREATE DOMAIN DMTELEFONE AS
VARCHAR(12);



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_BLOCO;
SET GENERATOR GEN_BLOCO TO 5;

CREATE GENERATOR GEN_CATEGORIA;
SET GENERATOR GEN_CATEGORIA TO 1;

CREATE GENERATOR GEN_ESTOQUE;
SET GENERATOR GEN_ESTOQUE TO 1;

CREATE GENERATOR GEN_ESTOQ_MOVIMENTO;
SET GENERATOR GEN_ESTOQ_MOVIMENTO TO 4;

CREATE GENERATOR GEN_MARCAS;
SET GENERATOR GEN_MARCAS TO 8;

CREATE GENERATOR GEN_PESSOAS;
SET GENERATOR GEN_PESSOAS TO 1;

CREATE GENERATOR GEN_PRATELEIRA;
SET GENERATOR GEN_PRATELEIRA TO 14;

CREATE GENERATOR GEN_PRODUTOS;
SET GENERATOR GEN_PRODUTOS TO 1;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE BLOCO (
    BLOC_EMPRESA    INTEGER NOT NULL,
    BLOC_CODIGO     INTEGER NOT NULL,
    BLOC_DESCRICAO  VARCHAR(60) NOT NULL,
    BLOC_OBS        VARCHAR(100)
);

CREATE TABLE CATEGORIA (
    CAT_EMPRESA    INTEGER NOT NULL,
    CAT_CODIGO     INTEGER NOT NULL,
    CAT_DESCRICAO  VARCHAR(60) NOT NULL,
    CAT_NCM        VARCHAR(20),
    CAT_OBS        VARCHAR(100)
);

CREATE TABLE ESTOQ_MOVIMENTO (
    EM_EMPRESA             INTEGER NOT NULL,
    EM_PRODUTO             VARCHAR(30) NOT NULL,
    EM_BLOCO               INTEGER NOT NULL,
    EM_PRATELEIRA          INTEGER NOT NULL,
    EM_ESTOQUE             INTEGER NOT NULL,
    EM_CODIGO              INTEGER NOT NULL,
    EM_TIPO                CHAR(1),
    EM_QTD                 NUMERIC(18,2),
    EM_DATA                TIMESTAMP,
    EM_OBS                 VARCHAR(100),
    EM_VALOR_FINANCEIRO    NUMERIC(18,2),
    EM_PEDIDOCOMPRAORIGEM  INTEGER
);

CREATE TABLE ESTOQUE (
    ESTOQ_EMPRESA     INTEGER NOT NULL,
    ESTOQ_PRODUTO     VARCHAR(30) NOT NULL,
    ESTOQ_BLOCO       INTEGER NOT NULL,
    ESTOQ_PRATELEIRA  INTEGER NOT NULL,
    ESTOQ_CODIGO      INTEGER NOT NULL,
    ESTOQ_STATUS      CHAR(1) DEFAULT 'A',
    ESTOQ_QTD         NUMERIC(18,2),
    ESTOQ_QTDMIN      NUMERIC(18,2),
    ESTOQ_QTDMAX      NUMERIC(18,2),
    ESTOQ_CUSTOMEDIO  NUMERIC(18,2),
    ESTOQ_CATEGORIA   INTEGER,
    ESTOQ_TIPO        INTEGER,
    ESTOQ_DTCADASTRO  DATE,
    ESTOQ_OBS         VARCHAR(100)
);

CREATE TABLE MARCAS (
    MARC_CODIGO     INTEGER NOT NULL,
    MARC_DESCRICAO  VARCHAR(60),
    MARC_OBS        VARCHAR(100)
);

CREATE TABLE PRATELEIRA (
    PRAT_EMPRESA    INTEGER NOT NULL,
    PRAT_CODIGO     INTEGER NOT NULL,
    PRAT_DESCRICAO  VARCHAR(60) NOT NULL,
    PRAT_OBS        VARCHAR(100)
);

CREATE TABLE PRODUTOS (
    PRO_EMPRESA       INTEGER NOT NULL,
    PRO_CODIGO        VARCHAR(30) NOT NULL,
    PRO_CODREF        VARCHAR(30),
    PRO_CODBARRAS     VARCHAR(60),
    PRO_STATUS        CHAR(1) DEFAULT 'A',
    PRO_DTCADASTRO    DATE,
    PRO_CLASSFISCAL   VARCHAR(30),
    PRO_CSTCSOSN      VARCHAR(30),
    PRO_NCMSH         VARCHAR(30),
    PRO_EXTIPI        VARCHAR(30),
    PRO_SITTRIB       VARCHAR(30),
    PRO_PIS           NUMERIC(18,2),
    PRO_COFINS        NUMERIC(18,2),
    PRO_CSTPIS        NUMERIC(18,2),
    PRO_ESTATUAL      VARCHAR(20),
    PRO_DESCRICAO     VARCHAR(60),
    PRO_UNID          VARCHAR(5),
    PRO_MARCA         INTEGER,
    PRO_MOEDA         VARCHAR(10),
    PRO_CATEGORIA     INTEGER,
    PRO_PESO          NUMERIC(18,2),
    PRO_CUSTOMEDIO    NUMERIC(18,2),
    PRO_VALORIZACAO   NUMERIC(18,2),
    PRO_VLRFRETE      NUMERIC(18,2),
    PRO_PERCENCARG    NUMERIC(18,2),
    PRO_VLRENCARG     NUMERIC(18,2),
    PRO_PERCMARGLUCR  NUMERIC(18,2),
    PRO_VLRMARGLUCR   NUMERIC(18,2),
    PRO_VLRVENDA      NUMERIC(18,2),
    PRO_OBS           VARCHAR(100),
    PRO_IMG           BLOB SUB_TYPE 0 SEGMENT SIZE 4096,
    PRO_GRUPO         CHAR(1)
);

CREATE TABLE RELPRODFORN (
    RPF_EMPRESA     INTEGER NOT NULL,
    RPF_PRODUTO     VARCHAR(30) NOT NULL,
    RPF_PESSOA      VARCHAR(60) NOT NULL,
    RPF_CODREF      VARCHAR(30),
    RPF_VLRBRUTO    NUMERIC(18,2),
    RPF_PERCDESC    NUMERIC(18,2),
    RPF_VLRDESC     NUMERIC(18,2),
    RPF_VLRLIQUIDO  NUMERIC(18,2),
    RPF_DTCOMPRA    DATE,
    RPF_CONTATO     VARCHAR(20)
);

CREATE TABLE UNIDADE (
    UN_EMPRESA    INTEGER NOT NULL,
    UN_CODIGO     INTEGER NOT NULL,
    UN_DESCRICAO  VARCHAR(60) NOT NULL,
    UN_OBS        VARCHAR(100)
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE BLOCO ADD CONSTRAINT PK_BLOCO PRIMARY KEY (BLOC_EMPRESA, BLOC_CODIGO);
ALTER TABLE CATEGORIA ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY (CAT_EMPRESA, CAT_CODIGO);
ALTER TABLE ESTOQUE ADD CONSTRAINT PK_ESTOQUE PRIMARY KEY (ESTOQ_EMPRESA, ESTOQ_PRODUTO, ESTOQ_BLOCO, ESTOQ_PRATELEIRA, ESTOQ_CODIGO);
ALTER TABLE ESTOQ_MOVIMENTO ADD CONSTRAINT PK_ESTOQ_MOVIMENTO PRIMARY KEY (EM_EMPRESA, EM_PRODUTO, EM_BLOCO, EM_PRATELEIRA, EM_ESTOQUE, EM_CODIGO);
ALTER TABLE MARCAS ADD CONSTRAINT PK_MARCAS PRIMARY KEY (MARC_CODIGO);
ALTER TABLE PRATELEIRA ADD CONSTRAINT PK_PRATELEIRA PRIMARY KEY (PRAT_EMPRESA, PRAT_CODIGO);
ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRO_EMPRESA, PRO_CODIGO);
ALTER TABLE RELPRODFORN ADD CONSTRAINT PK_RELPRODFORN PRIMARY KEY (RPF_EMPRESA, RPF_PRODUTO, RPF_PESSOA);
ALTER TABLE UNIDADE ADD CONSTRAINT PK_UNIDADE PRIMARY KEY (UN_EMPRESA, UN_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_BLOCO FOREIGN KEY (ESTOQ_EMPRESA, ESTOQ_BLOCO) REFERENCES BLOCO (BLOC_EMPRESA, BLOC_CODIGO);
ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_PRATELEIRA FOREIGN KEY (ESTOQ_EMPRESA, ESTOQ_PRATELEIRA) REFERENCES PRATELEIRA (PRAT_EMPRESA, PRAT_CODIGO);
ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_PRODUTO FOREIGN KEY (ESTOQ_EMPRESA, ESTOQ_PRODUTO) REFERENCES PRODUTOS (PRO_EMPRESA, PRO_CODIGO);
ALTER TABLE ESTOQ_MOVIMENTO ADD CONSTRAINT FK_EM_MOVIMENTO FOREIGN KEY (EM_EMPRESA, EM_PRODUTO, EM_BLOCO, EM_PRATELEIRA, EM_ESTOQUE) REFERENCES ESTOQUE (ESTOQ_EMPRESA, ESTOQ_PRODUTO, ESTOQ_BLOCO, ESTOQ_PRATELEIRA, ESTOQ_CODIGO);
ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PROMARC FOREIGN KEY (PRO_MARCA) REFERENCES MARCAS (MARC_CODIGO);
ALTER TABLE PRODUTOS ADD CONSTRAINT FK_REL_PRO_CATEGORIA FOREIGN KEY (PRO_EMPRESA, PRO_CATEGORIA) REFERENCES CATEGORIA (CAT_EMPRESA, CAT_CODIGO);
ALTER TABLE RELPRODFORN ADD CONSTRAINT FK_RPF_PRODUTO FOREIGN KEY (RPF_EMPRESA, RPF_PRODUTO) REFERENCES PRODUTOS (PRO_EMPRESA, PRO_CODIGO)
  USING INDEX FK_RELPRODFORN_PRODUTO;
