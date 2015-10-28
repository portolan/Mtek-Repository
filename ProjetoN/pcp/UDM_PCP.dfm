object DM_PCP: TDM_PCP
  OldCreateOrder = False
  Height = 290
  Width = 475
  object UPD_PCP: TIBUpdateSQL
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
    Left = 216
    Top = 96
  end
  object DS_PCP: TDataSource
    DataSet = IB_PCP
    Left = 288
    Top = 24
  end
  object IB_PCP: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ORDEM_PRODUCAO ')
    UpdateObject = UPD_PCP
    Left = 96
    Top = 40
    object IB_PCPOP_COD: TIntegerField
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_PCPOP_DATA: TDateField
      FieldName = 'OP_DATA'
      Origin = '"ORDEM_PRODUCAO"."OP_DATA"'
    end
    object IB_PCPOP_DT_ORCAMENTO: TDateField
      FieldName = 'OP_DT_ORCAMENTO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ORCAMENTO"'
    end
    object IB_PCPOP_DESCRICAO: TIBStringField
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object IB_PCPOP_DT_PEDIDO: TDateField
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object IB_PCPOP_DT_ENTREGA: TDateField
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object IB_PCPOP_QTD: TIntegerField
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object IB_PCPOP_CUSTO_PRODUCAO: TIBBCDField
      FieldName = 'OP_CUSTO_PRODUCAO'
      Origin = '"ORDEM_PRODUCAO"."OP_CUSTO_PRODUCAO"'
      Precision = 18
      Size = 2
    end
    object IB_PCPOP_TIPO: TIBStringField
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object IB_PCPOP_STATUS: TIBStringField
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
  end
end
