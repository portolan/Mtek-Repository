object DM_contasreceber: TDM_contasreceber
  OldCreateOrder = False
  Height = 280
  Width = 424
  object contasreceber: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TITULO_RECEBER')
    Left = 32
    Top = 24
    object contasreceberTTR_CODIGO: TIntegerField
      FieldName = 'TTR_CODIGO'
      Origin = '"TITULO_RECEBER"."TTR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object contasreceberTTR_EMP_CODIGO: TIntegerField
      FieldName = 'TTR_EMP_CODIGO'
      Origin = '"TITULO_RECEBER"."TTR_EMP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object contasreceberTTR_PES_CODIGO: TIntegerField
      FieldName = 'TTR_PES_CODIGO'
      Origin = '"TITULO_RECEBER"."TTR_PES_CODIGO"'
    end
    object contasreceberTTR_CTB_CODIGO: TIntegerField
      FieldName = 'TTR_CTB_CODIGO'
      Origin = '"TITULO_RECEBER"."TTR_CTB_CODIGO"'
    end
    object contasreceberTTR_CON_CODIGO: TIntegerField
      FieldName = 'TTR_CON_CODIGO'
      Origin = '"TITULO_RECEBER"."TTR_CON_CODIGO"'
    end
    object contasreceberTTR_DESCRICAO: TIBStringField
      FieldName = 'TTR_DESCRICAO'
      Origin = '"TITULO_RECEBER"."TTR_DESCRICAO"'
      Size = 400
    end
    object contasreceberTTR_DT_EMISSAO: TDateField
      FieldName = 'TTR_DT_EMISSAO'
      Origin = '"TITULO_RECEBER"."TTR_DT_EMISSAO"'
    end
    object contasreceberTTR_DT_VENCIMENTO: TDateField
      FieldName = 'TTR_DT_VENCIMENTO'
      Origin = '"TITULO_RECEBER"."TTR_DT_VENCIMENTO"'
    end
    object contasreceberTTR_DT_PAGAMENTO: TDateField
      FieldName = 'TTR_DT_PAGAMENTO'
      Origin = '"TITULO_RECEBER"."TTR_DT_PAGAMENTO"'
    end
    object contasreceberTTR_DT_BAIXA: TDateField
      FieldName = 'TTR_DT_BAIXA'
      Origin = '"TITULO_RECEBER"."TTR_DT_BAIXA"'
    end
    object contasreceberTTR_DT_CANCELAMENTO: TDateField
      FieldName = 'TTR_DT_CANCELAMENTO'
      Origin = '"TITULO_RECEBER"."TTR_DT_CANCELAMENTO"'
    end
    object contasreceberTTR_TP_TITULO: TIBStringField
      FieldName = 'TTR_TP_TITULO'
      Origin = '"TITULO_RECEBER"."TTR_TP_TITULO"'
      Size = 120
    end
    object contasreceberTTR_DESCONTO: TIBBCDField
      FieldName = 'TTR_DESCONTO'
      Origin = '"TITULO_RECEBER"."TTR_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_PARCELA: TIBBCDField
      FieldName = 'TTR_PARCELA'
      Origin = '"TITULO_RECEBER"."TTR_PARCELA"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_VL_ORIGINAL: TIBBCDField
      FieldName = 'TTR_VL_ORIGINAL'
      Origin = '"TITULO_RECEBER"."TTR_VL_ORIGINAL"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_VL_PAGO: TIBBCDField
      FieldName = 'TTR_VL_PAGO'
      Origin = '"TITULO_RECEBER"."TTR_VL_PAGO"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_VL_TOTAL: TIBBCDField
      FieldName = 'TTR_VL_TOTAL'
      Origin = '"TITULO_RECEBER"."TTR_VL_TOTAL"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_MR_DIARIA: TIBBCDField
      FieldName = 'TTR_MR_DIARIA'
      Origin = '"TITULO_RECEBER"."TTR_MR_DIARIA"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_MT_ATRASO: TIBBCDField
      FieldName = 'TTR_MT_ATRASO'
      Origin = '"TITULO_RECEBER"."TTR_MT_ATRASO"'
      Precision = 18
      Size = 2
    end
    object contasreceberTTR_SITUACAO: TIBStringField
      FieldName = 'TTR_SITUACAO'
      Origin = '"TITULO_RECEBER"."TTR_SITUACAO"'
      Size = 4
    end
    object contasreceberTTR_TP_MORA: TIBStringField
      FieldName = 'TTR_TP_MORA'
      Origin = '"TITULO_RECEBER"."TTR_TP_MORA"'
      Size = 4
    end
    object contasreceberTTR_TP_MULTA: TIBStringField
      FieldName = 'TTR_TP_MULTA'
      Origin = '"TITULO_RECEBER"."TTR_TP_MULTA"'
      Size = 4
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
