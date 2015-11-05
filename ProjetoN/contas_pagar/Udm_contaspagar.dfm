object dm_contaspagar: Tdm_contaspagar
  OldCreateOrder = False
  Height = 290
  Width = 533
  object titulospagar: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*  from TITULOSP a')
    UpdateObject = Utitulospagar
    Left = 88
    Top = 32
    object titulospagarTTP_CODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'TTP_CODIGO'
      Origin = '"TITULOSP"."TTP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object titulospagarTTP_EMP_CODIGO: TIntegerField
      DisplayLabel = 'EMPRESA'
      FieldName = 'TTP_EMP_CODIGO'
      Origin = '"TITULOSP"."TTP_EMP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object titulospagarTTP_PES_CODIGO: TIntegerField
      DisplayLabel = 'PESSOA'
      FieldName = 'TTP_PES_CODIGO'
      Origin = '"TITULOSP"."TTP_PES_CODIGO"'
    end
    object titulospagarTTP_CTB_CODIGO: TIntegerField
      DisplayLabel = 'CONTA BANC'#193'RIA'
      FieldName = 'TTP_CTB_CODIGO'
      Origin = '"TITULOSP"."TTP_CTB_CODIGO"'
    end
    object titulospagarTTP_CON_CODIGO: TIntegerField
      DisplayLabel = 'CONDI'#199#195'O PAGAMENTO'
      FieldName = 'TTP_CON_CODIGO'
      Origin = '"TITULOSP"."TTP_CON_CODIGO"'
    end
    object titulospagarTTP_DESCRICAO: TIBStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'TTP_DESCRICAO'
      Origin = '"TITULOSP"."TTP_DESCRICAO"'
      Size = 100
    end
    object titulospagarTTP_DT_EMISSAO: TDateField
      DisplayLabel = 'DATA EMISS'#195'O'
      FieldName = 'TTP_DT_EMISSAO'
      Origin = '"TITULOSP"."TTP_DT_EMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object titulospagarTTP_DT_VENCIMENTO: TDateField
      DisplayLabel = 'DATA VENCIMENTO'
      FieldName = 'TTP_DT_VENCIMENTO'
      Origin = '"TITULOSP"."TTP_DT_VENCIMENTO"'
    end
    object titulospagarTTP_DT_PAGAMENTO: TDateField
      DisplayLabel = 'DATA PAGAMENTO'
      FieldName = 'TTP_DT_PAGAMENTO'
      Origin = '"TITULOSP"."TTP_DT_PAGAMENTO"'
    end
    object titulospagarTTP_DT_BAIXA: TDateField
      DisplayLabel = 'DATA BAIXA'
      FieldName = 'TTP_DT_BAIXA'
      Origin = '"TITULOSP"."TTP_DT_BAIXA"'
    end
    object titulospagarTTP_DT_CANCELAMENTO: TDateField
      DisplayLabel = 'DATA CANCELAMENTO'
      FieldName = 'TTP_DT_CANCELAMENTO'
      Origin = '"TITULOSP"."TTP_DT_CANCELAMENTO"'
    end
    object titulospagarTTP_TP_TITULO: TIBStringField
      DisplayLabel = 'TIPO TITULO'
      FieldName = 'TTP_TP_TITULO'
      Origin = '"TITULOSP"."TTP_TP_TITULO"'
      Size = 30
    end
    object titulospagarTTP_DESCONTO: TIBBCDField
      DisplayLabel = 'DESCONTO'
      FieldName = 'TTP_DESCONTO'
      Origin = '"TITULOSP"."TTP_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_PARCELA: TIBBCDField
      DisplayLabel = 'PARCELA'
      FieldName = 'TTP_PARCELA'
      Origin = '"TITULOSP"."TTP_PARCELA"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_VL_ORIGINAL: TIBBCDField
      DisplayLabel = 'VALOR ORIGINAL'
      FieldName = 'TTP_VL_ORIGINAL'
      Origin = '"TITULOSP"."TTP_VL_ORIGINAL"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_VL_PAGO: TIBBCDField
      DisplayLabel = 'VALOR PAGO'
      FieldName = 'TTP_VL_PAGO'
      Origin = '"TITULOSP"."TTP_VL_PAGO"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_VL_TOTAL: TIBBCDField
      DisplayLabel = 'VALOR TOTAL'
      FieldName = 'TTP_VL_TOTAL'
      Origin = '"TITULOSP"."TTP_VL_TOTAL"'
      DisplayFormat = '00.00'
      EditFormat = '00.00'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_MR_DIARIA: TIBBCDField
      DisplayLabel = 'MORA DI'#193'RIA'
      FieldName = 'TTP_MR_DIARIA'
      Origin = '"TITULOSP"."TTP_MR_DIARIA"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_MT_ATRASO: TIBBCDField
      DisplayLabel = 'MULTA DE ATRASO'
      FieldName = 'TTP_MT_ATRASO'
      Origin = '"TITULOSP"."TTP_MT_ATRASO"'
      Precision = 18
      Size = 2
    end
    object titulospagarTTP_SITUACAO: TIBStringField
      FieldName = 'TTP_SITUACAO'
      Origin = '"TITULOSP"."TTP_SITUACAO"'
    end
    object titulospagarTTP_TP_MORA: TIBStringField
      FieldName = 'TTP_TP_MORA'
      Origin = '"TITULOSP"."TTP_TP_MORA"'
    end
    object titulospagarTTP_TP_MULTA: TIBStringField
      FieldName = 'TTP_TP_MULTA'
      Origin = '"TITULOSP"."TTP_TP_MULTA"'
    end
  end
  object Dtitulospagar: TDataSource
    AutoEdit = False
    DataSet = titulospagar
    Left = 80
    Top = 144
  end
  object Utitulospagar: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from TITULOSP '
      'where'
      '  TTP_CODIGO = :TTP_CODIGO')
    ModifySQL.Strings = (
      'update TITULOSP'
      'set'
      '  TTP_CODIGO = :TTP_CODIGO,'
      '  TTP_CON_CODIGO = :TTP_CON_CODIGO,'
      '  TTP_CTB_CODIGO = :TTP_CTB_CODIGO,'
      '  TTP_DESCONTO = :TTP_DESCONTO,'
      '  TTP_DESCRICAO = :TTP_DESCRICAO,'
      '  TTP_DT_BAIXA = :TTP_DT_BAIXA,'
      '  TTP_DT_CANCELAMENTO = :TTP_DT_CANCELAMENTO,'
      '  TTP_DT_EMISSAO = :TTP_DT_EMISSAO,'
      '  TTP_DT_PAGAMENTO = :TTP_DT_PAGAMENTO,'
      '  TTP_DT_VENCIMENTO = :TTP_DT_VENCIMENTO,'
      '  TTP_EMP_CODIGO = :TTP_EMP_CODIGO,'
      '  TTP_MR_DIARIA = :TTP_MR_DIARIA,'
      '  TTP_MT_ATRASO = :TTP_MT_ATRASO,'
      '  TTP_PARCELA = :TTP_PARCELA,'
      '  TTP_PES_CODIGO = :TTP_PES_CODIGO,'
      '  TTP_TP_TITULO = :TTP_TP_TITULO,'
      '  TTP_VL_ORIGINAL = :TTP_VL_ORIGINAL,'
      '  TTP_VL_PAGO = :TTP_VL_PAGO,'
      '  TTP_VL_TOTAL = :TTP_VL_TOTAL'
      'where'
      '  TTP_CODIGO = :OLD_TTP_CODIGO')
    InsertSQL.Strings = (
      'insert into TITULOSP'
      
        '  (TTP_CODIGO, TTP_CON_CODIGO, TTP_CTB_CODIGO, TTP_DESCONTO, TTP' +
        '_DESCRICAO, '
      
        '   TTP_DT_BAIXA, TTP_DT_CANCELAMENTO, TTP_DT_EMISSAO, TTP_DT_PAG' +
        'AMENTO, '
      
        '   TTP_DT_VENCIMENTO, TTP_EMP_CODIGO, TTP_MR_DIARIA, TTP_MT_ATRA' +
        'SO, TTP_PARCELA, '
      
        '   TTP_PES_CODIGO, TTP_TP_TITULO, TTP_VL_ORIGINAL, TTP_VL_PAGO, ' +
        'TTP_VL_TOTAL)'
      'values'
      
        '  (:TTP_CODIGO, :TTP_CON_CODIGO, :TTP_CTB_CODIGO, :TTP_DESCONTO,' +
        ' :TTP_DESCRICAO, '
      
        '   :TTP_DT_BAIXA, :TTP_DT_CANCELAMENTO, :TTP_DT_EMISSAO, :TTP_DT' +
        '_PAGAMENTO, '
      
        '   :TTP_DT_VENCIMENTO, :TTP_EMP_CODIGO, :TTP_MR_DIARIA, :TTP_MT_' +
        'ATRASO, '
      
        '   :TTP_PARCELA, :TTP_PES_CODIGO, :TTP_TP_TITULO, :TTP_VL_ORIGIN' +
        'AL, :TTP_VL_PAGO, '
      '   :TTP_VL_TOTAL)')
    DeleteSQL.Strings = (
      'delete from TITULOSP'
      'where'
      '  TTP_CODIGO = :OLD_TTP_CODIGO')
    Left = 88
    Top = 88
  end
end
