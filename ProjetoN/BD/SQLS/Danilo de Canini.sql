/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 05/11/2015 20:03:42          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

SET CLIENTLIB 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll';

CREATE DATABASE 'C:\Users\Danilo de Canini\Desktop\BD\DATABASE.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_CENTRODECUSTO_ID;
SET GENERATOR GEN_CENTRODECUSTO_ID TO 0;

CREATE GENERATOR GEN_DEPARTAMENTO_ID;
SET GENERATOR GEN_DEPARTAMENTO_ID TO 0;

CREATE GENERATOR GEN_EMPRESA_ID;
SET GENERATOR GEN_EMPRESA_ID TO 0;

CREATE GENERATOR GEN_HISTORICO_ID;
SET GENERATOR GEN_HISTORICO_ID TO 0;

CREATE GENERATOR GEN_LANCAMENTOS_ID;
SET GENERATOR GEN_LANCAMENTOS_ID TO 0;

CREATE GENERATOR GEN_PLANODECONTAS_ID;
SET GENERATOR GEN_PLANODECONTAS_ID TO 0;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CENTRODECUSTO (
    CEC_COD        INTEGER NOT NULL,
    CEC_NUM_CC     INTEGER,
    CEC_DESC_CC    VARCHAR(60),
    CEC_ANALITICO  VARCHAR(1),
    CEC_COD_GRUPO  INTEGER
);

CREATE TABLE DEPARTAMENTO (
    DEP_COD       INTEGER NOT NULL,
    DEP_EMPRESAR  INTEGER NOT NULL,
    DEP_NOME      VARCHAR(40) NOT NULL,
    DEP_DESC      VARCHAR(60) NOT NULL
);

CREATE TABLE EMPRESA (
    EMP_COD       INTEGER NOT NULL,
    EMP_CNPJ      NUMERIC(18,2),
    EMP_RAZAO     VARCHAR(60),
    EMP_NOMEF     VARCHAR(60),
    EMP_ENDERECO  VARCHAR(60),
    EMP_END_NUM   INTEGER,
    EMP_BAIRRO    VARCHAR(20),
    EMP_CIDADE    VARCHAR(60),
    EMP_UF        VARCHAR(2),
    EMP_CEP       INTEGER,
    EMP_FONE      INTEGER,
    EMP_TITULAR   VARCHAR(60)
);

CREATE TABLE ESTOQ_ENTRADA (
    EE_ESTOQUE  VARCHAR(30) NOT NULL,
    EE_PRODUTO  VARCHAR(30) NOT NULL,
    EE_CODIGO   VARCHAR(30) NOT NULL,
    EE_QTD      NUMERIC(18,2),
    EE_DATA     TIMESTAMP
);

CREATE TABLE ESTOQ_MOVIMENTO (
    ESTM_ESTOQUE  VARCHAR(30) NOT NULL,
    ESTM_PRODUTO  VARCHAR(30) NOT NULL,
    ESTM_CODIGO   VARCHAR(30) NOT NULL,
    ESTM_QTD      NUMERIC(18,2),
    ESTM_DATA     TIMESTAMP,
    ESTM_TIPO     CHAR(1)
);

CREATE TABLE ESTOQ_SAIDA (
    ES_ESTOQUE  VARCHAR(30) NOT NULL,
    ES_PRODUTO  VARCHAR(30) NOT NULL,
    ES_CODIGO   VARCHAR(30) NOT NULL,
    ES_QTD      NUMERIC(18,2),
    ES_DATA     TIMESTAMP
);

CREATE TABLE ESTOQUE (
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

CREATE TABLE HISTORICO (
    HIST_COD   INTEGER NOT NULL,
    HIST_NOME  VARCHAR(20) NOT NULL
);

CREATE TABLE LANCAMENTOS (
    LANC_NR_LOTE           INTEGER NOT NULL,
    LANC_NR_LANCAMENTO     INTEGER,
    LANC_DT_LANCAMENTO     DATE,
    LANC_DEBITO            INTEGER,
    LANC_CENTRODECUSTO_DB  INTEGER,
    LANC_CREDITO           INTEGER,
    LANC_CENTRODECUSTO_CR  INTEGER,
    LANC_HISTORICO         INTEGER,
    LANC_VAR_HISTORICO     VARCHAR(100),
    LANC_VALOR             INTEGER
);

CREATE TABLE MARCAS (
    MARC_CODIGO     INTEGER NOT NULL,
    MARC_DESCRICAO  VARCHAR(60),
    MARC_OBS        VARCHAR(100)
);

CREATE TABLE PESSADD (
    PADD_PESSOA        VARCHAR(30) NOT NULL,
    PADD_CARGO         VARCHAR(20),
    PADD_ESTCIVIL      CHAR(1),
    PADD_NATURALIDADE  VARCHAR(30),
    PADD_CONJUGUE      VARCHAR(30),
    PADD_CONJTEL       DMTELEFONE,
    PADD_CONJCEL       DMCELULAR,
    PADD_DTNASC        DATE
);

CREATE TABLE PESSOAS (
    PESS_CODIGO         VARCHAR(30) NOT NULL,
    PESS_DESCRICAO      VARCHAR(100),
    PESS_TIPO           CHAR(1),
    PESS_APELIDO        VARCHAR(60),
    PESS_CONTATO        VARCHAR(60),
    PESS_TELCONTATO     DMTELEFONE,
    PESS_FAX            DMTELEFONE,
    PESS_RAMAL          INTEGER,
    PESS_CNPJ           DMCNPJ,
    PESS_CPF            DMCPF,
    PESS_RG             VARCHAR(10),
    PESS_INSCESTADUAL   DMINSCESTADUAL,
    PESS_INSCMUNICIPAL  DMINSCMUNICIPAL,
    PESS_EMAIL          VARCHAR(60),
    PESS_DTCADASTRO     DATE
);

CREATE TABLE PLANODECONTAS (
    PLN_COD_CONTA   INTEGER NOT NULL,
    PLN_CONTA       INTEGER,
    PLN_DESC_CONTA  VARCHAR(20),
    PLN_ANALITICA   VARCHAR(1)
);

CREATE TABLE PRODUTOS (
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

CREATE TABLE RELPESSEND (
    RPE_PESSOA       VARCHAR(30) NOT NULL,
    RPE_CODIGO       VARCHAR(30) NOT NULL,
    RPE_LOGRADOURO   VARCHAR(60),
    RPE_NR           VARCHAR(5),
    RPE_COMPLEMENTO  VARCHAR(20),
    RPE_BAIRRO       VARCHAR(20),
    RPE_TIPO         CHAR(1),
    RPE_OBS          VARCHAR(20)
);

CREATE TABLE RELPESSTEL (
    RPT_PESSOA    VARCHAR(30) NOT NULL,
    RPT_CODIGO    VARCHAR(30) NOT NULL,
    RPT_TELEFONE  DMTELEFONE,
    RPT_TIPO      VARCHAR(1)
);

CREATE TABLE RELPRODFORN (
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



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD CONSTRAINT PK_CENTRODECUSTO PRIMARY KEY (CEC_COD);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (DEP_COD);
ALTER TABLE EMPRESA ADD CONSTRAINT PK_EMPRESA PRIMARY KEY (EMP_COD);
ALTER TABLE ESTOQUE ADD CONSTRAINT PK_ESTOQUE PRIMARY KEY (ESTOQ_CODIGO, ESTOQ_PRODUTO);
ALTER TABLE ESTOQ_ENTRADA ADD CONSTRAINT PK_ESTOQ_ENTRADA PRIMARY KEY (EE_ESTOQUE, EE_PRODUTO, EE_CODIGO);
ALTER TABLE ESTOQ_MOVIMENTO ADD CONSTRAINT PK_ESTM_MOVIMENTO PRIMARY KEY (ESTM_ESTOQUE, ESTM_PRODUTO, ESTM_CODIGO);
ALTER TABLE ESTOQ_SAIDA ADD CONSTRAINT PK_ESTOQ_SAIDA PRIMARY KEY (ES_ESTOQUE, ES_PRODUTO, ES_CODIGO);
ALTER TABLE HISTORICO ADD CONSTRAINT PK_HISTORICO PRIMARY KEY (HIST_COD);
ALTER TABLE LANCAMENTOS ADD CONSTRAINT PK_LANCAMENTOS PRIMARY KEY (LANC_NR_LOTE);
ALTER TABLE MARCAS ADD CONSTRAINT PK_MARCAS PRIMARY KEY (MARC_CODIGO);
ALTER TABLE PESSADD ADD CONSTRAINT PK_PESSADD PRIMARY KEY (PADD_PESSOA);
ALTER TABLE PESSOAS ADD CONSTRAINT PK_PESSOA PRIMARY KEY (PESS_CODIGO);
ALTER TABLE PLANODECONTAS ADD CONSTRAINT PK_PLANODECONTAS PRIMARY KEY (PLN_COD_CONTA);
ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRO_CODIGO);
ALTER TABLE RELPESSEND ADD CONSTRAINT PK_RELPESSEND PRIMARY KEY (RPE_PESSOA, RPE_CODIGO);
ALTER TABLE RELPESSTEL ADD CONSTRAINT PK_RELPESSTEL PRIMARY KEY (RPT_PESSOA, RPT_CODIGO);
ALTER TABLE RELPRODFORN ADD CONSTRAINT PK_RELPRODFORN PRIMARY KEY (RPF_PRODUTO, RPF_PESSOA);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD CONSTRAINT FK_CENTRODECUSTO_1 FOREIGN KEY (CEC_COD_GRUPO) REFERENCES EMPRESA (EMP_COD);
ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_PRODUTO FOREIGN KEY (ESTOQ_PRODUTO) REFERENCES PRODUTOS (PRO_CODIGO);
ALTER TABLE ESTOQ_ENTRADA ADD CONSTRAINT FK_EE_ESTOQUE FOREIGN KEY (EE_ESTOQUE, EE_PRODUTO) REFERENCES ESTOQUE (ESTOQ_CODIGO, ESTOQ_PRODUTO);
ALTER TABLE ESTOQ_MOVIMENTO ADD CONSTRAINT FK_ESTM_ESTOQUE FOREIGN KEY (ESTM_ESTOQUE, ESTM_PRODUTO) REFERENCES ESTOQUE (ESTOQ_CODIGO, ESTOQ_PRODUTO);
ALTER TABLE ESTOQ_SAIDA ADD CONSTRAINT FK_ES_ESTOQUE FOREIGN KEY (ES_ESTOQUE, ES_PRODUTO) REFERENCES ESTOQUE (ESTOQ_CODIGO, ESTOQ_PRODUTO);
ALTER TABLE PESSADD ADD CONSTRAINT FK_PESSADD_PESSOA FOREIGN KEY (PADD_PESSOA) REFERENCES PESSOAS (PESS_CODIGO);
ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PROMARC FOREIGN KEY (PRO_MARCA) REFERENCES MARCAS (MARC_CODIGO);
ALTER TABLE RELPESSEND ADD CONSTRAINT FK_RPE_PESSOA FOREIGN KEY (RPE_PESSOA) REFERENCES PESSOAS (PESS_CODIGO);
ALTER TABLE RELPESSTEL ADD CONSTRAINT FK_RPT_PESSOA FOREIGN KEY (RPT_PESSOA) REFERENCES PESSOAS (PESS_CODIGO);
ALTER TABLE RELPRODFORN ADD CONSTRAINT FK_RPF_PESSOA FOREIGN KEY (RPF_PESSOA) REFERENCES PESSOAS (PESS_CODIGO)
  USING INDEX FK_RELPRODFORN_PESSOA;
ALTER TABLE RELPRODFORN ADD CONSTRAINT FK_RPF_PRODUTO FOREIGN KEY (RPF_PRODUTO) REFERENCES PRODUTOS (PRO_CODIGO)
  USING INDEX FK_RELPRODFORN_PRODUTO;
