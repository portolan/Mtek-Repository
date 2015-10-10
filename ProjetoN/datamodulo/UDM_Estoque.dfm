object DM_Estoque: TDM_Estoque
  OldCreateOrder = False
  Height = 209
  Width = 433
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
    object ProdutosPRO_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      Size = 120
    end
    object ProdutosPRO_CODREF: TIBStringField
      DisplayLabel = 'C'#243'digo de Refer'#234'ncia'
      FieldName = 'PRO_CODREF'
      Origin = '"PRODUTOS"."PRO_CODREF"'
      Size = 120
    end
    object ProdutosPRO_CODBARRAS: TIBStringField
      DisplayLabel = 'C'#243'digo de Barras'
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
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object ProdutosPRO_CLASSFISCAL: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o Fiscal'
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
      Size = 120
    end
    object ProdutosPRO_CSTCSOSN: TIBStringField
      DisplayLabel = 'CST/CSOSN'
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
      DisplayLabel = 'EX TIPI'
      FieldName = 'PRO_EXTIPI'
      Origin = '"PRODUTOS"."PRO_EXTIPI"'
      Size = 120
    end
    object ProdutosPRO_SITTRIB: TIBStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
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
      DisplayLabel = 'Un. Med.'
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
      DisplayLabel = 'CST PIS'
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
      DisplayLabel = 'Vlr Custo'
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
      DisplayLabel = 'Vlr Frete'
      FieldName = 'PRO_VLRFRETE'
      Origin = '"PRODUTOS"."PRO_VLRFRETE"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCENCARG: TIBBCDField
      DisplayLabel = '% Encargo'
      FieldName = 'PRO_PERCENCARG'
      Origin = '"PRODUTOS"."PRO_PERCENCARG"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRENCARG: TIBBCDField
      DisplayLabel = 'Vlr Encargo'
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
      DisplayLabel = 'Vlr Margem Lucro'
      FieldName = 'PRO_VLRMARGLUCR'
      Origin = '"PRODUTOS"."PRO_VLRMARGLUCR"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA1: TIBBCDField
      DisplayLabel = 'Vlr Venda 1'
      FieldName = 'PRO_VLRVENDA1'
      Origin = '"PRODUTOS"."PRO_VLRVENDA1"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCVLRVENDA2: TIBBCDField
      DisplayLabel = '% Vlr Venda 2'
      FieldName = 'PRO_PERCVLRVENDA2'
      Origin = '"PRODUTOS"."PRO_PERCVLRVENDA2"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA2: TIBBCDField
      DisplayLabel = 'Vlr Venda 2'
      FieldName = 'PRO_VLRVENDA2'
      Origin = '"PRODUTOS"."PRO_VLRVENDA2"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_PERCVLRVENDA3: TIBBCDField
      DisplayLabel = '% Vlr Venda 3'
      FieldName = 'PRO_PERCVLRVENDA3'
      Origin = '"PRODUTOS"."PRO_PERCVLRVENDA3"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_VLRVENDA3: TIBBCDField
      DisplayLabel = 'Vlr Venda 3'
      FieldName = 'PRO_VLRVENDA3'
      Origin = '"PRODUTOS"."PRO_VLRVENDA3"'
      Precision = 18
      Size = 2
    end
    object ProdutosPRO_OBS: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
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
  end
  object UProdutos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
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
      
        '   PRO_ESTATUAL, PRO_EXTIPI, PRO_IMG, PRO_MARCA, PRO_MOEDA, PRO_' +
        'NCMSH, '
      
        '   PRO_OBS, PRO_PERCENCARG, PRO_PERCFRETE, PRO_PERCMARGLUCR, PRO' +
        '_PERCVLRVENDA2, '
      
        '   PRO_PERCVLRVENDA3, PRO_PESO, PRO_PIS, PRO_SITTRIB, PRO_STATUS' +
        ', PRO_UNID, '
      
        '   PRO_VLRCUSTO, PRO_VLRENCARG, PRO_VLRFRETE, PRO_VLRMARGLUCR, P' +
        'RO_VLRVENDA1, '
      '   PRO_VLRVENDA2, PRO_VLRVENDA3)'
      'values'
      
        '  (:PRO_CATEGORIA, :PRO_CLASSFISCAL, :PRO_CODBARRAS, :PRO_CODIGO' +
        ', :PRO_CODREF, '
      
        '   :PRO_COFINS, :PRO_CSTCSOSN, :PRO_CSTPIS, :PRO_DESCRICAO, :PRO' +
        '_DTCADASTRO, '
      
        '   :PRO_ESTATUAL, :PRO_EXTIPI, :PRO_IMG, :PRO_MARCA, :PRO_MOEDA,' +
        ' :PRO_NCMSH, '
      
        '   :PRO_OBS, :PRO_PERCENCARG, :PRO_PERCFRETE, :PRO_PERCMARGLUCR,' +
        ' :PRO_PERCVLRVENDA2, '
      
        '   :PRO_PERCVLRVENDA3, :PRO_PESO, :PRO_PIS, :PRO_SITTRIB, :PRO_S' +
        'TATUS, '
      
        '   :PRO_UNID, :PRO_VLRCUSTO, :PRO_VLRENCARG, :PRO_VLRFRETE, :PRO' +
        '_VLRMARGLUCR, '
      '   :PRO_VLRVENDA1, :PRO_VLRVENDA2, :PRO_VLRVENDA3)')
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
end
