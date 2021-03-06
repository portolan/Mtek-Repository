/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 19/11/2015 21:10:34          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

SET CLIENTLIB 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll';

CREATE DATABASE 'C:\Users\Danilo de Canini\Desktop\BD\DATABASE.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN DMCEP AS
VARCHAR(9);

CREATE DOMAIN DMCNPJ AS
VARCHAR(14);

CREATE DOMAIN DMTELEFONE AS
VARCHAR(14);



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_CENTRODECUSTO_ID;
SET GENERATOR GEN_CENTRODECUSTO_ID TO 3;

CREATE GENERATOR GEN_DEPARTAMENTO_ID;
SET GENERATOR GEN_DEPARTAMENTO_ID TO 2;

CREATE GENERATOR GEN_EMPRESA_ID;
SET GENERATOR GEN_EMPRESA_ID TO 8;

CREATE GENERATOR GEN_HISTORICO_ID;
SET GENERATOR GEN_HISTORICO_ID TO 5;

CREATE GENERATOR GEN_LANCAMENTOS_ID;
SET GENERATOR GEN_LANCAMENTOS_ID TO 52;

CREATE GENERATOR GEN_PLANODECONTAS_ID;
SET GENERATOR GEN_PLANODECONTAS_ID TO 6;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CENTRODECUSTO (
    CEC_COD        INTEGER NOT NULL,
    CEC_COD_GRUPO  INTEGER NOT NULL,
    CEC_NUM_CC     VARCHAR(9) NOT NULL,
    CEC_DESC_CC    VARCHAR(60) NOT NULL,
    CEC_ANALITICO  VARCHAR(1)
);

CREATE TABLE DEPARTAMENTO (
    DEP_COD       INTEGER NOT NULL,
    DEP_EMPRESAR  INTEGER NOT NULL,
    DEP_NOME      VARCHAR(40) NOT NULL,
    DEP_DESC      VARCHAR(60) NOT NULL
);

CREATE TABLE EMPRESA (
    EMP_COD       INTEGER NOT NULL,
    EMP_CNPJ      DMCNPJ NOT NULL,
    EMP_RAZAO     VARCHAR(60) NOT NULL,
    EMP_NOMEF     VARCHAR(60) NOT NULL,
    EMP_ENDERECO  VARCHAR(60),
    EMP_END_NUM   INTEGER,
    EMP_BAIRRO    VARCHAR(20),
    EMP_CIDADE    VARCHAR(60) NOT NULL,
    EMP_UF        VARCHAR(2),
    EMP_CEP       DMCEP NOT NULL,
    EMP_FONE      DMTELEFONE,
    EMP_TITULAR   VARCHAR(60) NOT NULL
);

CREATE TABLE HISTORICO (
    HIST_COD   INTEGER NOT NULL,
    HIST_NOME  VARCHAR(20) NOT NULL
);

CREATE TABLE LANCAMENTOS (
    LANC_EMP               INTEGER NOT NULL,
    LANC_NR_LOTE           INTEGER NOT NULL,
    LANC_NR_LANCAMENTO     INTEGER NOT NULL,
    LANC_DT_LANCAMENTO     DATE NOT NULL,
    LANC_DEBITO            VARCHAR(8),
    LANC_CENTRODECUSTO_DB  VARCHAR(9),
    LANC_CREDITO           VARCHAR(8),
    LANC_CENTRODECUSTO_CR  VARCHAR(9),
    LANC_HISTORICO         VARCHAR(100) NOT NULL,
    LANC_VAR_HISTORICO     VARCHAR(100),
    LANC_VALOR             NUMERIC(18,2) NOT NULL,
    LANC_TIPO              VARCHAR(1) NOT NULL
);

CREATE TABLE PLANODECONTAS (
    PLN_COD_CONTA   INTEGER NOT NULL,
    PLN_CONTA       VARCHAR(8) NOT NULL,
    PLN_DESC_CONTA  VARCHAR(20) NOT NULL,
    PLN_ANALITICA   VARCHAR(1)
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD CONSTRAINT PK_CENTRODECUSTO PRIMARY KEY (CEC_COD);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (DEP_COD);
ALTER TABLE EMPRESA ADD CONSTRAINT PK_EMPRESA PRIMARY KEY (EMP_COD);
ALTER TABLE HISTORICO ADD CONSTRAINT PK_HISTORICO PRIMARY KEY (HIST_COD);
ALTER TABLE LANCAMENTOS ADD CONSTRAINT PK_LANCAMENTOS PRIMARY KEY (LANC_NR_LOTE);
ALTER TABLE PLANODECONTAS ADD CONSTRAINT PK_PLANODECONTAS PRIMARY KEY (PLN_COD_CONTA);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD CONSTRAINT FK_CENTRODECUSTO_1 FOREIGN KEY (CEC_COD_GRUPO) REFERENCES EMPRESA (EMP_COD);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT FK_DEPARTAMENTO_1 FOREIGN KEY (DEP_EMPRESAR) REFERENCES EMPRESA (EMP_COD);
ALTER TABLE LANCAMENTOS ADD CONSTRAINT FK_LANCAMENTOS_1 FOREIGN KEY (LANC_EMP) REFERENCES EMPRESA (EMP_COD);
