object DM_PCP: TDM_PCP
  OldCreateOrder = False
  Height = 290
  Width = 475
  object UPD_PCP: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLI_COD,'
      '  CLI_NOME,'
      '  CLI_CPF,'
      '  CLI_ENDERECO,'
      '  CLI_CIDADE,'
      '  CLI_BAIRRO,'
      '  CLI_CEP,'
      '  CLI_NR_RESIDENCIAL,'
      '  CLI_NR_CELULAR'
      'from CLIENTE '
      'where'
      '  CLI_COD = :CLI_COD')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CIDADE = :CLI_CIDADE,'
      '  CLI_COD = :CLI_COD,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_NOME = :CLI_NOME,'
      '  CLI_NR_CELULAR = :CLI_NR_CELULAR,'
      '  CLI_NR_RESIDENCIAL = :CLI_NR_RESIDENCIAL'
      'where'
      '  CLI_COD = :OLD_CLI_COD')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_COD, CLI_CPF, CLI_ENDERE' +
        'CO, CLI_NOME, '
      '   CLI_NR_CELULAR, CLI_NR_RESIDENCIAL)'
      'values'
      
        '  (:CLI_BAIRRO, :CLI_CEP, :CLI_CIDADE, :CLI_COD, :CLI_CPF, :CLI_' +
        'ENDERECO, '
      '   :CLI_NOME, :CLI_NR_CELULAR, :CLI_NR_RESIDENCIAL)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CLI_COD = :OLD_CLI_COD')
    Left = 200
    Top = 96
  end
  object DS_PCP: TDataSource
    DataSet = IB_PCP
    Left = 296
    Top = 24
  end
  object IB_PCP: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CLIENTE')
    UpdateObject = UPD_PCP
    Left = 96
    Top = 32
    object IB_PCPCLI_COD: TIntegerField
      FieldName = 'CLI_COD'
      Origin = '"CLIENTE"."CLI_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_PCPCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTE"."CLI_NOME"'
      Required = True
      Size = 80
    end
    object IB_PCPCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTE"."CLI_CPF"'
      Required = True
      Size = 80
    end
    object IB_PCPCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTE"."CLI_ENDERECO"'
      Required = True
      Size = 200
    end
    object IB_PCPCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTE"."CLI_CIDADE"'
      Required = True
      Size = 80
    end
    object IB_PCPCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTE"."CLI_BAIRRO"'
      Required = True
      Size = 80
    end
    object IB_PCPCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTE"."CLI_CEP"'
      Required = True
      Size = 80
    end
    object IB_PCPCLI_NR_RESIDENCIAL: TIBStringField
      FieldName = 'CLI_NR_RESIDENCIAL'
      Origin = '"CLIENTE"."CLI_NR_RESIDENCIAL"'
      Size = 60
    end
    object IB_PCPCLI_NR_CELULAR: TIBStringField
      FieldName = 'CLI_NR_CELULAR'
      Origin = '"CLIENTE"."CLI_NR_CELULAR"'
      Required = True
      Size = 80
    end
  end
end
