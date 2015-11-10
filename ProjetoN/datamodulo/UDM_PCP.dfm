object DM_PCP: TDM_PCP
  OldCreateOrder = False
  Height = 220
  Width = 501
  object UPD_OrdemProducao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  OP_VENDAS,'
      '  OP_EMPRESA,'
      '  OP_FICHATECNICA,'
      '  OP_DESCRICAO,'
      '  OP_TIPO,'
      '  OP_QTD,'
      '  OP_DT_PEDIDO,'
      '  OP_DT_ENTREGA,'
      '  OP_STATUS,'
      '  OP_COMPRAS,'
      '  OP_COD'
      'from ORDEM_PRODUCAO '
      'where'
      '  OP_COD = :OP_COD')
    ModifySQL.Strings = (
      'update ORDEM_PRODUCAO'
      'set'
      '  OP_COMPRAS = :OP_COMPRAS,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_EMPRESA = :OP_EMPRESA,'
      '  OP_FICHATECNICA = :OP_FICHATECNICA,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO,'
      '  OP_VENDAS = :OP_VENDAS'
      'where'
      '  OP_COD = :OLD_OP_COD')
    InsertSQL.Strings = (
      'insert into ORDEM_PRODUCAO'
      
        '  (OP_COMPRAS, OP_DESCRICAO, OP_DT_ENTREGA, OP_DT_PEDIDO, OP_EMP' +
        'RESA, OP_FICHATECNICA, '
      '   OP_QTD, OP_STATUS, OP_TIPO, OP_VENDAS)'
      'values'
      
        '  (:OP_COMPRAS, :OP_DESCRICAO, :OP_DT_ENTREGA, :OP_DT_PEDIDO, :O' +
        'P_EMPRESA, '
      '   :OP_FICHATECNICA, :OP_QTD, :OP_STATUS, :OP_TIPO, :OP_VENDAS)')
    DeleteSQL.Strings = (
      'delete from ORDEM_PRODUCAO'
      'where'
      '  OP_COD = :OLD_OP_COD')
    Left = 40
    Top = 136
  end
  object DS_OrdemProducao: TDataSource
    DataSet = OrdemProducao
    Left = 48
    Top = 72
  end
  object OrdemProducao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ORDEM_PRODUCAO ')
    UpdateObject = UPD_OrdemProducao
    Left = 48
    Top = 8
    object OrdemProducaoOP_COD: TIntegerField
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OrdemProducaoOP_VENDAS: TIntegerField
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object OrdemProducaoOP_EMPRESA: TIntegerField
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OrdemProducaoOP_FICHATECNICA: TIBStringField
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
      Size = 30
    end
    object OrdemProducaoOP_DESCRICAO: TIBStringField
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object OrdemProducaoOP_TIPO: TIBStringField
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object OrdemProducaoOP_QTD: TIntegerField
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object OrdemProducaoOP_DT_PEDIDO: TDateField
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object OrdemProducaoOP_DT_ENTREGA: TDateField
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object OrdemProducaoOP_STATUS: TIBStringField
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object OrdemProducaoOP_COMPRAS: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
      Required = True
    end
  end
  object Producao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUCAO')
    UpdateObject = UPD_Producao
    Left = 136
    object ProducaoPROD_COD: TIntegerField
      FieldName = 'PROD_COD'
      Origin = '"PRODUCAO"."PROD_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProducaoPROD_ORDEM: TIntegerField
      FieldName = 'PROD_ORDEM'
      Origin = '"PRODUCAO"."PROD_ORDEM"'
    end
    object ProducaoPROD_EMPRESA: TIntegerField
      FieldName = 'PROD_EMPRESA'
      Origin = '"PRODUCAO"."PROD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProducaoPROD_DESCRICAO: TIBStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = '"PRODUCAO"."PROD_DESCRICAO"'
      Size = 30
    end
    object ProducaoPROD_TIPO: TIBStringField
      FieldName = 'PROD_TIPO'
      Origin = '"PRODUCAO"."PROD_TIPO"'
      Size = 30
    end
    object ProducaoPROD_DT_INICIO: TDateField
      FieldName = 'PROD_DT_INICIO'
      Origin = '"PRODUCAO"."PROD_DT_INICIO"'
    end
    object ProducaoPROD_DT_TERMINO: TDateField
      FieldName = 'PROD_DT_TERMINO'
      Origin = '"PRODUCAO"."PROD_DT_TERMINO"'
    end
    object ProducaoPROD_QTD_PRODUZIDA: TIntegerField
      FieldName = 'PROD_QTD_PRODUZIDA'
      Origin = '"PRODUCAO"."PROD_QTD_PRODUZIDA"'
    end
    object ProducaoPROD_STATUS: TIBStringField
      FieldName = 'PROD_STATUS'
      Origin = '"PRODUCAO"."PROD_STATUS"'
      Size = 30
    end
  end
  object DS_Producao: TDataSource
    DataSet = Producao
    Left = 136
    Top = 72
  end
  object UPD_Producao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PROD_ORDEM,'
      '  PROD_DESCRICAO,'
      '  PROD_TIPO,'
      '  PROD_DT_INICIO,'
      '  PROD_DT_TERMINO,'
      '  PROD_QTD_PRODUZIDA,'
      '  PROD_STATUS,'
      '  PROD_EMPRESA,'
      '  PROD_COD'
      'from PRODUCAO '
      'where'
      '  PROD_COD = :PROD_COD and'
      '  PROD_EMPRESA = :PROD_EMPRESA')
    ModifySQL.Strings = (
      'update PRODUCAO'
      'set'
      '  PROD_COD = :PROD_COD,'
      '  PROD_DESCRICAO = :PROD_DESCRICAO,'
      '  PROD_DT_INICIO = :PROD_DT_INICIO,'
      '  PROD_DT_TERMINO = :PROD_DT_TERMINO,'
      '  PROD_EMPRESA = :PROD_EMPRESA,'
      '  PROD_ORDEM = :PROD_ORDEM,'
      '  PROD_QTD_PRODUZIDA = :PROD_QTD_PRODUZIDA,'
      '  PROD_STATUS = :PROD_STATUS,'
      '  PROD_TIPO = :PROD_TIPO'
      'where'
      '  PROD_COD = :OLD_PROD_COD and'
      '  PROD_EMPRESA = :OLD_PROD_EMPRESA')
    InsertSQL.Strings = (
      'insert into PRODUCAO'
      
        '  (PROD_COD, PROD_DESCRICAO, PROD_DT_INICIO, PROD_DT_TERMINO, PR' +
        'OD_EMPRESA, '
      '   PROD_ORDEM, PROD_QTD_PRODUZIDA, PROD_STATUS, PROD_TIPO)'
      'values'
      
        '  (:PROD_COD, :PROD_DESCRICAO, :PROD_DT_INICIO, :PROD_DT_TERMINO' +
        ', :PROD_EMPRESA, '
      '   :PROD_ORDEM, :PROD_QTD_PRODUZIDA, :PROD_STATUS, :PROD_TIPO)')
    DeleteSQL.Strings = (
      'delete from PRODUCAO'
      'where'
      '  PROD_COD = :OLD_PROD_COD and'
      '  PROD_EMPRESA = :OLD_PROD_EMPRESA')
    Left = 136
    Top = 136
  end
  object Ficha_Tecnica: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FICHA_TECNICA')
    UpdateObject = UPD_Ficha_Tecnica
    Left = 216
    object Ficha_TecnicaFT_COD: TIntegerField
      FieldName = 'FT_COD'
      Origin = '"FICHA_TECNICA"."FT_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ficha_TecnicaFT_EMPRESA: TIntegerField
      FieldName = 'FT_EMPRESA'
      Origin = '"FICHA_TECNICA"."FT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ficha_TecnicaFT_PRODUTO: TIBStringField
      FieldName = 'FT_PRODUTO'
      Origin = '"FICHA_TECNICA"."FT_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object Ficha_TecnicaFT_UNIDADE: TIntegerField
      FieldName = 'FT_UNIDADE'
      Origin = '"FICHA_TECNICA"."FT_UNIDADE"'
    end
    object Ficha_TecnicaFT_CUSTO_UNITARIO: TIBBCDField
      FieldName = 'FT_CUSTO_UNITARIO'
      Origin = '"FICHA_TECNICA"."FT_CUSTO_UNITARIO"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_TecnicaFT_MAO_DE_OBRA: TIBBCDField
      FieldName = 'FT_MAO_DE_OBRA'
      Origin = '"FICHA_TECNICA"."FT_MAO_DE_OBRA"'
      Precision = 18
      Size = 4
    end
    object Ficha_TecnicaFT_QUANTIDADE: TIntegerField
      FieldName = 'FT_QUANTIDADE'
      Origin = '"FICHA_TECNICA"."FT_QUANTIDADE"'
    end
    object Ficha_TecnicaFT_CUSTO_TOTAL: TIBBCDField
      FieldName = 'FT_CUSTO_TOTAL'
      Origin = '"FICHA_TECNICA"."FT_CUSTO_TOTAL"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_TecnicaFT_TEMPO_PRODUCAO: TDateTimeField
      FieldName = 'FT_TEMPO_PRODUCAO'
      Origin = '"FICHA_TECNICA"."FT_TEMPO_PRODUCAO"'
      EditMask = '!90:00;1;_'
    end
  end
  object DS_Ficha_Tecnica: TDataSource
    DataSet = Ficha_Tecnica
    Left = 216
    Top = 72
  end
  object UPD_Ficha_Tecnica: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FT_COD,'
      '  FT_PRODUTO,'
      '  FT_UNIDADE,'
      '  FT_CUSTO_UNITARIO,'
      '  FT_MAO_DE_OBRA,'
      '  FT_QUANTIDADE,'
      '  FT_CUSTO_TOTAL,'
      '  FT_TEMPO_PRODUCAO,'
      '  FT_EMPRESA'
      'from FICHA_TECNICA '
      'where'
      '  FT_COD = :FT_COD and'
      '  FT_EMPRESA = :FT_EMPRESA and'
      '  FT_PRODUTO = :FT_PRODUTO')
    ModifySQL.Strings = (
      'update FICHA_TECNICA'
      'set'
      '  FT_COD = :FT_COD,'
      '  FT_CUSTO_TOTAL = :FT_CUSTO_TOTAL,'
      '  FT_CUSTO_UNITARIO = :FT_CUSTO_UNITARIO,'
      '  FT_EMPRESA = :FT_EMPRESA,'
      '  FT_MAO_DE_OBRA = :FT_MAO_DE_OBRA,'
      '  FT_PRODUTO = :FT_PRODUTO,'
      '  FT_QUANTIDADE = :FT_QUANTIDADE,'
      '  FT_TEMPO_PRODUCAO = :FT_TEMPO_PRODUCAO,'
      '  FT_UNIDADE = :FT_UNIDADE'
      'where'
      '  FT_COD = :OLD_FT_COD and'
      '  FT_EMPRESA = :OLD_FT_EMPRESA and'
      '  FT_PRODUTO = :OLD_FT_PRODUTO')
    InsertSQL.Strings = (
      'insert into FICHA_TECNICA'
      
        '  (FT_COD, FT_CUSTO_TOTAL, FT_CUSTO_UNITARIO, FT_EMPRESA, FT_MAO' +
        '_DE_OBRA, '
      '   FT_PRODUTO, FT_QUANTIDADE, FT_TEMPO_PRODUCAO, FT_UNIDADE)'
      'values'
      
        '  (:FT_COD, :FT_CUSTO_TOTAL, :FT_CUSTO_UNITARIO, :FT_EMPRESA, :F' +
        'T_MAO_DE_OBRA, '
      '   :FT_PRODUTO, :FT_QUANTIDADE, :FT_TEMPO_PRODUCAO, :FT_UNIDADE)')
    DeleteSQL.Strings = (
      'delete from FICHA_TECNICA'
      'where'
      '  FT_COD = :OLD_FT_COD and'
      '  FT_EMPRESA = :OLD_FT_EMPRESA and'
      '  FT_PRODUTO = :OLD_FT_PRODUTO')
    Left = 216
    Top = 128
  end
  object Itens_Ficha: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ITENS_FICHA')
    UpdateObject = UPD_Itens_Ficha
    Left = 312
    Top = 8
    object Itens_FichaIFT_FICHA: TIntegerField
      FieldName = 'IFT_FICHA'
      Origin = '"ITENS_FICHA"."IFT_FICHA"'
    end
    object Itens_FichaIFT_PRODUTO: TIBStringField
      FieldName = 'IFT_PRODUTO'
      Origin = '"ITENS_FICHA"."IFT_PRODUTO"'
      Size = 30
    end
    object Itens_FichaIFT_EMPRESA: TIntegerField
      FieldName = 'IFT_EMPRESA'
      Origin = '"ITENS_FICHA"."IFT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_FichaIFT_QTD_TOTAL: TIBBCDField
      FieldName = 'IFT_QTD_TOTAL'
      Origin = '"ITENS_FICHA"."IFT_QTD_TOTAL"'
      Precision = 18
      Size = 4
    end
    object Itens_FichaIFT_DESCRICAO: TIBStringField
      FieldName = 'IFT_DESCRICAO'
      Origin = '"ITENS_FICHA"."IFT_DESCRICAO"'
      Size = 30
    end
    object Itens_FichaIFT_VLR_UNITARIO: TIBBCDField
      FieldName = 'IFT_VLR_UNITARIO'
      Origin = '"ITENS_FICHA"."IFT_VLR_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Itens_FichaIFT_VLR_TOTAL: TIBBCDField
      FieldName = 'IFT_VLR_TOTAL'
      Origin = '"ITENS_FICHA"."IFT_VLR_TOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object DS_Itens_Ficha: TDataSource
    DataSet = Itens_Ficha
    Left = 312
    Top = 64
  end
  object UPD_Itens_Ficha: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IFT_FICHA,'
      '  IFT_PRODUTO,'
      '  IFT_EMPRESA,'
      '  IFT_QTD_TOTAL,'
      '  IFT_DESCRICAO,'
      '  IFT_VLR_UNITARIO,'
      '  IFT_VLR_TOTAL'
      'from ITENS_FICHA '
      'where'
      '  IFT_EMPRESA = :IFT_EMPRESA')
    ModifySQL.Strings = (
      'update ITENS_FICHA'
      'set'
      '  IFT_DESCRICAO = :IFT_DESCRICAO,'
      '  IFT_EMPRESA = :IFT_EMPRESA,'
      '  IFT_FICHA = :IFT_FICHA,'
      '  IFT_PRODUTO = :IFT_PRODUTO,'
      '  IFT_QTD_TOTAL = :IFT_QTD_TOTAL,'
      '  IFT_VLR_TOTAL = :IFT_VLR_TOTAL,'
      '  IFT_VLR_UNITARIO = :IFT_VLR_UNITARIO'
      'where'
      '  IFT_EMPRESA = :OLD_IFT_EMPRESA')
    InsertSQL.Strings = (
      'insert into ITENS_FICHA'
      
        '  (IFT_DESCRICAO, IFT_EMPRESA, IFT_FICHA, IFT_PRODUTO, IFT_QTD_T' +
        'OTAL, IFT_VLR_TOTAL, '
      '   IFT_VLR_UNITARIO)'
      'values'
      
        '  (:IFT_DESCRICAO, :IFT_EMPRESA, :IFT_FICHA, :IFT_PRODUTO, :IFT_' +
        'QTD_TOTAL, '
      '   :IFT_VLR_TOTAL, :IFT_VLR_UNITARIO)')
    DeleteSQL.Strings = (
      'delete from ITENS_FICHA'
      'where'
      '  IFT_EMPRESA = :OLD_IFT_EMPRESA')
    Left = 320
    Top = 136
  end
  object Entrega_Materia: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ENTREGA_MATERIA')
    UpdateObject = UPD_Entrega_Materia
    Left = 424
    Top = 16
    object Entrega_MateriaEM0_COD: TIntegerField
      FieldName = 'EM0_COD'
      Origin = '"ENTREGA_MATERIA"."EM0_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Entrega_MateriaEM0_PESSOA: TIntegerField
      FieldName = 'EM0_PESSOA'
      Origin = '"ENTREGA_MATERIA"."EM0_PESSOA"'
      Required = True
    end
    object Entrega_MateriaEM0_PRODUCAO: TIntegerField
      FieldName = 'EM0_PRODUCAO'
      Origin = '"ENTREGA_MATERIA"."EM0_PRODUCAO"'
    end
    object Entrega_MateriaEM0_DESCRICAO: TIBStringField
      FieldName = 'EM0_DESCRICAO'
      Origin = '"ENTREGA_MATERIA"."EM0_DESCRICAO"'
      Size = 30
    end
    object Entrega_MateriaEM0_DT_ENTREGA: TDateField
      FieldName = 'EM0_DT_ENTREGA'
      Origin = '"ENTREGA_MATERIA"."EM0_DT_ENTREGA"'
    end
    object Entrega_MateriaEM0_EMPRESA: TIntegerField
      FieldName = 'EM0_EMPRESA'
      Origin = '"ENTREGA_MATERIA"."EM0_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DS_Entrega_Materia: TDataSource
    DataSet = Ficha_Tecnica
    Left = 424
    Top = 80
  end
  object UPD_Entrega_Materia: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EM0_COD,'
      '  EM0_PESSOA,'
      '  EM0_PRODUCAO,'
      '  EM0_DESCRICAO,'
      '  EM0_DT_ENTREGA,'
      '  EM0_EMPRESA'
      'from ENTREGA_MATERIA '
      'where'
      '  EM0_COD = :EM0_COD and'
      '  EM0_EMPRESA = :EM0_EMPRESA')
    ModifySQL.Strings = (
      'update ENTREGA_MATERIA'
      'set'
      '  EM0_COD = :EM0_COD,'
      '  EM0_DESCRICAO = :EM0_DESCRICAO,'
      '  EM0_DT_ENTREGA = :EM0_DT_ENTREGA,'
      '  EM0_EMPRESA = :EM0_EMPRESA,'
      '  EM0_PESSOA = :EM0_PESSOA,'
      '  EM0_PRODUCAO = :EM0_PRODUCAO'
      'where'
      '  EM0_COD = :OLD_EM0_COD and'
      '  EM0_EMPRESA = :OLD_EM0_EMPRESA')
    InsertSQL.Strings = (
      'insert into ENTREGA_MATERIA'
      
        '  (EM0_COD, EM0_DESCRICAO, EM0_DT_ENTREGA, EM0_EMPRESA, EM0_PESS' +
        'OA, EM0_PRODUCAO)'
      'values'
      
        '  (:EM0_COD, :EM0_DESCRICAO, :EM0_DT_ENTREGA, :EM0_EMPRESA, :EM0' +
        '_PESSOA, '
      '   :EM0_PRODUCAO)')
    DeleteSQL.Strings = (
      'delete from ENTREGA_MATERIA'
      'where'
      '  EM0_COD = :OLD_EM0_COD and'
      '  EM0_EMPRESA = :OLD_EM0_EMPRESA')
    Left = 424
    Top = 144
  end
end
