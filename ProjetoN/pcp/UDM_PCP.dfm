object DM_PCP: TDM_PCP
  OldCreateOrder = False
  Height = 192
  Width = 475
  object UPD_OrdemProducao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  OP_COD,'
      '  OP_DATA,'
      '  OP_DT_ORCAMENTO,'
      '  OP_DESCRICAO,'
      '  OP_DT_PEDIDO,'
      '  OP_DT_ENTREGA,'
      '  OP_QTD,'
      '  OP_CUSTO_PRODUCAO,'
      '  OP_TIPO,'
      '  OP_STATUS'
      'from ORDEM_PRODUCAO '
      'where'
      '  OP_COD = :OP_COD')
    ModifySQL.Strings = (
      'update ORDEM_PRODUCAO'
      'set'
      '  OP_COD = :OP_COD,'
      '  OP_CUSTO_PRODUCAO = :OP_CUSTO_PRODUCAO,'
      '  OP_DATA = :OP_DATA,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_ORCAMENTO = :OP_DT_ORCAMENTO,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO'
      'where'
      '  OP_COD = :OLD_OP_COD')
    InsertSQL.Strings = (
      'insert into ORDEM_PRODUCAO'
      
        '  (OP_COD, OP_CUSTO_PRODUCAO, OP_DATA, OP_DESCRICAO, OP_DT_ENTRE' +
        'GA, OP_DT_ORCAMENTO, '
      '   OP_DT_PEDIDO, OP_QTD, OP_STATUS, OP_TIPO)'
      'values'
      
        '  (:OP_COD, :OP_CUSTO_PRODUCAO, :OP_DATA, :OP_DESCRICAO, :OP_DT_' +
        'ENTREGA, '
      
        '   :OP_DT_ORCAMENTO, :OP_DT_PEDIDO, :OP_QTD, :OP_STATUS, :OP_TIP' +
        'O)')
    DeleteSQL.Strings = (
      'delete from ORDEM_PRODUCAO'
      'where'
      '  OP_COD = :OLD_OP_COD')
    Left = 48
    Top = 104
  end
  object DS_OrdemProducao: TDataSource
    DataSet = OrdemProducao
    Left = 48
    Top = 56
  end
  object OrdemProducao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
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
    object OrdemProducaoOP_DATA: TDateField
      FieldName = 'OP_DATA'
      Origin = '"ORDEM_PRODUCAO"."OP_DATA"'
    end
    object OrdemProducaoOP_DT_ORCAMENTO: TDateField
      FieldName = 'OP_DT_ORCAMENTO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ORCAMENTO"'
    end
    object OrdemProducaoOP_DESCRICAO: TIBStringField
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object OrdemProducaoOP_DT_PEDIDO: TDateField
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object OrdemProducaoOP_DT_ENTREGA: TDateField
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object OrdemProducaoOP_QTD: TIntegerField
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object OrdemProducaoOP_CUSTO_PRODUCAO: TIBBCDField
      FieldName = 'OP_CUSTO_PRODUCAO'
      Origin = '"ORDEM_PRODUCAO"."OP_CUSTO_PRODUCAO"'
      Precision = 18
      Size = 2
    end
    object OrdemProducaoOP_TIPO: TIBStringField
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object OrdemProducaoOP_STATUS: TIBStringField
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
  end
end
