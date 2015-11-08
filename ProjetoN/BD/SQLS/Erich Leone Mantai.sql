/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 08/11/2015 12:54:35          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

CREATE DATABASE 'C:\Users\Erick\Desktop\ARQUIVOS DO PROJETO\APLICACAO\ERP_DATABASE.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



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

CREATE TABLE ENTREGA_MATERIA (
    EM0_COD         INTEGER NOT NULL,
    EM0_PESSOA      INTEGER NOT NULL,
    EM0_PRODUCAO    INTEGER,
    EM0_DESCRICAO   VARCHAR(30),
    EM0_DT_ENTREGA  DATE,
    EM0_EMPRESA     INTEGER NOT NULL
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

CREATE TABLE FICHA_TECNICA (
    FT_COD             INTEGER NOT NULL,
    FT_PRODUTO         VARCHAR(30) NOT NULL,
    FT_UNIDADE         INTEGER,
    FT_CUSTO_UNITARIO  NUMERIC(18,4),
    FT_MAO_DE_OBRA     NUMERIC(18,4),
    FT_QUANTIDADE      INTEGER,
    FT_CUSTO_TOTAL     NUMERIC(18,4),
    FT_TEMPO_PRODUCAO  TIMESTAMP,
    FT_EMPRESA         INTEGER NOT NULL
);

CREATE TABLE ITENS_FICHA (
    IFT_FICHA           INTEGER,
    ITF_ORDEM_PRODUCAO  INTEGER,
    IFT_PRODUTO         VARCHAR(30),
    IFT_EMPRESA         INTEGER NOT NULL,
    IFT_QTD_TOTAL       NUMERIC(18,4),
    IFT_DESCRICAO       VARCHAR(30),
    IFT_VLR_UNITARIO    NUMERIC(18,4),
    IFT_VLR_TOTAL       NUMERIC(18,4)
);

CREATE TABLE ORDEM_PRODUCAO (
    OP_VENDAS        INTEGER,
    OP_EMPRESA       INTEGER NOT NULL,
    OP_FICHATECNICA  VARCHAR(30),
    OP_DESCRICAO     VARCHAR(50),
    OP_TIPO          VARCHAR(30),
    OP_QTD           INTEGER,
    OP_DT_PEDIDO     DATE,
    OP_DT_ENTREGA    DATE,
    OP_STATUS        VARCHAR(1) default'A',
    OP_COMPRAS       INTEGER NOT NULL,
    OP_COD           INTEGER NOT NULL
);

CREATE TABLE PEDIDO_COMPRA (
    PDC_EMPRESA             INTEGER NOT NULL,
    PDC_CODIGO              INTEGER NOT NULL,
    PDC_DEPARTAMENTO        INTEGER NOT NULL,
    PDC_PRODUTO             VARCHAR(30) NOT NULL,
    PDC_FORNECEDOR          INTEGER NOT NULL,
    PDC_PREV_ENTREGA        DATE,
    PDC_VLR_FRETE           NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_VLR_UNITARIO        NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_VLR_BRUTO           NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_VLR_DESCONTO        NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_VLR_LIQUIDO         NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_VLR_TOTAL           NUMERIC(18,4) DEFAULT 0 NOT NULL,
    PDC_STATUS              VARCHAR(1) DEFAULT 'A' NOT NULL,
    PDC_DATA                DATE NOT NULL,
    PDC_QTD_TOTAL           NUMERIC(10,2) DEFAULT 0 NOT NULL,
    PDC_DATA_ENTREGA        DATE,
    PDC_OBS                 BLOB SUB_TYPE 1 SEGMENT SIZE 80,
    PDC_UNMEDIDA            INTEGER NOT NULL,
    PDC_COTACAO_ORIGEM      INTEGER,
    PDC_SOLICITICAO_ORIGEM  INTEGER
);

CREATE TABLE PEDIDOVENDA (
    PED_COD               INTEGER NOT NULL,
    PED_PESSOA            VARCHAR(60) NOT NULL,
    PED_SEQUENCIA         INTEGER,
    PED_SITUACAO          VARCHAR(5) DEFAULT 'A',
    PED_EMPRESA           INTEGER NOT NULL,
    PED_DEPOSITO          INTEGER NOT NULL,
    PED_PRODUTO           INTEGER NOT NULL,
    PED_DESCRICAO         VARCHAR(60),
    PED_TIPOMOVIMENTACAO  INTEGER NOT NULL,
    PED_UNIDADE           INTEGER,
    PED_QUANTIDADE        NUMERIC(18,2) DEFAULT 0.0,
    PED_LISTA_PRECO       NUMERIC(18,2),
    PED_DESCONTO          NUMERIC(18,2),
    PED_QTD_DISPONIVEL    NUMERIC(18,2) DEFAULT 0.0,
    PED_VLRUNITARIO       NUMERIC(18,2),
    PED_VLRTOTAL          NUMERIC(18,2),
    PED_REAJUSTE          NUMERIC(18,2),
    PED_DTPEDIDO          DATE,
    PED_DTENTRADA         DATE,
    PED_DTPRAZOENTREGA    DATE
);

CREATE TABLE PESSOAS (
    PESS_CODIGO         INTEGER NOT NULL,
    PESS_NOME           VARCHAR(100),
    PESS_TIPO           CHAR(1),
    PESS_APELIDO        VARCHAR(60),
    PESS_CONTATO        VARCHAR(60),
    PESS_TELCONTATO     VARCHAR(15),
    PESS_TEL1           VARCHAR(15),
    PESS_TEL2           VARCHAR(15),
    PESS_TEL3           VARCHAR(15),
    PESS_FAX            VARCHAR(12),
    PESS_RAMAL          INTEGER,
    PESS_CNPJ           VARCHAR(14),
    PESS_CPF            VARCHAR(11),
    PESS_RG             VARCHAR(10),
    PESS_INSCESTADUAL   VARCHAR(9),
    PESS_INSCMUNICIPAL  VARCHAR(15),
    PESS_EMAIL          VARCHAR(60),
    PESS_DTCADASTRO     TIMESTAMP NOT NULL,
    PESS_LOGRADOURO     VARCHAR(60),
    PESS_BAIRRO         VARCHAR(30),
    PESS_COMPLEMENTO    VARCHAR(30),
    PESS_NR             VARCHAR(5),
    PESS_CIDADE         VARCHAR(20) DEFAULT 'PR',
    PESS_UF             VARCHAR(2),
    PESS_PAIS           VARCHAR(20) DEFAULT 'BRASIL'
);

CREATE TABLE PRODUCAO (
    PROD_ORDEM          INTEGER,
    PROD_DESCRICAO      VARCHAR(30),
    PROD_TIPO           VARCHAR(30),
    PROD_DT_INICIO      DATE,
    PROD_DT_TERMINO     DATE,
    PROD_QTD_PRODUZIDA  INTEGER,
    PROD_STATUS         VARCHAR(30),
    PROD_EMPRESA        INTEGER NOT NULL,
    PROD_COD            INTEGER NOT NULL
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

CREATE TABLE SOLICITACAO_COMPRA (
    SOL_EMPRESA         INTEGER NOT NULL,
    SOL_CODIGO          INTEGER NOT NULL,
    SOL_DEPARTAMENTO    INTEGER NOT NULL,
    SOL_PRODUTO         VARCHAR(30) NOT NULL,
    SOL_QTD             NUMERIC(10,2) DEFAULT 0 NOT NULL,
    SOL_DATA            DATE NOT NULL,
    SOL_DATA_URGENCIA   DATE,
    SOL_OBS             BLOB SUB_TYPE 1 SEGMENT SIZE 80,
    SOL_DATA_LIBERACAO  DATE,
    SOL_STATUS          VARCHAR(1) DEFAULT 'A' NOT NULL
);



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE EMPRESA ADD CONSTRAINT PK_EMPRESA PRIMARY KEY (EMP_COD);
ALTER TABLE ENTREGA_MATERIA ADD CONSTRAINT PK_ENTREGA_MATERIA PRIMARY KEY (EM0_EMPRESA, EM0_COD);
ALTER TABLE FICHA_TECNICA ADD CONSTRAINT PK_FICHA PRIMARY KEY (FT_COD, FT_PRODUTO, FT_EMPRESA);
ALTER TABLE ITENS_FICHA ADD CONSTRAINT PK_ITENS PRIMARY KEY (IFT_EMPRESA);
ALTER TABLE ORDEM_PRODUCAO ADD CONSTRAINT PK_ORDEM_PRODUCAO PRIMARY KEY (OP_COD, OP_EMPRESA);
ALTER TABLE PEDIDOVENDA ADD CONSTRAINT PK_PEDIDO_VENDA PRIMARY KEY (PED_EMPRESA, PED_COD);
ALTER TABLE PEDIDO_COMPRA ADD CONSTRAINT PK_PEDCOMPRA PRIMARY KEY (PDC_EMPRESA, PDC_CODIGO);
ALTER TABLE PESSOAS ADD CONSTRAINT PK_PESSOA PRIMARY KEY (PESS_CODIGO);
ALTER TABLE PRODUCAO ADD CONSTRAINT PK_PRODUCAO PRIMARY KEY (PROD_EMPRESA, PROD_COD);
ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRO_EMPRESA, PRO_CODIGO);
ALTER TABLE SOLICITACAO_COMPRA ADD CONSTRAINT PK_SOLICITACAO PRIMARY KEY (SOL_EMPRESA, SOL_CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ENTREGA_MATERIA ADD CONSTRAINT FK_PESSOA FOREIGN KEY (EM0_PESSOA) REFERENCES PESSOAS (PESS_CODIGO);
ALTER TABLE ENTREGA_MATERIA ADD CONSTRAINT FK_PRODUCAO_ENTREGA FOREIGN KEY (EM0_EMPRESA, EM0_PRODUCAO) REFERENCES PRODUCAO (PROD_EMPRESA, PROD_COD);
ALTER TABLE FICHA_TECNICA ADD CONSTRAINT REL_FICHA_TECNICA_PRODUTO FOREIGN KEY (FT_EMPRESA, FT_PRODUTO) REFERENCES PRODUTOS (PRO_EMPRESA, PRO_CODIGO);
ALTER TABLE ITENS_FICHA ADD CONSTRAINT FK_ITENS_FICHA FOREIGN KEY (IFT_FICHA, IFT_PRODUTO, IFT_EMPRESA) REFERENCES FICHA_TECNICA (FT_COD, FT_PRODUTO, FT_EMPRESA);
ALTER TABLE ORDEM_PRODUCAO ADD CONSTRAINT FK_VENDA_ORDEM FOREIGN KEY (OP_EMPRESA, OP_VENDAS) REFERENCES PEDIDOVENDA (PED_EMPRESA, PED_COD);
ALTER TABLE PRODUCAO ADD CONSTRAINT FK_ORDEM FOREIGN KEY (PROD_ORDEM, PROD_EMPRESA) REFERENCES ORDEM_PRODUCAO (OP_COD, OP_EMPRESA);