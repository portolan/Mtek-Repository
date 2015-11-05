object DM_contasreceber: TDM_contasreceber
  OldCreateOrder = False
  Height = 280
  Width = 424
  object contasreceber: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TITULO')
    Left = 32
    Top = 24
    object contasreceberTIT_CODIGO: TIntegerField
      FieldName = 'TIT_CODIGO'
      Origin = '"TITULO"."TIT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object contasreceberTIT_VALOR: TFloatField
      FieldName = 'TIT_VALOR'
      Origin = '"TITULO"."TIT_VALOR"'
      Required = True
    end
    object contasreceberTIT_DESCONTO: TFloatField
      FieldName = 'TIT_DESCONTO'
      Origin = '"TITULO"."TIT_DESCONTO"'
    end
    object contasreceberTIT_TOTAL_BRUTO: TFloatField
      FieldName = 'TIT_TOTAL_BRUTO'
      Origin = '"TITULO"."TIT_TOTAL_BRUTO"'
      Required = True
    end
    object contasreceberTIT_TOTAL_LIQUIDO: TFloatField
      FieldName = 'TIT_TOTAL_LIQUIDO'
      Origin = '"TITULO"."TIT_TOTAL_LIQUIDO"'
    end
    object contasreceberTIT_DATA_VENCIMENTO: TDateField
      FieldName = 'TIT_DATA_VENCIMENTO'
      Origin = '"TITULO"."TIT_DATA_VENCIMENTO"'
      Required = True
    end
    object contasreceberTIT_NUMERO_TITULO: TIntegerField
      FieldName = 'TIT_NUMERO_TITULO'
      Origin = '"TITULO"."TIT_NUMERO_TITULO"'
      Required = True
    end
    object contasreceberTIT_SITUACAO: TIBStringField
      FieldName = 'TIT_SITUACAO'
      Origin = '"TITULO"."TIT_SITUACAO"'
      Required = True
      Size = 1
    end
    object contasreceberTIT_DATA_EMISSAO: TDateTimeField
      FieldName = 'TIT_DATA_EMISSAO'
      Origin = '"TITULO"."TIT_DATA_EMISSAO"'
      Required = True
    end
    object contasreceberTIT_TIPO: TIBStringField
      FieldName = 'TIT_TIPO'
      Origin = '"TITULO"."TIT_TIPO"'
      Required = True
      Size = 1
    end
    object contasreceberTIT_DATA_PAGAMENTO: TDateField
      FieldName = 'TIT_DATA_PAGAMENTO'
      Origin = '"TITULO"."TIT_DATA_PAGAMENTO"'
    end
    object contasreceberTIT_DESCRICAO: TIBStringField
      FieldName = 'TIT_DESCRICAO'
      Origin = '"TITULO"."TIT_DESCRICAO"'
      Size = 100
    end
  end
  object D_contasreceber: TDataSource
    DataSet = contasreceber
    Left = 32
    Top = 96
  end
  object U_contasreceber: TIBUpdateSQL
    Left = 32
    Top = 168
  end
end
