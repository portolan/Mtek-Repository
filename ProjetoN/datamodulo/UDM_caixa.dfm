object DM_caixa: TDM_caixa
  OldCreateOrder = False
  Height = 272
  Width = 445
  object Caixa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CX_CONTROLECAIXA')
    UpdateObject = UCaixa
    Left = 48
    Top = 16
    object CaixaCX_CODEMPRESA: TIntegerField
      FieldName = 'CX_CODEMPRESA'
      Origin = '"CX_CONTROLECAIXA"."CX_CODEMPRESA"'
      Required = True
    end
    object CaixaCX_IDCAIXA: TIntegerField
      FieldName = 'CX_IDCAIXA'
      Origin = '"CX_CONTROLECAIXA"."CX_IDCAIXA"'
      Required = True
    end
    object CaixaCX_DATAINICIAL: TDateField
      FieldName = 'CX_DATAINICIAL'
      Origin = '"CX_CONTROLECAIXA"."CX_DATAINICIAL"'
    end
    object CaixaCX_DATAFINAL: TDateField
      FieldName = 'CX_DATAFINAL'
      Origin = '"CX_CONTROLECAIXA"."CX_DATAFINAL"'
    end
    object CaixaCX_SALDOANTERIOR: TIBBCDField
      FieldName = 'CX_SALDOANTERIOR'
      Origin = '"CX_CONTROLECAIXA"."CX_SALDOANTERIOR"'
      Precision = 18
      Size = 2
    end
    object CaixaCX_TOTALENTRADA: TIBBCDField
      FieldName = 'CX_TOTALENTRADA'
      Origin = '"CX_CONTROLECAIXA"."CX_TOTALENTRADA"'
      Precision = 18
      Size = 2
    end
    object CaixaCX_TOTALSAIDA: TIBBCDField
      FieldName = 'CX_TOTALSAIDA'
      Origin = '"CX_CONTROLECAIXA"."CX_TOTALSAIDA"'
      Precision = 18
      Size = 2
    end
    object CaixaCX_SALDOTOTAL: TIBBCDField
      FieldName = 'CX_SALDOTOTAL'
      Origin = '"CX_CONTROLECAIXA"."CX_SALDOTOTAL"'
      Precision = 18
      Size = 2
    end
  end
  object DCaixa: TDataSource
    DataSet = Caixa
    Left = 48
    Top = 80
  end
  object UCaixa: TIBUpdateSQL
    Left = 48
    Top = 144
  end
end
