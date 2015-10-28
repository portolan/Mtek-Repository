object DM_Estoque: TDM_Estoque
  OldCreateOrder = False
  Height = 209
  Width = 544
  object Produtos: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS')
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
      Size = 120
    end
    object ProdutosPRO_CODREF: TIBStringField
      DisplayLabel = 'C'#243'd. Refer'#234'ncia'
      FieldName = 'PRO_CODREF'
      Origin = '"PRODUTOS"."PRO_CODREF"'
      Size = 120
    end
    object ProdutosPRO_CODBARRAS: TIBStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRO_CODBARRAS'
      Origin = '"PRODUTOS"."PRO_CODBARRAS"'
      Size = 240
    end
    object ProdutosPRO_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      FixedChar = True
      Size = 4
    end
    object ProdutosPRO_DTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object ProdutosPRO_CLASSFISCAL: TIBStringField
      DisplayLabel = 'Class. Fiscal'
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
      Size = 120
    end
    object ProdutosPRO_CSTCSOSN: TIBStringField
      DisplayLabel = 'CSTCSOSN'
      FieldName = 'PRO_CSTCSOSN'
      Origin = '"PRODUTOS"."PRO_CSTCSOSN"'
      Size = 120
    end
    object ProdutosPRO_NCMSH: TIBStringField
      DisplayLabel = 'NCM/SH'
      FieldName = 'PRO_NCMSH'
      Origin = '"PRODUTOS"."PRO_NCMSH"'
      Size = 120
    end
    object ProdutosPRO_EXTIPI: TIBStringField
      DisplayLabel = 'Ex. Tipi'
      FieldName = 'PRO_EXTIPI'
      Origin = '"PRODUTOS"."PRO_EXTIPI"'
      Size = 120
    end
    object ProdutosPRO_SITTRIB: TIBStringField
      DisplayLabel = 'Sit. Tribut'#225'ria'
      FieldName = 'PRO_SITTRIB'
      Origin = '"PRODUTOS"."PRO_SITTRIB"'
      Size = 120
    end
    object ProdutosPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 240
    end
    object ProdutosPRO_UNID: TIBStringField
      DisplayLabel = 'Un. Medida'
      FieldName = 'PRO_UNID'
      Origin = '"PRODUTOS"."PRO_UNID"'
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
      Size = 40
    end
    object ProdutosPRO_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'PRO_CATEGORIA'
      Origin = '"PRODUTOS"."PRO_CATEGORIA"'
    end
    object ProdutosPRO_PIS: TIBBCDField
      DisplayLabel = 'PIS'
      FieldName = 'PRO_PIS'
      Origin = '"PRODUTOS"."PRO_PIS"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_COFINS: TIBBCDField
      DisplayLabel = 'COFINS'
      FieldName = 'PRO_COFINS'
      Origin = '"PRODUTOS"."PRO_COFINS"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_CSTPIS: TIBBCDField
      DisplayLabel = 'CST/PIS'
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_ESTATUAL: TIBStringField
      DisplayLabel = 'Estado Atual'
      FieldName = 'PRO_ESTATUAL'
      Origin = '"PRODUTOS"."PRO_ESTATUAL"'
      Size = 80
    end
    object ProdutosPRO_PESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRCUSTO: TIBBCDField
      DisplayLabel = 'Vlr. Custo'
      FieldName = 'PRO_VLRCUSTO'
      Origin = '"PRODUTOS"."PRO_VLRCUSTO"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCFRETE: TIBBCDField
      DisplayLabel = '% Frete'
      FieldName = 'PRO_PERCFRETE'
      Origin = '"PRODUTOS"."PRO_PERCFRETE"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRFRETE: TIBBCDField
      DisplayLabel = '$ Frete'
      FieldName = 'PRO_VLRFRETE'
      Origin = '"PRODUTOS"."PRO_VLRFRETE"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCENCARG: TIBBCDField
      DisplayLabel = '% Encargos'
      FieldName = 'PRO_PERCENCARG'
      Origin = '"PRODUTOS"."PRO_PERCENCARG"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRENCARG: TIBBCDField
      DisplayLabel = '$ Encargos'
      FieldName = 'PRO_VLRENCARG'
      Origin = '"PRODUTOS"."PRO_VLRENCARG"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCMARGLUCR: TIBBCDField
      DisplayLabel = '% Margem Lucro'
      FieldName = 'PRO_PERCMARGLUCR'
      Origin = '"PRODUTOS"."PRO_PERCMARGLUCR"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRMARGLUCR: TIBBCDField
      DisplayLabel = '$ Margem Lucro'
      FieldName = 'PRO_VLRMARGLUCR'
      Origin = '"PRODUTOS"."PRO_VLRMARGLUCR"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA1: TIBBCDField
      DisplayLabel = '$ Venda 1'
      FieldName = 'PRO_VLRVENDA1'
      Origin = '"PRODUTOS"."PRO_VLRVENDA1"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCVLRVENDA2: TIBBCDField
      DisplayLabel = '% Venda 1'
      FieldName = 'PRO_PERCVLRVENDA2'
      Origin = '"PRODUTOS"."PRO_PERCVLRVENDA2"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA2: TIBBCDField
      DisplayLabel = '$ Venda 2'
      FieldName = 'PRO_VLRVENDA2'
      Origin = '"PRODUTOS"."PRO_VLRVENDA2"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCVLRVENDA3: TIBBCDField
      DisplayLabel = '% Venda 2'
      FieldName = 'PRO_PERCVLRVENDA3'
      Origin = '"PRODUTOS"."PRO_PERCVLRVENDA3"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA3: TIBBCDField
      DisplayLabel = '$ Venda 3'
      FieldName = 'PRO_VLRVENDA3'
      Origin = '"PRODUTOS"."PRO_VLRVENDA3"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_OBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'PRO_OBS'
      Origin = '"PRODUTOS"."PRO_OBS"'
      Size = 400
    end
    object ProdutosPRO_IMG: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'PRO_IMG'
      Origin = '"PRODUTOS"."PRO_IMG"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosPRO_ACABADO: TIBStringField
      DisplayLabel = 'Produto Acabado'
      FieldName = 'PRO_ACABADO'
      Origin = '"PRODUTOS"."PRO_ACABADO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosPRO_BEM_IMOBILIZADO: TIBStringField
      DisplayLabel = 'Bem Imobilizado'
      FieldName = 'PRO_BEM_IMOBILIZADO'
      Origin = '"PRODUTOS"."PRO_BEM_IMOBILIZADO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosPRO_MATERIA_PRIMA: TIBStringField
      DisplayLabel = 'Materia Prima'
      FieldName = 'PRO_MATERIA_PRIMA'
      Origin = '"PRODUTOS"."PRO_MATERIA_PRIMA"'
      FixedChar = True
      Size = 1
    end
    object ProdutosPRO_VALORIZACAO: TIBBCDField
      DisplayLabel = 'Valoriza'#231#227'o'
      FieldName = 'PRO_VALORIZACAO'
      Origin = '"PRODUTOS"."PRO_VALORIZACAO"'
      Precision = 18
      Size = 2
    end
  end
  object UProdutos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRO_EMPRESA,'
      '  PRO_CODIGO,'
      '  PRO_CODREF,'
      '  PRO_CODBARRAS,'
      '  PRO_STATUS,'
      '  PRO_DTCADASTRO,'
      '  PRO_CLASSFISCAL,'
      '  PRO_CSTCSOSN,'
      '  PRO_NCMSH,'
      '  PRO_EXTIPI,'
      '  PRO_SITTRIB,'
      '  PRO_DESCRICAO,'
      '  PRO_UNID,'
      '  PRO_MARCA,'
      '  PRO_MOEDA,'
      '  PRO_CATEGORIA,'
      '  PRO_PIS,'
      '  PRO_COFINS,'
      '  PRO_CSTPIS,'
      '  PRO_ESTATUAL,'
      '  PRO_PESO,'
      '  PRO_VLRCUSTO,'
      '  PRO_PERCFRETE,'
      '  PRO_VLRFRETE,'
      '  PRO_PERCENCARG,'
      '  PRO_VLRENCARG,'
      '  PRO_PERCMARGLUCR,'
      '  PRO_VLRMARGLUCR,'
      '  PRO_VLRVENDA1,'
      '  PRO_PERCVLRVENDA2,'
      '  PRO_VLRVENDA2,'
      '  PRO_PERCVLRVENDA3,'
      '  PRO_VLRVENDA3,'
      '  PRO_OBS,'
      '  PRO_IMG'
      'from PRODUTOS '
      'where'
      '  PRO_CODIGO = :PRO_CODIGO')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  PRO_CATEGORIA = :PRO_CATEGORIA,'
      '  PRO_CLASSFISCAL = :PRO_CLASSFISCAL,'
      '  PRO_CODBARRAS = :PRO_CODBARRAS,'
      '  PRO_CODIGO = :PRO_CODIGO,'
      '  PRO_CODREF = :PRO_CODREF,'
      '  PRO_COFINS = :PRO_COFINS,'
      '  PRO_CSTCSOSN = :PRO_CSTCSOSN,'
      '  PRO_CSTPIS = :PRO_CSTPIS,'
      '  PRO_DESCRICAO = :PRO_DESCRICAO,'
      '  PRO_DTCADASTRO = :PRO_DTCADASTRO,'
      '  PRO_EMPRESA = :PRO_EMPRESA,'
      '  PRO_ESTATUAL = :PRO_ESTATUAL,'
      '  PRO_EXTIPI = :PRO_EXTIPI,'
      '  PRO_IMG = :PRO_IMG,'
      '  PRO_MARCA = :PRO_MARCA,'
      '  PRO_MOEDA = :PRO_MOEDA,'
      '  PRO_NCMSH = :PRO_NCMSH,'
      '  PRO_OBS = :PRO_OBS,'
      '  PRO_PERCENCARG = :PRO_PERCENCARG,'
      '  PRO_PERCFRETE = :PRO_PERCFRETE,'
      '  PRO_PERCMARGLUCR = :PRO_PERCMARGLUCR,'
      '  PRO_PERCVLRVENDA2 = :PRO_PERCVLRVENDA2,'
      '  PRO_PERCVLRVENDA3 = :PRO_PERCVLRVENDA3,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PIS = :PRO_PIS,'
      '  PRO_SITTRIB = :PRO_SITTRIB,'
      '  PRO_STATUS = :PRO_STATUS,'
      '  PRO_UNID = :PRO_UNID,'
      '  PRO_VLRCUSTO = :PRO_VLRCUSTO,'
      '  PRO_VLRENCARG = :PRO_VLRENCARG,'
      '  PRO_VLRFRETE = :PRO_VLRFRETE,'
      '  PRO_VLRMARGLUCR = :PRO_VLRMARGLUCR,'
      '  PRO_VLRVENDA1 = :PRO_VLRVENDA1,'
      '  PRO_VLRVENDA2 = :PRO_VLRVENDA2,'
      '  PRO_VLRVENDA3 = :PRO_VLRVENDA3'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (PRO_CATEGORIA, PRO_CLASSFISCAL, PRO_CODBARRAS, PRO_CODIGO, PR' +
        'O_CODREF, '
      
        '   PRO_COFINS, PRO_CSTCSOSN, PRO_CSTPIS, PRO_DESCRICAO, PRO_DTCA' +
        'DASTRO, '
      
        '   PRO_EMPRESA, PRO_ESTATUAL, PRO_EXTIPI, PRO_IMG, PRO_MARCA, PR' +
        'O_MOEDA, '
      
        '   PRO_NCMSH, PRO_OBS, PRO_PERCENCARG, PRO_PERCFRETE, PRO_PERCMA' +
        'RGLUCR, '
      
        '   PRO_PERCVLRVENDA2, PRO_PERCVLRVENDA3, PRO_PESO, PRO_PIS, PRO_' +
        'SITTRIB, '
      
        '   PRO_STATUS, PRO_UNID, PRO_VLRCUSTO, PRO_VLRENCARG, PRO_VLRFRE' +
        'TE, PRO_VLRMARGLUCR, '
      '   PRO_VLRVENDA1, PRO_VLRVENDA2, PRO_VLRVENDA3)'
      'values'
      
        '  (:PRO_CATEGORIA, :PRO_CLASSFISCAL, :PRO_CODBARRAS, :PRO_CODIGO' +
        ', :PRO_CODREF, '
      
        '   :PRO_COFINS, :PRO_CSTCSOSN, :PRO_CSTPIS, :PRO_DESCRICAO, :PRO' +
        '_DTCADASTRO, '
      
        '   :PRO_EMPRESA, :PRO_ESTATUAL, :PRO_EXTIPI, :PRO_IMG, :PRO_MARC' +
        'A, :PRO_MOEDA, '
      
        '   :PRO_NCMSH, :PRO_OBS, :PRO_PERCENCARG, :PRO_PERCFRETE, :PRO_P' +
        'ERCMARGLUCR, '
      
        '   :PRO_PERCVLRVENDA2, :PRO_PERCVLRVENDA3, :PRO_PESO, :PRO_PIS, ' +
        ':PRO_SITTRIB, '
      
        '   :PRO_STATUS, :PRO_UNID, :PRO_VLRCUSTO, :PRO_VLRENCARG, :PRO_V' +
        'LRFRETE, '
      
        '   :PRO_VLRMARGLUCR, :PRO_VLRVENDA1, :PRO_VLRVENDA2, :PRO_VLRVEN' +
        'DA3)')
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
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
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from estoque')
    UpdateObject = UEstoque
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
      Size = 120
    end
    object EstoqueESTOQ_CODIGO: TIBStringField
      DisplayLabel = 'Codigo'
      FieldName = 'ESTOQ_CODIGO'
      Origin = '"ESTOQUE"."ESTOQ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object EstoqueESTOQ_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ESTOQ_STATUS'
      Origin = '"ESTOQUE"."ESTOQ_STATUS"'
      FixedChar = True
      Size = 4
    end
    object EstoqueESTOQ_QTD: TIBBCDField
      DisplayLabel = 'Qtd'
      FieldName = 'ESTOQ_QTD'
      Origin = '"ESTOQUE"."ESTOQ_QTD"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_QTDMIN: TIBBCDField
      DisplayLabel = 'Qtd M'#237'nima'
      FieldName = 'ESTOQ_QTDMIN'
      Origin = '"ESTOQUE"."ESTOQ_QTDMIN"'
      Precision = 18
      Size = 2
    end
    object EstoqueESTOQ_QTDMAX: TIBBCDField
      DisplayLabel = 'Qtd M'#225'xima'
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
    object EstoqueESTOQ_PRATELEIRA: TIBStringField
      DisplayLabel = 'Prateleira'
      FieldName = 'ESTOQ_PRATELEIRA'
      Origin = '"ESTOQUE"."ESTOQ_PRATELEIRA"'
      Size = 120
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
    object EstoqueESTOQ_LOCAL: TIBStringField
      DisplayLabel = 'Local'
      FieldName = 'ESTOQ_LOCAL'
      Origin = '"ESTOQUE"."ESTOQ_LOCAL"'
      Size = 120
    end
    object EstoqueESTOQ_DTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'ESTOQ_DTCADASTRO'
      Origin = '"ESTOQUE"."ESTOQ_DTCADASTRO"'
    end
    object EstoqueESTOQ_OBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'ESTOQ_OBS'
      Origin = '"ESTOQUE"."ESTOQ_OBS"'
      Size = 400
    end
  end
  object DSEstoque: TDataSource
    DataSet = Estoque
    Left = 88
    Top = 64
  end
  object UEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from estoque '
      'where'
      '  ESTOQ_CODIGO = :ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :ESTOQ_EMPRESA and'
      '  ESTOQ_PRODUTO = :ESTOQ_PRODUTO')
    ModifySQL.Strings = (
      'update estoque'
      'set'
      '  ESTOQ_CATEGORIA = :ESTOQ_CATEGORIA,'
      '  ESTOQ_CODIGO = :ESTOQ_CODIGO,'
      '  ESTOQ_CUSTOMEDIO = :ESTOQ_CUSTOMEDIO,'
      '  ESTOQ_DTCADASTRO = :ESTOQ_DTCADASTRO,'
      '  ESTOQ_EMPRESA = :ESTOQ_EMPRESA,'
      '  ESTOQ_LOCAL = :ESTOQ_LOCAL,'
      '  ESTOQ_OBS = :ESTOQ_OBS,'
      '  ESTOQ_PRATELEIRA = :ESTOQ_PRATELEIRA,'
      '  ESTOQ_PRODUTO = :ESTOQ_PRODUTO,'
      '  ESTOQ_QTD = :ESTOQ_QTD,'
      '  ESTOQ_QTDMAX = :ESTOQ_QTDMAX,'
      '  ESTOQ_QTDMIN = :ESTOQ_QTDMIN,'
      '  ESTOQ_STATUS = :ESTOQ_STATUS,'
      '  ESTOQ_TIPO = :ESTOQ_TIPO'
      'where'
      '  ESTOQ_CODIGO = :OLD_ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :OLD_ESTOQ_EMPRESA and'
      '  ESTOQ_PRODUTO = :OLD_ESTOQ_PRODUTO')
    InsertSQL.Strings = (
      'insert into estoque'
      
        '  (ESTOQ_CATEGORIA, ESTOQ_CODIGO, ESTOQ_CUSTOMEDIO, ESTOQ_DTCADA' +
        'STRO, ESTOQ_EMPRESA, '
      
        '   ESTOQ_LOCAL, ESTOQ_OBS, ESTOQ_PRATELEIRA, ESTOQ_PRODUTO, ESTO' +
        'Q_QTD, '
      '   ESTOQ_QTDMAX, ESTOQ_QTDMIN, ESTOQ_STATUS, ESTOQ_TIPO)'
      'values'
      
        '  (:ESTOQ_CATEGORIA, :ESTOQ_CODIGO, :ESTOQ_CUSTOMEDIO, :ESTOQ_DT' +
        'CADASTRO, '
      
        '   :ESTOQ_EMPRESA, :ESTOQ_LOCAL, :ESTOQ_OBS, :ESTOQ_PRATELEIRA, ' +
        ':ESTOQ_PRODUTO, '
      
        '   :ESTOQ_QTD, :ESTOQ_QTDMAX, :ESTOQ_QTDMIN, :ESTOQ_STATUS, :EST' +
        'OQ_TIPO)')
    DeleteSQL.Strings = (
      'delete from estoque'
      'where'
      '  ESTOQ_CODIGO = :OLD_ESTOQ_CODIGO and'
      '  ESTOQ_EMPRESA = :OLD_ESTOQ_EMPRESA and'
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
      DisplayLabel = 'Obs'
      FieldName = 'MARC_OBS'
      Origin = '"MARCAS"."MARC_OBS"'
      Size = 400
    end
  end
  object DSRelProdForn: TDataSource
    DataSet = RelProdForn
    Left = 224
    Top = 64
  end
  object URelProdForn: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RPF_EMPRESA,'
      '  RPF_PRODUTO,'
      '  RPF_PESSOA,'
      '  RPF_CODREF,'
      '  RPF_VLRBRUTO,'
      '  RPF_PERCDESC,'
      '  RPF_VLRDESC,'
      '  RPF_VLRLIQUIDO,'
      '  RPF_DTCOMPRA,'
      '  RPF_CONTATO'
      'from RELPRODFORN '
      'where'
      '  RPF_EMPRESA = :RPF_EMPRESA and'
      '  RPF_PESSOA = :RPF_PESSOA and'
      '  RPF_PRODUTO = :RPF_PRODUTO')
    ModifySQL.Strings = (
      'update RELPRODFORN'
      'set'
      '  RPF_CODREF = :RPF_CODREF,'
      '  RPF_CONTATO = :RPF_CONTATO,'
      '  RPF_DTCOMPRA = :RPF_DTCOMPRA,'
      '  RPF_EMPRESA = :RPF_EMPRESA,'
      '  RPF_PERCDESC = :RPF_PERCDESC,'
      '  RPF_PESSOA = :RPF_PESSOA,'
      '  RPF_PRODUTO = :RPF_PRODUTO,'
      '  RPF_VLRBRUTO = :RPF_VLRBRUTO,'
      '  RPF_VLRDESC = :RPF_VLRDESC,'
      '  RPF_VLRLIQUIDO = :RPF_VLRLIQUIDO'
      'where'
      '  RPF_EMPRESA = :OLD_RPF_EMPRESA and'
      '  RPF_PESSOA = :OLD_RPF_PESSOA and'
      '  RPF_PRODUTO = :OLD_RPF_PRODUTO')
    InsertSQL.Strings = (
      'insert into RELPRODFORN'
      
        '  (RPF_CODREF, RPF_CONTATO, RPF_DTCOMPRA, RPF_EMPRESA, RPF_PERCD' +
        'ESC, RPF_PESSOA, '
      '   RPF_PRODUTO, RPF_VLRBRUTO, RPF_VLRDESC, RPF_VLRLIQUIDO)'
      'values'
      
        '  (:RPF_CODREF, :RPF_CONTATO, :RPF_DTCOMPRA, :RPF_EMPRESA, :RPF_' +
        'PERCDESC, '
      
        '   :RPF_PESSOA, :RPF_PRODUTO, :RPF_VLRBRUTO, :RPF_VLRDESC, :RPF_' +
        'VLRLIQUIDO)')
    DeleteSQL.Strings = (
      'delete from RELPRODFORN'
      'where'
      '  RPF_EMPRESA = :OLD_RPF_EMPRESA and'
      '  RPF_PESSOA = :OLD_RPF_PESSOA and'
      '  RPF_PRODUTO = :OLD_RPF_PRODUTO')
    Left = 224
    Top = 120
  end
  object RelProdForn: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from RELPRODFORN'
      '')
    UpdateObject = URelProdForn
    Left = 224
    Top = 8
    object RelProdFornRPF_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'RPF_EMPRESA'
      Origin = '"RELPRODFORN"."RPF_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RelProdFornRPF_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'RPF_PRODUTO'
      Origin = '"RELPRODFORN"."RPF_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object RelProdFornRPF_PESSOA: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'RPF_PESSOA'
      Origin = '"RELPRODFORN"."RPF_PESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 240
    end
    object RelProdFornRPF_CODREF: TIBStringField
      DisplayLabel = 'C'#243'd. Refer'#234'ncia'
      FieldName = 'RPF_CODREF'
      Origin = '"RELPRODFORN"."RPF_CODREF"'
      Size = 120
    end
    object RelProdFornRPF_VLRBRUTO: TIBBCDField
      DisplayLabel = 'Vlr Bruto'
      FieldName = 'RPF_VLRBRUTO'
      Origin = '"RELPRODFORN"."RPF_VLRBRUTO"'
      Precision = 18
      Size = 2
    end
    object RelProdFornRPF_PERCDESC: TIBBCDField
      DisplayLabel = '% Desconto'
      FieldName = 'RPF_PERCDESC'
      Origin = '"RELPRODFORN"."RPF_PERCDESC"'
      Precision = 18
      Size = 2
    end
    object RelProdFornRPF_VLRDESC: TIBBCDField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'RPF_VLRDESC'
      Origin = '"RELPRODFORN"."RPF_VLRDESC"'
      Precision = 18
      Size = 2
    end
    object RelProdFornRPF_VLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Vlr L'#237'quido'
      FieldName = 'RPF_VLRLIQUIDO'
      Origin = '"RELPRODFORN"."RPF_VLRLIQUIDO"'
      Precision = 18
      Size = 2
    end
    object RelProdFornRPF_DTCOMPRA: TDateField
      DisplayLabel = 'Dt. Compra'
      FieldName = 'RPF_DTCOMPRA'
      Origin = '"RELPRODFORN"."RPF_DTCOMPRA"'
    end
    object RelProdFornRPF_CONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'RPF_CONTATO'
      Origin = '"RELPRODFORN"."RPF_CONTATO"'
      Size = 80
    end
  end
  object MovimentoEstoque: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ESTOQ_MOVIMENTO'
      '')
    UpdateObject = UMovimentoEstoque
    Left = 320
    Top = 8
    object MovimentoEstoqueEM_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EM_EMPRESA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MovimentoEstoqueEM_ESTOQUE: TIBStringField
      DisplayLabel = 'Estoque'
      FieldName = 'EM_ESTOQUE'
      Origin = '"ESTOQ_MOVIMENTO"."EM_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object MovimentoEstoqueEM_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'EM_PRODUTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object MovimentoEstoqueEM_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EM_CODIGO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object MovimentoEstoqueEM_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'EM_TIPO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_TIPO"'
      FixedChar = True
      Size = 4
    end
    object MovimentoEstoqueEM_QTD: TIBBCDField
      DisplayLabel = 'Qtd'
      FieldName = 'EM_QTD'
      Origin = '"ESTOQ_MOVIMENTO"."EM_QTD"'
      Precision = 18
      Size = 2
    end
    object MovimentoEstoqueEM_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EM_DATA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DATA"'
    end
    object MovimentoEstoqueEM_OBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'EM_OBS'
      Origin = '"ESTOQ_MOVIMENTO"."EM_OBS"'
      Size = 400
    end
    object MovimentoEstoqueEM_VALOR_FINANCEIRO: TIBBCDField
      DisplayLabel = 'Valor Financeiro'
      FieldName = 'EM_VALOR_FINANCEIRO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_VALOR_FINANCEIRO"'
      Precision = 18
      Size = 2
    end
  end
  object DSMovimentoEstoque: TDataSource
    DataSet = MovimentoEstoque
    Left = 320
    Top = 64
  end
  object UMovimentoEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EM_EMPRESA,'
      '  EM_ESTOQUE,'
      '  EM_PRODUTO,'
      '  EM_CODIGO,'
      '  EM_TIPO,'
      '  EM_QTD,'
      '  EM_DATA,'
      '  EM_OBS'
      'from ESTOQ_MOVIMENTO '
      'where'
      '  EM_CODIGO = :EM_CODIGO and'
      '  EM_EMPRESA = :EM_EMPRESA and'
      '  EM_ESTOQUE = :EM_ESTOQUE and'
      '  EM_PRODUTO = :EM_PRODUTO')
    ModifySQL.Strings = (
      'update ESTOQ_MOVIMENTO'
      'set'
      '  EM_CODIGO = :EM_CODIGO,'
      '  EM_DATA = :EM_DATA,'
      '  EM_EMPRESA = :EM_EMPRESA,'
      '  EM_ESTOQUE = :EM_ESTOQUE,'
      '  EM_OBS = :EM_OBS,'
      '  EM_PRODUTO = :EM_PRODUTO,'
      '  EM_QTD = :EM_QTD,'
      '  EM_TIPO = :EM_TIPO'
      'where'
      '  EM_CODIGO = :OLD_EM_CODIGO and'
      '  EM_EMPRESA = :OLD_EM_EMPRESA and'
      '  EM_ESTOQUE = :OLD_EM_ESTOQUE and'
      '  EM_PRODUTO = :OLD_EM_PRODUTO')
    InsertSQL.Strings = (
      'insert into ESTOQ_MOVIMENTO'
      
        '  (EM_CODIGO, EM_DATA, EM_EMPRESA, EM_ESTOQUE, EM_OBS, EM_PRODUT' +
        'O, EM_QTD, '
      '   EM_TIPO)'
      'values'
      
        '  (:EM_CODIGO, :EM_DATA, :EM_EMPRESA, :EM_ESTOQUE, :EM_OBS, :EM_' +
        'PRODUTO, '
      '   :EM_QTD, :EM_TIPO)')
    DeleteSQL.Strings = (
      'delete from ESTOQ_MOVIMENTO'
      'where'
      '  EM_CODIGO = :OLD_EM_CODIGO and'
      '  EM_EMPRESA = :OLD_EM_EMPRESA and'
      '  EM_ESTOQUE = :OLD_EM_ESTOQUE and'
      '  EM_PRODUTO = :OLD_EM_PRODUTO')
    Left = 320
    Top = 120
  end
  object Categoria: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from categoria'
      ''
      '')
    UpdateObject = IBUpdateSQL1
    Left = 416
    Top = 8
    object CategoriaCAT_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CAT_EMPRESA'
      Origin = '"CATEGORIA"."CAT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CategoriaCAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CAT_CODIGO'
      Origin = '"CATEGORIA"."CAT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
  object IBUpdateSQL1: TIBUpdateSQL
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
    Left = 496
    Top = 32
  end
end
