object DM_Servico: TDM_Servico
  OldCreateOrder = False
  Height = 351
  Width = 523
  object IB_Servico: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CHAMADOS')
    UpdateObject = UPS_Servico
    Left = 96
    Top = 56
    object IB_ServicoCHA_COD: TIntegerField
      FieldName = 'CHA_COD'
      Origin = '"CHAMADOS"."CHA_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ServicoCHA_EMPRESA: TIntegerField
      FieldName = 'CHA_EMPRESA'
      Origin = '"CHAMADOS"."CHA_EMPRESA"'
    end
    object IB_ServicoCHA_DEPARTAMENTO: TIntegerField
      FieldName = 'CHA_DEPARTAMENTO'
      Origin = '"CHAMADOS"."CHA_DEPARTAMENTO"'
    end
    object IB_ServicoCHA_FUNCIONARIO: TIntegerField
      FieldName = 'CHA_FUNCIONARIO'
      Origin = '"CHAMADOS"."CHA_FUNCIONARIO"'
    end
    object IB_ServicoCHA_DESCRICAO: TIBStringField
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 400
    end
    object IB_ServicoCHA_PRIORIDADE: TIBStringField
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
      Size = 240
    end
    object IB_ServicoCHA_STATUS: TIBStringField
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
      Size = 240
    end
    object IB_ServicoCHA_DATA_ENTRADA: TDateField
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
    end
    object IB_ServicoCHA_DATA_SAIDA: TDateField
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_ServicoCHA_PRODUTO_UTILIZADO: TIBStringField
      FieldName = 'CHA_PRODUTO_UTILIZADO'
      Origin = '"CHAMADOS"."CHA_PRODUTO_UTILIZADO"'
      Size = 400
    end
  end
  object UPS_Servico: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CHA_COD,'
      '  CHA_EMPRESA,'
      '  CHA_DEPARTAMENTO,'
      '  CHA_FUNCIONARIO,'
      '  CHA_DESCRICAO,'
      '  CHA_PRIORIDADE,'
      '  CHA_STATUS,'
      '  CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA,'
      '  CHA_PRODUTO_UTILIZADO'
      'from CHAMADOS '
      'where'
      '  CHA_COD = :CHA_COD')
    ModifySQL.Strings = (
      'update CHAMADOS'
      'set'
      '  CHA_COD = :CHA_COD,'
      '  CHA_DATA_ENTRADA = :CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA = :CHA_DATA_SAIDA,'
      '  CHA_DEPARTAMENTO = :CHA_DEPARTAMENTO,'
      '  CHA_DESCRICAO = :CHA_DESCRICAO,'
      '  CHA_EMPRESA = :CHA_EMPRESA,'
      '  CHA_FUNCIONARIO = :CHA_FUNCIONARIO,'
      '  CHA_PRIORIDADE = :CHA_PRIORIDADE,'
      '  CHA_PRODUTO_UTILIZADO = :CHA_PRODUTO_UTILIZADO,'
      '  CHA_STATUS = :CHA_STATUS'
      'where'
      '  CHA_COD = :OLD_CHA_COD')
    InsertSQL.Strings = (
      'insert into CHAMADOS'
      
        '  (CHA_COD, CHA_DATA_ENTRADA, CHA_DATA_SAIDA, CHA_DEPARTAMENTO, ' +
        'CHA_DESCRICAO, '
      
        '   CHA_EMPRESA, CHA_FUNCIONARIO, CHA_PRIORIDADE, CHA_PRODUTO_UTI' +
        'LIZADO, '
      '   CHA_STATUS)'
      'values'
      
        '  (:CHA_COD, :CHA_DATA_ENTRADA, :CHA_DATA_SAIDA, :CHA_DEPARTAMEN' +
        'TO, :CHA_DESCRICAO, '
      
        '   :CHA_EMPRESA, :CHA_FUNCIONARIO, :CHA_PRIORIDADE, :CHA_PRODUTO' +
        '_UTILIZADO, '
      '   :CHA_STATUS)')
    DeleteSQL.Strings = (
      'delete from CHAMADOS'
      'where'
      '  CHA_COD = :OLD_CHA_COD')
    Left = 280
    Top = 184
  end
  object DS_Servico: TDataSource
    DataSet = IB_Servico
    Left = 288
    Top = 88
  end
end
