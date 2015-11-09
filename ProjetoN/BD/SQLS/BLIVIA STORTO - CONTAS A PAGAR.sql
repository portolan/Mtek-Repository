/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 09/11/2015 20:49:39          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

SET CLIENTLIB 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll';

CREATE DATABASE 'D:\contasPagar.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE BANCO (
    BAN_CODIGO     INTEGER NOT NULL,
    BAN_DESCRICAO  VARCHAR(100)
);

CREATE TABLE CONDICAOPAGAMENTO (
    CDP_CODIGO           INTEGER NOT NULL,
    CDP_DESCRICAO        VARCHAR(100),
    CDP_PARCELAS         INTEGER,
    CDP_DIAS_VENCIMENTO  INTEGER
);

CREATE TABLE CONTABANCARIA (
    CTB_CODIGO      INTEGER NOT NULL,
    CTB_EMP_CODIGO  INTEGER,
    CTB_BAN_CODIGO  INTEGER,
    CTB_CONTA       NUMERIC(15,2),
    CTB_OPERACAO    NUMERIC(10,2),
    CTB_AGENCIA     NUMERIC(10,2),
    CTB_SALDOI      NUMERIC(18,2),
    CTB_SALDOT      NUMERIC(18,2)
);

CREATE TABLE TIPOPAGAMENTO (
    TPG_CODIGO     INTEGER NOT NULL,
    TPG_DESCRICAO  VARCHAR(100)
);

CREATE TABLE TITULOSP (
    TTP_CODIGO           INTEGER NOT NULL,
    TTP_EMP_CODIGO       INTEGER NOT NULL,
    TTP_PES_CODIGO       INTEGER,
    TTP_CTB_CODIGO       INTEGER,
    TTP_CON_CODIGO       INTEGER,
    TTP_DESCRICAO        VARCHAR(100),
    TTP_DT_EMISSAO       DATE,
    TTP_DT_VENCIMENTO    DATE,
    TTP_DT_PAGAMENTO     DATE,
    TTP_DT_BAIXA         DATE,
    TTP_DT_CANCELAMENTO  DATE,
    TTP_TP_TITULO        VARCHAR(30),
    TTP_DESCONTO         NUMERIC(18,2),
    TTP_PARCELA          NUMERIC(10,2),
    TTP_VL_ORIGINAL      NUMERIC(18,2),
    TTP_VL_PAGO          NUMERIC(18,2),
    TTP_VL_TOTAL         NUMERIC(18,2),
    TTP_MR_DIARIA        NUMERIC(18,2),
    TTP_MT_ATRASO        NUMERIC(18,2),
    TTP_SITUACAO         VARCHAR(1) DEFAULT 'A',
    TTP_TP_MORA          VARCHAR(1) DEFAULT 'P',
    TTP_TP_MULTA         VARCHAR(1) DEFAULT 'P'
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE BANCO ADD CONSTRAINT PK_BANCO PRIMARY KEY (BAN_CODIGO);
ALTER TABLE CONDICAOPAGAMENTO ADD CONSTRAINT PK_CONDICAOPAGAMENTO PRIMARY KEY (CDP_CODIGO);
ALTER TABLE CONTABANCARIA ADD CONSTRAINT PK_CONTABANCARIA PRIMARY KEY (CTB_CODIGO);
ALTER TABLE TIPOPAGAMENTO ADD CONSTRAINT PK_TIPOPAGAMENTO PRIMARY KEY (TPG_CODIGO);
ALTER TABLE TITULOSP ADD CONSTRAINT PK_TITULOSP PRIMARY KEY (TTP_CODIGO, TTP_EMP_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CONTABANCARIA ADD CONSTRAINT REL_CTB_BANCO FOREIGN KEY (CTB_BAN_CODIGO) REFERENCES BANCO (BAN_CODIGO);
ALTER TABLE CONTABANCARIA ADD CONSTRAINT REL_CTB_EMPRESA FOREIGN KEY (CTB_EMP_CODIGO) REFERENCES EMPRESA (EMP_COD);
ALTER TABLE TITULOSP ADD CONSTRAINT REL_TTP_CONDICAO FOREIGN KEY (TTP_CON_CODIGO) REFERENCES CONDICAOPAGAMENTO (CDP_CODIGO);
ALTER TABLE TITULOSP ADD CONSTRAINT REL_TTP_CONTAB FOREIGN KEY (TTP_CTB_CODIGO) REFERENCES CONTABANCARIA (CTB_CODIGO);
ALTER TABLE TITULOSP ADD CONSTRAINT REL_TTP_EMPRESA FOREIGN KEY (TTP_EMP_CODIGO) REFERENCES EMPRESA (EMP_COD);
ALTER TABLE TITULOSP ADD CONSTRAINT REL_TTP_PESSOA FOREIGN KEY (TTP_PES_CODIGO) REFERENCES PESSOAS (PESS_CODIGO);
