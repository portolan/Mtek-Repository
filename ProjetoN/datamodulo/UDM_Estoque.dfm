object DM_Estoque: TDM_Estoque
  OldCreateOrder = False
  Height = 209
  Width = 433
  object Produtos: TIBQuery
    Database = DM_Banco.Banco
    Transaction = DM_Banco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSProdutos
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS')
    UpdateObject = UProdutos
    Left = 24
    Top = 8
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
    Left = 24
    Top = 64
  end
end
