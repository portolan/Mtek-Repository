CREATE TABLE PESSOAS (
    PESS_CODIGO         integer NOT NULL,
    PESS_NOME            VARCHAR(100),
    PESS_TIPO           CHAR(1),
    PESS_APELIDO        VARCHAR(60),
    PESS_CONTATO        VARCHAR(60),
    PESS_TELCONTATO     VARCHAR(15),
    PESS_TEL1             VARCHAR(15),
    PESS_TEL2           VARCHAR(15),
    PESS_TEL3            VARCHAR(15),
    PESS_FAX            VARCHAR(12),
    PESS_RAMAL          INTEGER,
    PESS_CNPJ           VARCHAR(14),
    PESS_CPF            VARCHAR(11),
    PESS_RG             VARCHAR(10),
    PESS_INSCESTADUAL   VARCHAR(9),
    PESS_INSCMUNICIPAL  VARCHAR(15),
    PESS_EMAIL          VARCHAR(60),
    PESS_DTCADASTRO     TIMESTAMP NOT NULL,
    PESS_LOGRADOURO       VARCHAR(60),
    PESS_BAIRRO        VARCHAR(30),
    PESS_COMPLEMENTO       VARCHAR(30),
    PESS_NR       VARCHAR(5),
    PESS_CIDADE        VARCHAR(20) DEFAULT 'PR',
    PESS_UF        VARCHAR(2),
    PESS_PAIS       VARCHAR(20) DEFAULT 'BRASIL',

   CONSTRAINT PK_PESSOA PRIMARY KEY (PESS_CODIGO)

);


CREATE TABLE SOLICITACAO_COMPRA (
          SOL_EMPRESA INTEGER NOT NULL,
          SOL_CODIGO INTEGER NOT NULL,
          SOL_DEPARTAMENTO INTEGER NOT NULL,
          SOL_PRODUTO VARCHAR(30) NOT NULL,
          SOL_QTD NUMERIC(10,2) DEFAULT 0 NOT NULL,
          SOL_DATA date NOT NULL,
          SOL_DATA_URGENCIA DATE,
          SOL_OBS BLOB SUB_TYPE 1,
          SOL_DATA_LIBERACAO DATE,
          SOL_STATUS VARCHAR(1) DEFAULT 'A' NOT NULL,

    CONSTRAINT PK_SOLICITACAO PRIMARY KEY (SOL_EMPRESA, SOL_CODIGO),

    CONSTRAINT FK_SOLICITACAO_EMPRESA FOREIGN KEY (SOL_EMPRESA) REFERENCES EMPRESA (EMP_COD),
    CONSTRAINT FK_SOLICITACAO_DEPARTAMENTO FOREIGN KEY (SOL_EMPRESA, SOL_DEPARTAMENTO) REFERENCES DEPARTAMENTO(DEP_EMPRESAR, DEP_COD),
    CONSTRAINT FK_SOLICITACAO_PRODUTO FOREIGN KEY (SOL_EMPRESA, SOL_PRODUTO) REFERENCES PRODUTOS(PRO_EMPRESA, PRO_CODIGO)
);

CREATE TABLE COTACAO (
        COT_EMPRESA INTEGER NOT NULL,
        COT_CODIGO INTEGER NOT NULL,
        COT_DEPARTAMENTO INTEGER NOT NULL,
        COT_DESCRICAO VARCHAR(40) NOT NULL,
        COT_STATUS VARCHAR(1) NOT NULL,
        COT_DATA DATE NOT NULL,
        COT_OBS BLOB SUB_TYPE 1,
        COT_PRODUTO VARCHAR(30),
        COT_QTD NUMERIC(10,2),
        COT_SOLICITACAO_ORIGEM INTEGER,

    CONSTRAINT PK_COTACAO PRIMARY KEY (COT_EMPRESA, COT_CODIGO),
    CONSTRAINT FK_COTACAO_EMPRESA FOREIGN KEY (COT_EMPRESA) REFERENCES EMPRESA (EMP_COD),
    CONSTRAINT FK_COTACAO_DEPARTAMENTO FOREIGN KEY (COT_EMPRESA, COT_DEPARTAMENTO) REFERENCES DEPARTAMENTO(DEP_EMPRESAR, DEP_COD),
    CONSTRAINT FK_COTACAO_PRODUTO FOREIGN KEY (COT_EMPRESA, COT_PRODUTO) REFERENCES PRODUTOS(PRO_EMPRESA, PRO_CODIGO),
    CONSTRAINT FK_COTACAO_SOLICIT FOREIGN KEY (COT_EMPRESA, COT_SOLICITACAO_ORIGEM) REFERENCES SOLICITACAO_COMPRA (SOL_EMPRESA, SOL_CODIGO)
);

CREATE TABLE FORNEC_COTACAO (
    FCT_EMPRESA INTEGER NOT NULL,
    FCT_COTACAO INTEGER NOT NULL,
    FCT_FORNECEDOR INTEGER NOT NULL,
    FCT_VENCEDOR VARCHAR(1) DEFAULT 'N' NOT null, 
    FCT_VLR_UNITARIO NUMERIC(18,4) DEFAULT 0 NOT NULL,
    FCT_VLR_FRETE NUMERIC(18,4) DEFAULT 0 NOT NULL,
    FCT_DT_ENTREGA DATE,
    FCT_UND_MEDIDA INTEGER,

    CONSTRAINT PK_FORNC_COTACAO PRIMARY KEY (FCT_EMPRESA, FCT_COTACAO, FCT_FORNECEDOR),
    CONSTRAINT FK_FORNC_COTACAO FOREIGN KEY (FCT_EMPRESA, FCT_COTACAO) REFERENCES COTACAO (COT_EMPRESA, COT_CODIGO),
    CONSTRAINT FK_FORNC_PESSOA FOREIGN KEY (FCT_FORNECEDOR) REFERENCES PESSOAS (PESS_CODIGO),
    CONSTRAINT FK_FORNC_UNMEDIDA FOREIGN KEY (FCT_UND_MEDIDA) REFERENCES UNIDADE (UN_CODIGO)
);


CREATE TABLE PEDIDO_COMPRA (
       PDC_EMPRESA INTEGER NOT NULL,
       PDC_CODIGO INTEGER NOT NULL,
       PDC_DEPARTAMENTO INTEGER NOT NULL,
       PDC_PRODUTO VARCHAR(30) NOT NULL,
       PDC_FORNECEDOR INTEGER NOT NULL,
       PDC_PREV_ENTREGA DATE,
       PDC_VLR_FRETE NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_VLR_UNITARIO NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_VLR_BRUTO NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_VLR_DESCONTO NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_VLR_LIQUIDO NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_VLR_TOTAL NUMERIC(18,4) DEFAULT 0 NOT NULL,
       PDC_STATUS VARCHAR(1) DEFAULT 'A' NOT NULL,
       PDC_DATA DATE NOT NULL,
       PDC_QTD_TOTAL NUMERIC(10,2) DEFAULT 0 NOT NULL,
       PDC_DATA_ENTREGA DATE,
       PDC_OBS BLOB SUB_TYPE 1,
       PDC_UNMEDIDA INTEGER NOT NULL,
       PDC_COTACAO_ORIGEM INTEGER,
       PDC_SOLICITICAO_ORIGEM INTEGER,

    CONSTRAINT PK_PEDCOMPRA PRIMARY KEY (PDC_EMPRESA, PDC_CODIGO),

    CONSTRAINT FK_PEDCOMPRA_EMPRESA FOREIGN KEY (PDC_EMPRESA) REFERENCES EMPRESA (EMP_COD),
    CONSTRAINT FK_PEDCOMPRA_DEPARTAMENTO FOREIGN KEY (PDC_EMPRESA,PDC_DEPARTAMENTO) REFERENCES DEPARTAMENTO(DEP_EMPRESAR, DEP_COD),
    CONSTRAINT FK_PEDCOMPRA_PRODUTO FOREIGN KEY (PDC_EMPRESA,PDC_PRODUTO) REFERENCES PRODUTOS (PRO_EMPRESA, PRO_CODIGO),
    CONSTRAINT FK_PEDCOMPRA_PESSOA FOREIGN KEY (PDC_FORNECEDOR) REFERENCES PESSOAS(PESS_CODIGO),
    CONSTRAINT FK_PEDCOMPRA_UNMEDIDA FOREIGN KEY (PDC_UNMEDIDA) REFERENCES UNIDADE (UN_CODIGO),
    CONSTRAINT FK_PEDCOMPRA_COTACAO FOREIGN KEY (PDC_EMPRESA, PDC_COTACAO_ORIGEM) REFERENCES COTACAO(COT_EMPRESA, COT_CODIGO),
    CONSTRAINT FK_PEDCOMPRA_SOLICIT FOREIGN KEY (PDC_EMPRESA, PDC_SOLICITICAO_ORIGEM) REFERENCES SOLICITACAO_COMPRA (SOL_EMPRESA, SOL_CODIGO)
);




