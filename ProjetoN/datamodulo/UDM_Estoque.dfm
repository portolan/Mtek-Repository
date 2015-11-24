object DM_Estoque: TDM_Estoque
  OldCreateOrder = False
  Height = 291
  Width = 714
  object Produtos: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = ProdutosAfterInsert
    BeforePost = ProdutosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select b.*, emp_razao, cat_descricao from produtos b'
      'inner join empresa on emp_cod = pro_empresa'
      
        'left join categoria on cat_empresa = pro_empresa and cat_codigo ' +
        '= pro_categoria')
    UpdateObject = UProdutos
    Left = 24
    Top = 8
    object ProdutosPRO_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'PRO_EMPRESA'
      Origin = '"PRODUTOS"."PRO_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosPRO_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object ProdutosPRO_CODREF: TIBStringField
      DisplayLabel = 'C'#243'd. Referencia'
      FieldName = 'PRO_CODREF'
      Origin = '"PRODUTOS"."PRO_CODREF"'
      Size = 30
    end
    object ProdutosPRO_CODBARRAS: TIBStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRO_CODBARRAS'
      Origin = '"PRODUTOS"."PRO_CODBARRAS"'
      Size = 60
    end
    object ProdutosPRO_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      FixedChar = True
      Size = 1
    end
    object ProdutosPRO_DTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
      EditMask = '!99/99/00;1;_'
    end
    object ProdutosPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
    object ProdutosPRO_MARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
    end
    object ProdutosPRO_MOEDA: TIBStringField
      DisplayLabel = 'Moeda'
      FieldName = 'PRO_MOEDA'
      Origin = '"PRODUTOS"."PRO_MOEDA"'
      Size = 10
    end
    object ProdutosPRO_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'PRO_CATEGORIA'
      Origin = '"PRODUTOS"."PRO_CATEGORIA"'
    end
    object ProdutosPRO_PESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      DisplayFormat = '0.00000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_CUSTOMEDIO: TIBBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'PRO_CUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_CUSTOMEDIO"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VALORIZACAO: TIBBCDField
      DisplayLabel = 'Valoriza'#231#227'o'
      FieldName = 'PRO_VALORIZACAO'
      Origin = '"PRODUTOS"."PRO_VALORIZACAO"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRFRETE: TIBBCDField
      DisplayLabel = 'Vlr Frete'
      FieldName = 'PRO_VLRFRETE'
      Origin = '"PRODUTOS"."PRO_VLRFRETE"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCENCARG: TIBBCDField
      DisplayLabel = '% Encargos'
      FieldName = 'PRO_PERCENCARG'
      Origin = '"PRODUTOS"."PRO_PERCENCARG"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRENCARG: TIBBCDField
      DisplayLabel = 'Vlr Encargos'
      FieldName = 'PRO_VLRENCARG'
      Origin = '"PRODUTOS"."PRO_VLRENCARG"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCMARGLUCR: TIBBCDField
      DisplayLabel = '% Margem Lucro'
      FieldName = 'PRO_PERCMARGLUCR'
      Origin = '"PRODUTOS"."PRO_PERCMARGLUCR"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRMARGLUCR: TIBBCDField
      DisplayLabel = 'Vlr Margem Lucro'
      FieldName = 'PRO_VLRMARGLUCR'
      Origin = '"PRODUTOS"."PRO_VLRMARGLUCR"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA: TIBBCDField
      DisplayLabel = 'Vlr Venda'
      FieldName = 'PRO_VLRVENDA'
      Origin = '"PRODUTOS"."PRO_VLRVENDA"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PRO_OBS'
      Origin = '"PRODUTOS"."PRO_OBS"'
      Size = 100
    end
    object ProdutosPRO_IMG: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'PRO_IMG'
      Origin = '"PRODUTOS"."PRO_IMG"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosPRO_GRUPO: TIBStringField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosPRO_UNID: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'PRO_UNID'
      Origin = '"PRODUTOS"."PRO_UNID"'
    end
    object ProdutosPRO_CLASSFISCAL: TIBStringField
      DisplayLabel = 'Class. Fiscal'
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
      Size = 30
    end
    object ProdutosPRO_CSTCSOSN: TIBStringField
      DisplayLabel = 'CSTCSOSN'
      FieldName = 'PRO_CSTCSOSN'
      Origin = '"PRODUTOS"."PRO_CSTCSOSN"'
      Size = 30
    end
    object ProdutosPRO_NCMSH: TIBStringField
      DisplayLabel = 'NCM/SH'
      FieldName = 'PRO_NCMSH'
      Origin = '"PRODUTOS"."PRO_NCMSH"'
      Size = 30
    end
    object ProdutosPRO_EXTIPI: TIBStringField
      DisplayLabel = 'Ex. TIPI'
      FieldName = 'PRO_EXTIPI'
      Origin = '"PRODUTOS"."PRO_EXTIPI"'
      Size = 30
    end
    object ProdutosPRO_SITTRIB: TIBStringField
      DisplayLabel = 'Sit. Tribut'#225'ria'
      FieldName = 'PRO_SITTRIB'
      Origin = '"PRODUTOS"."PRO_SITTRIB"'
      Size = 30
    end
    object ProdutosPRO_PIS: TIBStringField
      DisplayLabel = 'PIS'
      FieldName = 'PRO_PIS'
      Origin = '"PRODUTOS"."PRO_PIS"'
    end
    object ProdutosPRO_COFINS: TIBStringField
      DisplayLabel = 'COFINS'
      FieldName = 'PRO_COFINS'
      Origin = '"PRODUTOS"."PRO_COFINS"'
      Size = 18
    end
    object ProdutosPRO_CSTPIS: TIBStringField
      DisplayLabel = 'CSTPIS'
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
      Size = 18
    end
    object ProdutosPRO_ESTATUAL: TIBStringField
      DisplayLabel = 'Est. Atual'
      FieldName = 'PRO_ESTATUAL'
      Origin = '"PRODUTOS"."PRO_ESTATUAL"'
    end
    object ProdutosEMP_RAZAO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object ProdutosCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CAT_DESCRICAO'
      Origin = '"CATEGORIA"."CAT_DESCRICAO"'
      Size = 60
    end
  end
  object UProdutos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from produtos '
      'where'
      '  PRO_CODIGO = :PRO_CODIGO and'
      '  PRO_EMPRESA = :PRO_EMPRESA')
    ModifySQL.Strings = (
      'update produtos'
      'set'
      '  PRO_CATEGORIA = :PRO_CATEGORIA,'
      '  PRO_CLASSFISCAL = :PRO_CLASSFISCAL,'
      '  PRO_CODBARRAS = :PRO_CODBARRAS,'
      '  PRO_CODIGO = :PRO_CODIGO,'
      '  PRO_CODREF = :PRO_CODREF,'
      '  PRO_COFINS = :PRO_COFINS,'
      '  PRO_CSTCSOSN = :PRO_CSTCSOSN,'
      '  PRO_CSTPIS = :PRO_CSTPIS,'
      '  PRO_CUSTOMEDIO = :PRO_CUSTOMEDIO,'
      '  PRO_DESCRICAO = :PRO_DESCRICAO,'
      '  PRO_DTCADASTRO = :PRO_DTCADASTRO,'
      '  PRO_EMPRESA = :PRO_EMPRESA,'
      '  PRO_ESTATUAL = :PRO_ESTATUAL,'
      '  PRO_EXTIPI = :PRO_EXTIPI,'
      '  PRO_GRUPO = :PRO_GRUPO,'
      '  PRO_IMG = :PRO_IMG,'
      '  PRO_MARCA = :PRO_MARCA,'
      '  PRO_MOEDA = :PRO_MOEDA,'
      '  PRO_NCMSH = :PRO_NCMSH,'
      '  PRO_OBS = :PRO_OBS,'
      '  PRO_PERCENCARG = :PRO_PERCENCARG,'
      '  PRO_PERCMARGLUCR = :PRO_PERCMARGLUCR,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PIS = :PRO_PIS,'
      '  PRO_SITTRIB = :PRO_SITTRIB,'
      '  PRO_STATUS = :PRO_STATUS,'
      '  PRO_UNID = :PRO_UNID,'
      '  PRO_VALORIZACAO = :PRO_VALORIZACAO,'
      '  PRO_VLRENCARG = :PRO_VLRENCARG,'
      '  PRO_VLRFRETE = :PRO_VLRFRETE,'
      '  PRO_VLRMARGLUCR = :PRO_VLRMARGLUCR,'
      '  PRO_VLRVENDA = :PRO_VLRVENDA'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO and'
      '  PRO_EMPRESA = :OLD_PRO_EMPRESA')
    InsertSQL.Strings = (
      'insert into produtos'
      
        '  (PRO_CATEGORIA, PRO_CLASSFISCAL, PRO_CODBARRAS, PRO_CODIGO, PR' +
        'O_CODREF, '
      
        '   PRO_COFINS, PRO_CSTCSOSN, PRO_CSTPIS, PRO_CUSTOMEDIO, PRO_DES' +
        'CRICAO, '
      
        '   PRO_DTCADASTRO, PRO_EMPRESA, PRO_ESTATUAL, PRO_EXTIPI, PRO_GR' +
        'UPO, PRO_IMG, '
      
        '   PRO_MARCA, PRO_MOEDA, PRO_NCMSH, PRO_OBS, PRO_PERCENCARG, PRO' +
        '_PERCMARGLUCR, '
      
        '   PRO_PESO, PRO_PIS, PRO_SITTRIB, PRO_STATUS, PRO_UNID, PRO_VAL' +
        'ORIZACAO, '
      '   PRO_VLRENCARG, PRO_VLRFRETE, PRO_VLRMARGLUCR, PRO_VLRVENDA)'
      'values'
      
        '  (:PRO_CATEGORIA, :PRO_CLASSFISCAL, :PRO_CODBARRAS, :PRO_CODIGO' +
        ', :PRO_CODREF, '
      
        '   :PRO_COFINS, :PRO_CSTCSOSN, :PRO_CSTPIS, :PRO_CUSTOMEDIO, :PR' +
        'O_DESCRICAO, '
      
        '   :PRO_DTCADASTRO, :PRO_EMPRESA, :PRO_ESTATUAL, :PRO_EXTIPI, :P' +
        'RO_GRUPO, '
      
        '   :PRO_IMG, :PRO_MARCA, :PRO_MOEDA, :PRO_NCMSH, :PRO_OBS, :PRO_' +
        'PERCENCARG, '
      
        '   :PRO_PERCMARGLUCR, :PRO_PESO, :PRO_PIS, :PRO_SITTRIB, :PRO_ST' +
        'ATUS, :PRO_UNID, '
      
        '   :PRO_VALORIZACAO, :PRO_VLRENCARG, :PRO_VLRFRETE, :PRO_VLRMARG' +
        'LUCR, :PRO_VLRVENDA)')
    DeleteSQL.Strings = (
      'delete from produtos'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO and'
      '  PRO_EMPRESA = :OLD_PRO_EMPRESA')
    Left = 24
    Top = 120
  end
  object DSProdutos: TDataSource
    DataSet = Produtos
    Left = 24
    Top = 64
  end
  object Estoque: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = EstoqueAfterInsert
    BeforePost = EstoqueBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, pro_descricao, emp_razao, bloc_descricao, prat_descr' +
        'icao, cat_descricao from estoque a'
      
        'left join produtos on estoq_empresa = pro_empresa and estoq_prod' +
        'uto = pro_codigo'
      'inner join empresa on emp_cod = pro_empresa'
      
        'inner join bloco on estoq_bloco = bloc_codigo and estoq_empresa ' +
        '= bloc_empresa'
      
        'inner join prateleira on estoq_prateleira = prat_codigo and esto' +
        'q_empresa = prat_empresa'
      
        'inner join categoria on estoq_categoria = cat_codigo and estoq_e' +
        'mpresa = cat_empresa')
    UpdateObject = UuEstoque
    Left = 88
    Top = 8
    object EstoqueESTOQ_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'ESTOQ_EMPRESA'
      Origin = '"ESTOQUE"."ESTOQ_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EstoqueESTOQ_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'ESTOQ_PRODUTO'
      Origin = '"ESTOQUE"."ESTOQ_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object EstoqueESTOQ_BLOCO: TIntegerField
      DisplayLabel = 'Bloco'
      FieldName = 'ESTOQ_BLOCO'
      Origin = '"ESTOQUE"."ESTOQ_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EstoqueESTOQ_PRATELEIRA: TIntegerField
      DisplayLabel = 'Prateleira'
      FieldName = 'ESTOQ_PRATELEIRA'
      Origin = '"ESTOQUE"."ESTOQ_PRATELEIRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EstoqueESTOQ_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ESTOQ_CODIGO'
      Origin = '"ESTOQUE"."ESTOQ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EstoqueESTOQ_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ESTOQ_STATUS'
      Origin = '"ESTOQUE"."ESTOQ_STATUS"'
      FixedChar = True
      Size = 1
    end
    object EstoqueESTOQ_QTD: TIBBCDField
      DisplayLabel = 'Qtd'
      FieldName = 'ESTOQ_QTD'
      Origin = '"ESTOQUE"."ESTOQ_QTD"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_QTDMIN: TIBBCDField
      DisplayLabel = 'Qtd. M'#237'nima'
      FieldName = 'ESTOQ_QTDMIN'
      Origin = '"ESTOQUE"."ESTOQ_QTDMIN"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_QTDMAX: TIBBCDField
      DisplayLabel = 'Qtd. M'#225'xima'
      FieldName = 'ESTOQ_QTDMAX'
      Origin = '"ESTOQUE"."ESTOQ_QTDMAX"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_CUSTOMEDIO: TIBBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'ESTOQ_CUSTOMEDIO'
      Origin = '"ESTOQUE"."ESTOQ_CUSTOMEDIO"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'ESTOQ_CATEGORIA'
      Origin = '"ESTOQUE"."ESTOQ_CATEGORIA"'
    end
    object EstoqueESTOQ_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ESTOQ_TIPO'
      Origin = '"ESTOQUE"."ESTOQ_TIPO"'
    end
    object EstoqueESTOQ_DTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'ESTOQ_DTCADASTRO'
      Origin = '"ESTOQUE"."ESTOQ_DTCADASTRO"'
    end
    object EstoqueESTOQ_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'ESTOQ_OBS'
      Origin = '"ESTOQUE"."ESTOQ_OBS"'
      Size = 100
    end
    object EstoqueESTOQ_CHAVE: TIBStringField
      DisplayLabel = 'Chave'
      FieldName = 'ESTOQ_CHAVE'
      Origin = '"ESTOQUE"."ESTOQ_CHAVE"'
      Size = 10
    end
    object EstoquePRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
    object EstoqueEMP_RAZAO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object EstoqueBLOC_DESCRICAO: TIBStringField
      DisplayLabel = 'Bloco'
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Size = 60
    end
    object EstoquePRAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Prateleira'
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Size = 60
    end
    object EstoqueCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CAT_DESCRICAO'
      Origin = '"CATEGORIA"."CAT_DESCRICAO"'
      Size = 60
    end
  end
  object DSEstoque: TDataSource
    DataSet = Estoque
    Left = 88
    Top = 64
  end
  object UuEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from estoque '
      'where'
      '  ESTOQ_BLOCO = :ESTOQ_BLOCO and'
      '  ESTOQ_CODIGO = :ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :ESTOQ_EMPRESA and'
      '  ESTOQ_PRATELEIRA = :ESTOQ_PRATELEIRA and'
      '  ESTOQ_PRODUTO = :ESTOQ_PRODUTO')
    ModifySQL.Strings = (
      'update estoque'
      'set'
      '  ESTOQ_BLOCO = :ESTOQ_BLOCO,'
      '  ESTOQ_CATEGORIA = :ESTOQ_CATEGORIA,'
      '  ESTOQ_CHAVE = :ESTOQ_CHAVE,'
      '  ESTOQ_CODIGO = :ESTOQ_CODIGO,'
      '  ESTOQ_CUSTOMEDIO = :ESTOQ_CUSTOMEDIO,'
      '  ESTOQ_DTCADASTRO = :ESTOQ_DTCADASTRO,'
      '  ESTOQ_EMPRESA = :ESTOQ_EMPRESA,'
      '  ESTOQ_OBS = :ESTOQ_OBS,'
      '  ESTOQ_PRATELEIRA = :ESTOQ_PRATELEIRA,'
      '  ESTOQ_PRODUTO = :ESTOQ_PRODUTO,'
      '  ESTOQ_QTD = :ESTOQ_QTD,'
      '  ESTOQ_QTDMAX = :ESTOQ_QTDMAX,'
      '  ESTOQ_QTDMIN = :ESTOQ_QTDMIN,'
      '  ESTOQ_STATUS = :ESTOQ_STATUS,'
      '  ESTOQ_TIPO = :ESTOQ_TIPO'
      'where'
      '  ESTOQ_BLOCO = :OLD_ESTOQ_BLOCO and'
      '  ESTOQ_CODIGO = :OLD_ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :OLD_ESTOQ_EMPRESA and'
      '  ESTOQ_PRATELEIRA = :OLD_ESTOQ_PRATELEIRA and'
      '  ESTOQ_PRODUTO = :OLD_ESTOQ_PRODUTO')
    InsertSQL.Strings = (
      'insert into estoque'
      
        '  (ESTOQ_BLOCO, ESTOQ_CATEGORIA, ESTOQ_CHAVE, ESTOQ_CODIGO, ESTO' +
        'Q_CUSTOMEDIO, '
      
        '   ESTOQ_DTCADASTRO, ESTOQ_EMPRESA, ESTOQ_OBS, ESTOQ_PRATELEIRA,' +
        ' ESTOQ_PRODUTO, '
      
        '   ESTOQ_QTD, ESTOQ_QTDMAX, ESTOQ_QTDMIN, ESTOQ_STATUS, ESTOQ_TI' +
        'PO)'
      'values'
      
        '  (:ESTOQ_BLOCO, :ESTOQ_CATEGORIA, :ESTOQ_CHAVE, :ESTOQ_CODIGO, ' +
        ':ESTOQ_CUSTOMEDIO, '
      
        '   :ESTOQ_DTCADASTRO, :ESTOQ_EMPRESA, :ESTOQ_OBS, :ESTOQ_PRATELE' +
        'IRA, :ESTOQ_PRODUTO, '
      
        '   :ESTOQ_QTD, :ESTOQ_QTDMAX, :ESTOQ_QTDMIN, :ESTOQ_STATUS, :EST' +
        'OQ_TIPO)')
    DeleteSQL.Strings = (
      'delete from estoque'
      'where'
      '  ESTOQ_BLOCO = :OLD_ESTOQ_BLOCO and'
      '  ESTOQ_CODIGO = :OLD_ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :OLD_ESTOQ_EMPRESA and'
      '  ESTOQ_PRATELEIRA = :OLD_ESTOQ_PRATELEIRA and'
      '  ESTOQ_PRODUTO = :OLD_ESTOQ_PRODUTO')
    Left = 88
    Top = 120
  end
  object UMarcas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from marcas '
      'where'
      '  MARC_CODIGO = :MARC_CODIGO')
    ModifySQL.Strings = (
      'update marcas'
      'set'
      '  MARC_CODIGO = :MARC_CODIGO,'
      '  MARC_DESCRICAO = :MARC_DESCRICAO,'
      '  MARC_OBS = :MARC_OBS'
      'where'
      '  MARC_CODIGO = :OLD_MARC_CODIGO')
    InsertSQL.Strings = (
      'insert into marcas'
      '  (MARC_CODIGO, MARC_DESCRICAO, MARC_OBS)'
      'values'
      '  (:MARC_CODIGO, :MARC_DESCRICAO, :MARC_OBS)')
    DeleteSQL.Strings = (
      'delete from marcas'
      'where'
      '  MARC_CODIGO = :OLD_MARC_CODIGO')
    Left = 152
    Top = 120
  end
  object DSMarcas: TDataSource
    DataSet = Marcas
    Left = 152
    Top = 64
  end
  object Marcas: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = MarcasAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from marcas'
      '')
    UpdateObject = UMarcas
    Left = 152
    Top = 8
    object MarcasMARC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MARC_CODIGO'
      Origin = '"MARCAS"."MARC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MarcasMARC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MARC_DESCRICAO'
      Origin = '"MARCAS"."MARC_DESCRICAO"'
      Size = 240
    end
    object MarcasMARC_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'MARC_OBS'
      Origin = '"MARCAS"."MARC_OBS"'
      Size = 400
    end
  end
  object DSMovimentoEstoque: TDataSource
    DataSet = MovimentoEstoque
    Left = 328
    Top = 64
  end
  object UMovimentoEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EM_EMPRESA,'
      '  EM_PRODUTO,'
      '  EM_BLOCO,'
      '  EM_PRATELEIRA,'
      '  EM_ESTOQUE,'
      '  EM_CODIGO,'
      '  EM_TIPO,'
      '  EM_QTD,'
      '  EM_DATA,'
      '  EM_OBS,'
      '  EM_VALOR_FINANCEIRO,'
      '  EM_PEDIDOCOMPRAORIGEM,'
      '  EM_DPTO'
      'from ESTOQ_MOVIMENTO '
      'where'
      '  EM_BLOCO = :EM_BLOCO and'
      '  EM_CODIGO = :EM_CODIGO and'
      '  EM_EMPRESA = :EM_EMPRESA and'
      '  EM_ESTOQUE = :EM_ESTOQUE and'
      '  EM_PRATELEIRA = :EM_PRATELEIRA and'
      '  EM_PRODUTO = :EM_PRODUTO')
    ModifySQL.Strings = (
      'update ESTOQ_MOVIMENTO'
      'set'
      '  EM_BLOCO = :EM_BLOCO,'
      '  EM_CODIGO = :EM_CODIGO,'
      '  EM_DATA = :EM_DATA,'
      '  EM_DPTO = :EM_DPTO,'
      '  EM_EMPRESA = :EM_EMPRESA,'
      '  EM_ESTOQUE = :EM_ESTOQUE,'
      '  EM_OBS = :EM_OBS,'
      '  EM_PEDIDOCOMPRAORIGEM = :EM_PEDIDOCOMPRAORIGEM,'
      '  EM_PRATELEIRA = :EM_PRATELEIRA,'
      '  EM_PRODUTO = :EM_PRODUTO,'
      '  EM_QTD = :EM_QTD,'
      '  EM_TIPO = :EM_TIPO,'
      '  EM_VALOR_FINANCEIRO = :EM_VALOR_FINANCEIRO'
      'where'
      '  EM_BLOCO = :OLD_EM_BLOCO and'
      '  EM_CODIGO = :OLD_EM_CODIGO and'
      '  EM_EMPRESA = :OLD_EM_EMPRESA and'
      '  EM_ESTOQUE = :OLD_EM_ESTOQUE and'
      '  EM_PRATELEIRA = :OLD_EM_PRATELEIRA and'
      '  EM_PRODUTO = :OLD_EM_PRODUTO')
    InsertSQL.Strings = (
      'insert into ESTOQ_MOVIMENTO'
      
        '  (EM_BLOCO, EM_CODIGO, EM_DATA, EM_DPTO, EM_EMPRESA, EM_ESTOQUE' +
        ', EM_OBS, '
      
        '   EM_PEDIDOCOMPRAORIGEM, EM_PRATELEIRA, EM_PRODUTO, EM_QTD, EM_' +
        'TIPO, EM_VALOR_FINANCEIRO)'
      'values'
      
        '  (:EM_BLOCO, :EM_CODIGO, :EM_DATA, :EM_DPTO, :EM_EMPRESA, :EM_E' +
        'STOQUE, '
      
        '   :EM_OBS, :EM_PEDIDOCOMPRAORIGEM, :EM_PRATELEIRA, :EM_PRODUTO,' +
        ' :EM_QTD, '
      '   :EM_TIPO, :EM_VALOR_FINANCEIRO)')
    DeleteSQL.Strings = (
      'delete from ESTOQ_MOVIMENTO'
      'where'
      '  EM_BLOCO = :OLD_EM_BLOCO and'
      '  EM_CODIGO = :OLD_EM_CODIGO and'
      '  EM_EMPRESA = :OLD_EM_EMPRESA and'
      '  EM_ESTOQUE = :OLD_EM_ESTOQUE and'
      '  EM_PRATELEIRA = :OLD_EM_PRATELEIRA and'
      '  EM_PRODUTO = :OLD_EM_PRODUTO')
    Left = 320
    Top = 120
  end
  object Categoria: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = CategoriaAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from categoria'
      ''
      '')
    UpdateObject = UCategoria
    Left = 416
    Top = 8
    object CategoriaCAT_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CAT_EMPRESA'
      Origin = '"CATEGORIA"."CAT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CategoriaCAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CAT_CODIGO'
      Origin = '"CATEGORIA"."CAT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CategoriaCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CAT_DESCRICAO'
      Origin = '"CATEGORIA"."CAT_DESCRICAO"'
      Required = True
      Size = 60
    end
    object CategoriaCAT_NCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'CAT_NCM'
      Origin = '"CATEGORIA"."CAT_NCM"'
    end
    object CategoriaCAT_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'CAT_OBS'
      Origin = '"CATEGORIA"."CAT_OBS"'
      Size = 100
    end
  end
  object UCategoria: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from categoria '
      'where'
      '  CAT_CODIGO = :CAT_CODIGO and'
      '  CAT_EMPRESA = :CAT_EMPRESA')
    ModifySQL.Strings = (
      'update categoria'
      'set'
      '  CAT_CODIGO = :CAT_CODIGO,'
      '  CAT_DESCRICAO = :CAT_DESCRICAO,'
      '  CAT_EMPRESA = :CAT_EMPRESA,'
      '  CAT_NCM = :CAT_NCM,'
      '  CAT_OBS = :CAT_OBS'
      'where'
      '  CAT_CODIGO = :OLD_CAT_CODIGO and'
      '  CAT_EMPRESA = :OLD_CAT_EMPRESA')
    InsertSQL.Strings = (
      'insert into categoria'
      '  (CAT_CODIGO, CAT_DESCRICAO, CAT_EMPRESA, CAT_NCM, CAT_OBS)'
      'values'
      
        '  (:CAT_CODIGO, :CAT_DESCRICAO, :CAT_EMPRESA, :CAT_NCM, :CAT_OBS' +
        ')')
    DeleteSQL.Strings = (
      'delete from categoria'
      'where'
      '  CAT_CODIGO = :OLD_CAT_CODIGO and'
      '  CAT_EMPRESA = :OLD_CAT_EMPRESA')
    Left = 416
    Top = 120
  end
  object DSCategoria: TDataSource
    DataSet = Categoria
    Left = 416
    Top = 64
  end
  object QueryGenerico: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 632
    Top = 192
  end
  object Bloco: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = BlocoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from bloco'
      ''
      '')
    UpdateObject = UBloco
    Left = 504
    Top = 8
    object BlocoBLOC_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'BLOC_EMPRESA'
      Origin = '"BLOCO"."BLOC_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BlocoBLOC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BLOC_CODIGO'
      Origin = '"BLOCO"."BLOC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BlocoBLOC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Required = True
      Size = 60
    end
    object BlocoBLOC_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'BLOC_OBS'
      Origin = '"BLOCO"."BLOC_OBS"'
      Size = 100
    end
    object BlocoBLOC_QTDMAXIMA: TIntegerField
      DisplayLabel = 'Qtd M'#225'xima'
      FieldName = 'BLOC_QTDMAXIMA'
      Origin = '"BLOCO"."BLOC_QTDMAXIMA"'
    end
    object BlocoBLOC_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'BLOC_CATEGORIA'
      Origin = '"BLOCO"."BLOC_CATEGORIA"'
    end
  end
  object DSBloco: TDataSource
    DataSet = Bloco
    Left = 504
    Top = 64
  end
  object UBloco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from bloco '
      'where'
      '  BLOC_CODIGO = :BLOC_CODIGO and'
      '  BLOC_EMPRESA = :BLOC_EMPRESA')
    ModifySQL.Strings = (
      'update bloco'
      'set'
      '  BLOC_CATEGORIA = :BLOC_CATEGORIA,'
      '  BLOC_CODIGO = :BLOC_CODIGO,'
      '  BLOC_DESCRICAO = :BLOC_DESCRICAO,'
      '  BLOC_EMPRESA = :BLOC_EMPRESA,'
      '  BLOC_OBS = :BLOC_OBS,'
      '  BLOC_QTDMAXIMA = :BLOC_QTDMAXIMA'
      'where'
      '  BLOC_CODIGO = :OLD_BLOC_CODIGO and'
      '  BLOC_EMPRESA = :OLD_BLOC_EMPRESA')
    InsertSQL.Strings = (
      'insert into bloco'
      
        '  (BLOC_CATEGORIA, BLOC_CODIGO, BLOC_DESCRICAO, BLOC_EMPRESA, BL' +
        'OC_OBS, '
      '   BLOC_QTDMAXIMA)'
      'values'
      
        '  (:BLOC_CATEGORIA, :BLOC_CODIGO, :BLOC_DESCRICAO, :BLOC_EMPRESA' +
        ', :BLOC_OBS, '
      '   :BLOC_QTDMAXIMA)')
    DeleteSQL.Strings = (
      'delete from bloco'
      'where'
      '  BLOC_CODIGO = :OLD_BLOC_CODIGO and'
      '  BLOC_EMPRESA = :OLD_BLOC_EMPRESA')
    Left = 504
    Top = 120
  end
  object UPrateleira: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from prateleira '
      'where'
      '  PRAT_BLOCO = :PRAT_BLOCO and'
      '  PRAT_CODIGO = :PRAT_CODIGO and'
      '  PRAT_EMPRESA = :PRAT_EMPRESA')
    ModifySQL.Strings = (
      'update prateleira'
      'set'
      '  PRAT_BLOCO = :PRAT_BLOCO,'
      '  PRAT_CATEGORIA = :PRAT_CATEGORIA,'
      '  PRAT_CODIGO = :PRAT_CODIGO,'
      '  PRAT_DESCRICAO = :PRAT_DESCRICAO,'
      '  PRAT_EMPRESA = :PRAT_EMPRESA,'
      '  PRAT_OBS = :PRAT_OBS,'
      '  PRAT_QTDMAXIMA = :PRAT_QTDMAXIMA'
      'where'
      '  PRAT_BLOCO = :OLD_PRAT_BLOCO and'
      '  PRAT_CODIGO = :OLD_PRAT_CODIGO and'
      '  PRAT_EMPRESA = :OLD_PRAT_EMPRESA')
    InsertSQL.Strings = (
      'insert into prateleira'
      
        '  (PRAT_BLOCO, PRAT_CATEGORIA, PRAT_CODIGO, PRAT_DESCRICAO, PRAT' +
        '_EMPRESA, '
      '   PRAT_OBS, PRAT_QTDMAXIMA)'
      'values'
      
        '  (:PRAT_BLOCO, :PRAT_CATEGORIA, :PRAT_CODIGO, :PRAT_DESCRICAO, ' +
        ':PRAT_EMPRESA, '
      '   :PRAT_OBS, :PRAT_QTDMAXIMA)')
    DeleteSQL.Strings = (
      'delete from prateleira'
      'where'
      '  PRAT_BLOCO = :OLD_PRAT_BLOCO and'
      '  PRAT_CODIGO = :OLD_PRAT_CODIGO and'
      '  PRAT_EMPRESA = :OLD_PRAT_EMPRESA')
    Left = 568
    Top = 120
  end
  object DSPrateleira: TDataSource
    DataSet = Prateleira
    Left = 568
    Top = 64
  end
  object Prateleira: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = PrateleiraAfterInsert
    BeforePost = PrateleiraBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from prateleira'
      ''
      '')
    UpdateObject = UPrateleira
    Left = 568
    Top = 8
    object PrateleiraPRAT_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'PRAT_EMPRESA'
      Origin = '"PRATELEIRA"."PRAT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrateleiraPRAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRAT_CODIGO'
      Origin = '"PRATELEIRA"."PRAT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PrateleiraPRAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Required = True
      Size = 60
    end
    object PrateleiraPRAT_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PRAT_OBS'
      Origin = '"PRATELEIRA"."PRAT_OBS"'
      Size = 100
    end
    object PrateleiraPRAT_QTDMAXIMA: TIntegerField
      DisplayLabel = 'Qtd M'#225'xima'
      FieldName = 'PRAT_QTDMAXIMA'
      Origin = '"PRATELEIRA"."PRAT_QTDMAXIMA"'
      Required = True
    end
    object PrateleiraPRAT_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'PRAT_CATEGORIA'
      Origin = '"PRATELEIRA"."PRAT_CATEGORIA"'
      Required = True
    end
    object PrateleiraPRAT_BLOCO: TIntegerField
      DisplayLabel = 'Bloco'
      FieldName = 'PRAT_BLOCO'
      Origin = '"PRATELEIRA"."PRAT_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object Unidade: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = UnidadeAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from unidade'
      ''
      '')
    UpdateObject = UUnidade
    Left = 632
    Top = 8
    object UnidadeUN_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'UN_CODIGO'
      Origin = '"UNIDADE"."UN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UnidadeUN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'UN_DESCRICAO'
      Origin = '"UNIDADE"."UN_DESCRICAO"'
      Required = True
      Size = 240
    end
    object UnidadeUN_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'UN_OBS'
      Origin = '"UNIDADE"."UN_OBS"'
      Size = 400
    end
  end
  object DSUnidade: TDataSource
    DataSet = Unidade
    Left = 632
    Top = 64
  end
  object UUnidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from unidade '
      'where'
      '  UN_CODIGO = :UN_CODIGO')
    ModifySQL.Strings = (
      'update unidade'
      'set'
      '  UN_CODIGO = :UN_CODIGO,'
      '  UN_DESCRICAO = :UN_DESCRICAO,'
      '  UN_OBS = :UN_OBS'
      'where'
      '  UN_CODIGO = :OLD_UN_CODIGO')
    InsertSQL.Strings = (
      'insert into unidade'
      '  (UN_CODIGO, UN_DESCRICAO, UN_OBS)'
      'values'
      '  (:UN_CODIGO, :UN_DESCRICAO, :UN_OBS)')
    DeleteSQL.Strings = (
      'delete from unidade'
      'where'
      '  UN_CODIGO = :OLD_UN_CODIGO')
    Left = 632
    Top = 120
  end
  object MovimentoEstoque: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = MovimentoEstoqueAfterInsert
    AfterPost = MovimentoEstoqueAfterPost
    BeforePost = MovimentoEstoqueBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select c.*, pro_descricao, emp_razao, bloc_descricao, prat_descr' +
        'icao from ESTOQ_MOVIMENTO c'
      
        'inner join produtos on em_produto = pro_codigo and em_empresa = ' +
        'pro_empresa'
      'inner join empresa on em_empresa = emp_cod'
      
        'inner join bloco on bloc_codigo = em_bloco and bloc_empresa = em' +
        '_empresa'
      
        'inner join prateleira on prat_codigo = em_prateleira and prat_em' +
        'presa = em_empresa')
    UpdateObject = UMovimentoEstoque
    Left = 328
    Top = 8
    object MovimentoEstoqueEM_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EM_EMPRESA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'EM_PRODUTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object MovimentoEstoqueEM_BLOCO: TIntegerField
      DisplayLabel = 'Bloco'
      FieldName = 'EM_BLOCO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_PRATELEIRA: TIntegerField
      DisplayLabel = 'Prateleira'
      FieldName = 'EM_PRATELEIRA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRATELEIRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_ESTOQUE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'EM_ESTOQUE'
      Origin = '"ESTOQ_MOVIMENTO"."EM_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EM_CODIGO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'EM_TIPO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_TIPO"'
      FixedChar = True
      Size = 1
    end
    object MovimentoEstoqueEM_QTD: TIBBCDField
      DisplayLabel = 'Qtd'
      FieldName = 'EM_QTD'
      Origin = '"ESTOQ_MOVIMENTO"."EM_QTD"'
      DisplayFormat = '0.00000'
      Precision = 18
      Size = 2
    end
    object MovimentoEstoqueEM_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EM_DATA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DATA"'
    end
    object MovimentoEstoqueEM_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'EM_OBS'
      Origin = '"ESTOQ_MOVIMENTO"."EM_OBS"'
      Size = 100
    end
    object MovimentoEstoqueEM_VALOR_FINANCEIRO: TIBBCDField
      DisplayLabel = 'Vlr Financeiro'
      FieldName = 'EM_VALOR_FINANCEIRO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_VALOR_FINANCEIRO"'
      DisplayFormat = '0.000'
      Precision = 18
      Size = 2
    end
    object MovimentoEstoqueEM_PEDIDOCOMPRAORIGEM: TIntegerField
      DisplayLabel = 'Pedido de Compra Origem'
      FieldName = 'EM_PEDIDOCOMPRAORIGEM'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PEDIDOCOMPRAORIGEM"'
    end
    object MovimentoEstoquePRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
    object MovimentoEstoqueEMP_RAZAO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object MovimentoEstoqueBLOC_DESCRICAO: TIBStringField
      DisplayLabel = 'Bloco'
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Size = 60
    end
    object MovimentoEstoquePRAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Prateleira'
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Size = 60
    end
    object MovimentoEstoqueEM_DPTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'EM_DPTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DPTO"'
      Required = True
    end
  end
end
