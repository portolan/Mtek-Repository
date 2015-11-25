object DM_financeiro: TDM_financeiro
  OldCreateOrder = False
  Height = 271
  Width = 415
  object contasbancarias: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    ParamCheck = True
    SQL.Strings = (
      
        'select CTB_AGENCIA, CTB_BAN_CODIGO, CTB_CODIGO, CTB_CONTA, CTB_E' +
        'MP_CODIGO, CTB_PESSOA, CTB_SALDO,CTB_STATUS FROM CONTABANCARIA')
    UpdateObject = U_contasbancarias
    Left = 40
    Top = 16
    object contasbancariasCTB_AGENCIA: TIBStringField
      FieldName = 'CTB_AGENCIA'
      Origin = '"CONTABANCARIA"."CTB_AGENCIA"'
    end
    object contasbancariasCTB_BAN_CODIGO: TIntegerField
      FieldName = 'CTB_BAN_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_BAN_CODIGO"'
      Required = True
    end
    object contasbancariasCTB_CODIGO: TIntegerField
      FieldName = 'CTB_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object contasbancariasCTB_CONTA: TIBStringField
      FieldName = 'CTB_CONTA'
      Origin = '"CONTABANCARIA"."CTB_CONTA"'
    end
    object contasbancariasCTB_EMP_CODIGO: TIntegerField
      FieldName = 'CTB_EMP_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_EMP_CODIGO"'
      Required = True
    end
    object contasbancariasCTB_PESSOA: TIntegerField
      FieldName = 'CTB_PESSOA'
      Origin = '"CONTABANCARIA"."CTB_PESSOA"'
      Required = True
    end
    object contasbancariasCTB_SALDO: TIBBCDField
      FieldName = 'CTB_SALDO'
      Origin = '"CONTABANCARIA"."CTB_SALDO"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_STATUS: TIBStringField
      FieldName = 'CTB_STATUS'
      Origin = '"CONTABANCARIA"."CTB_STATUS"'
      Size = 1
    end
  end
  object D_contasbancarias: TDataSource
    DataSet = contasbancarias
    Left = 40
    Top = 88
  end
  object U_contasbancarias: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CTB_CODIGO,'
      '  CTB_EMP_CODIGO,'
      '  CTB_BAN_CODIGO,'
      '  CTB_CONTA,'
      '  CTB_AGENCIA,'
      '  CTB_SALDO,'
      '  CTB_PESSOA'
      'from CONTABANCARIA '
      'where'
      '  CTB_BAN_CODIGO = :CTB_BAN_CODIGO and'
      '  CTB_CODIGO = :CTB_CODIGO and'
      '  CTB_CONTA = :CTB_CONTA and'
      '  CTB_EMP_CODIGO = :CTB_EMP_CODIGO and'
      '  CTB_PESSOA = :CTB_PESSOA')
    ModifySQL.Strings = (
      'update CONTABANCARIA'
      'set'
      '  CTB_AGENCIA = :CTB_AGENCIA,'
      '  CTB_BAN_CODIGO = :CTB_BAN_CODIGO,'
      '  CTB_CODIGO = :CTB_CODIGO,'
      '  CTB_CONTA = :CTB_CONTA,'
      '  CTB_EMP_CODIGO = :CTB_EMP_CODIGO,'
      '  CTB_PESSOA = :CTB_PESSOA,'
      '  CTB_SALDO = :CTB_SALDO'
      'where'
      '  CTB_BAN_CODIGO = :OLD_CTB_BAN_CODIGO and'
      '  CTB_CODIGO = :OLD_CTB_CODIGO and'
      '  CTB_CONTA = :OLD_CTB_CONTA and'
      '  CTB_EMP_CODIGO = :OLD_CTB_EMP_CODIGO and'
      '  CTB_PESSOA = :OLD_CTB_PESSOA')
    InsertSQL.Strings = (
      'insert into CONTABANCARIA'
      
        '  (CTB_AGENCIA, CTB_BAN_CODIGO, CTB_CODIGO, CTB_CONTA, CTB_EMP_C' +
        'ODIGO, '
      '   CTB_PESSOA, CTB_SALDO)'
      'values'
      
        '  (:CTB_AGENCIA, :CTB_BAN_CODIGO, :CTB_CODIGO, :CTB_CONTA, :CTB_' +
        'EMP_CODIGO, '
      '   :CTB_PESSOA, :CTB_SALDO)')
    DeleteSQL.Strings = (
      'delete from CONTABANCARIA'
      'where'
      '  CTB_BAN_CODIGO = :OLD_CTB_BAN_CODIGO and'
      '  CTB_CODIGO = :OLD_CTB_CODIGO and'
      '  CTB_CONTA = :OLD_CTB_CONTA and'
      '  CTB_EMP_CODIGO = :OLD_CTB_EMP_CODIGO and'
      '  CTB_PESSOA = :OLD_CTB_PESSOA')
    Left = 40
    Top = 144
  end
  object banco: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    ParamCheck = True
    SQL.Strings = (
      'select * from banco')
    UpdateObject = U_banco
    Left = 208
    Top = 16
    object bancoBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = '"BANCO"."BAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object bancoBAN_DESCRICAO: TIBStringField
      FieldName = 'BAN_DESCRICAO'
      Origin = '"BANCO"."BAN_DESCRICAO"'
      Size = 100
    end
  end
  object D_banco: TDataSource
    DataSet = banco
    Left = 208
    Top = 88
  end
  object U_banco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from banco '
      'where'
      '  BAN_CODIGO = :BAN_CODIGO')
    ModifySQL.Strings = (
      'update banco'
      'set'
      '  BAN_CODIGO = :BAN_CODIGO,'
      '  BAN_DESCRICAO = :BAN_DESCRICAO'
      'where'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    InsertSQL.Strings = (
      'insert into banco'
      '  (BAN_CODIGO, BAN_DESCRICAO)'
      'values'
      '  (:BAN_CODIGO, :BAN_DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from banco'
      'where'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    Left = 208
    Top = 144
  end
end
