object DM_financeiro: TDM_financeiro
  OldCreateOrder = False
  Height = 271
  Width = 415
  object contasbancarias: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    ObjectView = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = D_contasbancarias
    Constraints = <
      item
        FromDictionary = False
      end>
    ParamCheck = True
    SQL.Strings = (
      'select * from CONTABANCARIA')
    UpdateObject = U_contasbancarias
    Left = 40
    Top = 16
    object contasbancariasCTB_CODIGO: TIntegerField
      FieldName = 'CTB_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object contasbancariasCTB_EMP_CODIGO: TIntegerField
      FieldName = 'CTB_EMP_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_EMP_CODIGO"'
    end
    object contasbancariasCTB_BAN_CODIGO: TIntegerField
      FieldName = 'CTB_BAN_CODIGO'
      Origin = '"CONTABANCARIA"."CTB_BAN_CODIGO"'
    end
    object contasbancariasCTB_NUMERO_CONTA: TIBBCDField
      FieldName = 'CTB_NUMERO_CONTA'
      Origin = '"CONTABANCARIA"."CTB_NUMERO_CONTA"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_OPERACAO: TIBBCDField
      FieldName = 'CTB_OPERACAO'
      Origin = '"CONTABANCARIA"."CTB_OPERACAO"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_AGENCIA: TIBBCDField
      FieldName = 'CTB_AGENCIA'
      Origin = '"CONTABANCARIA"."CTB_AGENCIA"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_SALDO: TIBBCDField
      FieldName = 'CTB_SALDO'
      Origin = '"CONTABANCARIA"."CTB_SALDO"'
      Precision = 18
      Size = 2
    end
  end
  object D_contasbancarias: TDataSource
    Left = 40
    Top = 80
  end
  object U_contasbancarias: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CTB_CODIGO,'
      '  CTB_EMP_CODIGO,'
      '  CTB_BAN_CODIGO,'
      '  CTB_NUMERO_CONTA,'
      '  CTB_OPERACAO,'
      '  CTB_AGENCIA,'
      '  CTB_SALDO'
      'from CONTABANCARIA '
      'where'
      '  CTB_CODIGO = :CTB_CODIGO and'
      '  CTB_EMP_CODIGO = :CTB_EMP_CODIGO')
    ModifySQL.Strings = (
      'update CONTABANCARIA'
      'set'
      '  CTB_AGENCIA = :CTB_AGENCIA,'
      '  CTB_BAN_CODIGO = :CTB_BAN_CODIGO,'
      '  CTB_CODIGO = :CTB_CODIGO,'
      '  CTB_EMP_CODIGO = :CTB_EMP_CODIGO,'
      '  CTB_NUMERO_CONTA = :CTB_NUMERO_CONTA,'
      '  CTB_OPERACAO = :CTB_OPERACAO,'
      '  CTB_SALDO = :CTB_SALDO'
      'where'
      '  CTB_CODIGO = :OLD_CTB_CODIGO and'
      '  CTB_EMP_CODIGO = :OLD_CTB_EMP_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTABANCARIA'
      
        '  (CTB_AGENCIA, CTB_BAN_CODIGO, CTB_CODIGO, CTB_EMP_CODIGO, CTB_' +
        'NUMERO_CONTA, '
      '   CTB_OPERACAO, CTB_SALDO)'
      'values'
      
        '  (:CTB_AGENCIA, :CTB_BAN_CODIGO, :CTB_CODIGO, :CTB_EMP_CODIGO, ' +
        ':CTB_NUMERO_CONTA, '
      '   :CTB_OPERACAO, :CTB_SALDO)')
    DeleteSQL.Strings = (
      'delete from CONTABANCARIA'
      'where'
      '  CTB_CODIGO = :OLD_CTB_CODIGO and'
      '  CTB_EMP_CODIGO = :OLD_CTB_EMP_CODIGO')
    Left = 40
    Top = 152
  end
end
