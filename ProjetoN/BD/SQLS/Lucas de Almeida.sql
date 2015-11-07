----------LOGO EM SEGUIDA JA VOU CRIAR AS FOREIN KEY PARA RELACIONAR AS TABELAS--------------------- 

/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/

--Todas tabelas tem que ter primary key empresa
--por exemplo : emi_empresa integer not null || fat_empresa integer not null

CREATE TABLE CONDICAO_PAGAMENTO (
    CON_CODIGO     INTEGER NOT NULL,
    CON_DESCRICAO  VARCHAR(100)
);

CREATE TABLE EMISSAO_NFE (
    EMI_NUMERO            INTEGER NOT NULL,
    EMI_NOTAFISCAL        NUMERIC(9,0),
    EMI_SERIE             NUMERIC(9,0),
    EMI_TIPOMOVIMENTACAO  INTEGER NOT NULL,
    EMI_DESCRICAO         VARCHAR(60) NOT NULL,
    EMI_PESSOA            VARCHAR(60) NOT NULL,
    EMI_DTEMISSAO         DATE,
    EMI_DTSAIDA           DATE
);

CREATE TABLE FATURAMENTO (
    FAT_CODIGO_PEDIDO  INTEGER NOT NULL,
    FAT_DESCRICAO      VARCHAR(60),
    FAT_PESSOA         INTEGER NOT NULL,
    FAT_NOTA           INTEGER,
    FAT_NOTASERIE      INTEGER,
    FAT_DTEMISSAO      DATE,
    FAT_DTSAIDA        DATE,
    FAT_SITAUCAO       VARCHAR(5) DEFAULT 'A',
    FAT_CHAVE_ACESSO   NUMERIC(9,0)
);

--Isto aqui, pra que serve? ja tem mov de estoque
CREATE TABLE MOV_PEDIDO_VENDA (
    MOV_NUMERO      INTEGER NOT NULL,
    MOV_DTPEDIDO    DATE,
    MOV_DTENTRADA   DATE,
    MOV_DTPRAZO     DATE,
    MOV_PESSOA      VARCHAR(60) NOT NULL,
    MOV_VENDEDOR    VARCHAR(60) NOT NULL,
    MOV_CONDICAOPG  INTEGER NOT NULL,
    MOV_VLTOTAL     NUMERIC(18,2),
    MOV_DTINICIAL   DATE,
    MOV_DTFINAL     DATE
);

-- Falta campos
CREATE TABLE ORDEM_VENDA (
    ORD_NUMERO  INTEGER NOT NULL
); 

CREATE TABLE PEDIDOVENDA (
    PED_NUMERO            INTEGER NOT NULL,
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



/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE EMISSAO_NFE ADD CONSTRAINT PK_EMISSAO_NFE PRIMARY KEY (EMI_NUMERO, EMI_TIPOMOVIMENTACAO, EMI_PESSOA);
ALTER TABLE FATURAMENTO ADD CONSTRAINT PK_FATURAMENTO PRIMARY KEY (FAT_CODIGO_PEDIDO, FAT_PESSOA);
ALTER TABLE MOV_PEDIDO_VENDA ADD CONSTRAINT PK_MOV_PEDIDO_VENDA PRIMARY KEY (MOV_NUMERO, MOV_CONDICAOPG, MOV_VENDEDOR, MOV_PESSOA);
ALTER TABLE ORDEM_VENDA ADD CONSTRAINT PK_ORDEM_VENDA PRIMARY KEY (ORD_NUMERO);
ALTER TABLE PEDIDOVENDA ADD CONSTRAINT PK_PEDIDOVENDAS PRIMARY KEY (PED_NUMERO, PED_PESSOA, PED_EMPRESA, PED_DEPOSITO, PED_PRODUTO, PED_TIPOMOVIMENTACAO);
