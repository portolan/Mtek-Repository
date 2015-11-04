/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 03/11/2015 22:22:02          ***/
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



SET TERM ^ ; 



/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/

CREATE PROCEDURE SP_GEN_CENTRODECUSTO_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE SP_GEN_DEPARTAMENTO_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE SP_GEN_EMPRESA_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE SP_GEN_HISTORICO_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE SP_GEN_LANCAMENTOS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE SP_GEN_PLANODECONTAS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE CENTRODECUSTO (
    COD_CC     INTEGER NOT NULL,
    NUM_CC     INTEGER,
    DESC_CC    VARCHAR(60),
    ANALITICO  VARCHAR(1),
    COD_GRUPO  INTEGER
);

CREATE TABLE DEPARTAMENTO (
    COD_DEP       INTEGER NOT NULL,
    COD_EMPRESAR  INTEGER NOT NULL,
    DP_NOME       VARCHAR(40) NOT NULL,
    DP_DESC       VARCHAR(60) NOT NULL
);

CREATE TABLE EMPRESA (
    COD_EMPRESA   INTEGER NOT NULL,
    CNPJ_EMPRESA  NUMERIC(18,2),
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
    COD_HIST   INTEGER NOT NULL,
    HIST_NOME  VARCHAR(20) NOT NULL
);

CREATE TABLE LANCAMENTOS (
    NR_LOTE           INTEGER NOT NULL,
    NR_LANCAMENTO     INTEGER,
    DT_LANCAMENTO     DATE,
    DEBITO            INTEGER,
    CENTRODECUSTO_DB  INTEGER,
    CREDITO           INTEGER,
    CENTRODECUSTO_CR  INTEGER,
    HISTORICO         INTEGER,
    VAR_HISTORICO     VARCHAR(100),
    VALOR             INTEGER
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
    COD_CONTA   INTEGER NOT NULL,
    CONTA       INTEGER,
    DESC_CONTA  VARCHAR(20),
    ANALITICA   VARCHAR(1)
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

ALTER TABLE CENTRODECUSTO ADD PRIMARY KEY (COD_CC);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (COD_DEP);
ALTER TABLE EMPRESA ADD PRIMARY KEY (COD_EMPRESA);
ALTER TABLE ESTOQUE ADD CONSTRAINT PK_ESTOQUE PRIMARY KEY (ESTOQ_CODIGO, ESTOQ_PRODUTO);
ALTER TABLE ESTOQ_ENTRADA ADD CONSTRAINT PK_ESTOQ_ENTRADA PRIMARY KEY (EE_ESTOQUE, EE_PRODUTO, EE_CODIGO);
ALTER TABLE ESTOQ_MOVIMENTO ADD CONSTRAINT PK_ESTM_MOVIMENTO PRIMARY KEY (ESTM_ESTOQUE, ESTM_PRODUTO, ESTM_CODIGO);
ALTER TABLE ESTOQ_SAIDA ADD CONSTRAINT PK_ESTOQ_SAIDA PRIMARY KEY (ES_ESTOQUE, ES_PRODUTO, ES_CODIGO);
ALTER TABLE HISTORICO ADD CONSTRAINT PK_HISTORICO PRIMARY KEY (COD_HIST);
ALTER TABLE LANCAMENTOS ADD PRIMARY KEY (NR_LOTE);
ALTER TABLE MARCAS ADD CONSTRAINT PK_MARCAS PRIMARY KEY (MARC_CODIGO);
ALTER TABLE PESSADD ADD CONSTRAINT PK_PESSADD PRIMARY KEY (PADD_PESSOA);
ALTER TABLE PESSOAS ADD CONSTRAINT PK_PESSOA PRIMARY KEY (PESS_CODIGO);
ALTER TABLE PLANODECONTAS ADD PRIMARY KEY (COD_CONTA);
ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRO_CODIGO);
ALTER TABLE RELPESSEND ADD CONSTRAINT PK_RELPESSEND PRIMARY KEY (RPE_PESSOA, RPE_CODIGO);
ALTER TABLE RELPESSTEL ADD CONSTRAINT PK_RELPESSTEL PRIMARY KEY (RPT_PESSOA, RPT_CODIGO);
ALTER TABLE RELPRODFORN ADD CONSTRAINT PK_RELPRODFORN PRIMARY KEY (RPF_PRODUTO, RPF_PESSOA);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE CENTRODECUSTO ADD FOREIGN KEY (COD_GRUPO) REFERENCES EMPRESA (COD_EMPRESA);
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT FK_DEPARTAMENTO_1 FOREIGN KEY (COD_EMPRESAR) REFERENCES EMPRESA (COD_EMPRESA);
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


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: CENTRODECUSTO_BI */
CREATE TRIGGER CENTRODECUSTO_BI FOR CENTRODECUSTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cod_cc is null) then
    new.cod_cc = gen_id(gen_centrodecusto_id,1);
end
^

/* Trigger: DEPARTAMENTO_BI */
CREATE TRIGGER DEPARTAMENTO_BI FOR DEPARTAMENTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cod_dep is null) then
    new.cod_dep = gen_id(gen_departamento_id,1);
end
^

/* Trigger: EMPRESA_BI */
CREATE TRIGGER EMPRESA_BI FOR EMPRESA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cod_empresa is null) then
    new.cod_empresa = gen_id(gen_empresa_id,1);
end
^

/* Trigger: HISTORICO_BI */
CREATE TRIGGER HISTORICO_BI FOR HISTORICO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cod_hist is null) then
    new.cod_hist = gen_id(gen_historico_id,1);
end
^

/* Trigger: LANCAMENTOS_BI */
CREATE TRIGGER LANCAMENTOS_BI FOR LANCAMENTOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.nr_lote is null) then
    new.nr_lote = gen_id(gen_lancamentos_id,1);
end
^

/* Trigger: PLANODECONTAS_BI */
CREATE TRIGGER PLANODECONTAS_BI FOR PLANODECONTAS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.cod_conta is null) then
    new.cod_conta = gen_id(gen_planodecontas_id,1);
end
^

SET TERM ; ^



/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/


SET TERM ^ ;

ALTER PROCEDURE SP_GEN_CENTRODECUSTO_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_centrodecusto_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_DEPARTAMENTO_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_departamento_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_EMPRESA_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_empresa_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_HISTORICO_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_historico_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_LANCAMENTOS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_lancamentos_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_PLANODECONTAS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_planodecontas_id, 1);
  suspend;
end^



SET TERM ; ^
