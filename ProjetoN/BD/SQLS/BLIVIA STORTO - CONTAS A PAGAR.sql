-- Relacionamento com empresa???
-- CONDICAOPAGAMENTO : como irei saber em quantas parcelas será o pagamento ??? como irei saber os vencimentos das parcelas?
-- Relacionamento com banco???
-- Relacionamento com pessoa???
-- Uma tabela para titulos a pagar e outra para receber?? Verificar com o rodney
-- Verificar relacionamentos..


CREATE TABLE BANCO (
    BAN_CODIGO     INTEGER NOT NULL,
    BAN_DESCRICAO  VARCHAR(100)
);

CREATE TABLE CONDICAOPAGAMENTO (
    CDP_CODIGO     INTEGER NOT NULL,
    CDP_DESCRICAO  VARCHAR(100)
);

CREATE TABLE CONTABANCARIA (
    CTB_CODIGO      INTEGER NOT NULL,
    CTB_EMP_CODIGO  INTEGER,
    CTB_BAN_CODIGO  INTEGER,
    CTB_CONTA       NUMERIC(15,2),
    CTB_OPERACAO    NUMERIC(10,2),
    CTB_AGENCIA     NUMERIC(10,2)
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
    TTP_SITUACAO         VARCHAR(20),
    TTP_TP_MORA          VARCHAR(20),
    TTP_TP_MULTA         VARCHAR(20)
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE BANCO ADD CONSTRAINT PK_BANCO PRIMARY KEY (BAN_CODIGO);
ALTER TABLE CONDICAOPAGAMENTO ADD CONSTRAINT PK_CONDICAOPAGAMENTO PRIMARY KEY (CDP_CODIGO);
ALTER TABLE CONTABANCARIA ADD CONSTRAINT PK_CONTABANCARIA PRIMARY KEY (CTB_CODIGO);
ALTER TABLE TIPOPAGAMENTO ADD CONSTRAINT PK_TIPOPAGAMENTO PRIMARY KEY (TPG_CODIGO);
ALTER TABLE TITULOSP ADD CONSTRAINT PK_TITULOSP PRIMARY KEY (TTP_CODIGO, TTP_EMP_CODIGO);
