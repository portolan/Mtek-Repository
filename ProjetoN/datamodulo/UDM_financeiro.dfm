object DM_financeiro: TDM_financeiro
  OldCreateOrder = False
  Height = 271
  Width = 415
  object contasbancarias: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = D_contasbancarias
    ParamCheck = True
    SQL.Strings = (
      'select  *  from CONTABANCARIA')
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
    object contasbancariasCTB_CONTA: TIBBCDField
      FieldName = 'CTB_CONTA'
      Origin = '"CONTABANCARIA"."CTB_CONTA"'
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
    object contasbancariasCTB_SALDOI: TIBBCDField
      FieldName = 'CTB_SALDOI'
      Origin = '"CONTABANCARIA"."CTB_SALDOI"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_SALDOT: TIBBCDField
      FieldName = 'CTB_SALDOT'
      Origin = '"CONTABANCARIA"."CTB_SALDOT"'
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
      '  CTB_BANCO,'
      '  CTB_CONTA,'
      '  CTB_TITULAR,'
      '  CTB_EMPRESA,'
      '  CTB_SALDO,'
      '  CTB_BANCOCODIGO,'
      '  CTB_AGENCIACODIGO,'
      '  CTB_CONTANUMERO,'
      '  CTB_ATIVOINATIVO'
      'from CONTA_BANCARIA '
      'where'
      '  CTB_BANCO = :CTB_BANCO and'
      '  CTB_CONTA = :CTB_CONTA')
    ModifySQL.Strings = (
      'update CONTA_BANCARIA'
      'set'
      '  CTB_AGENCIACODIGO = :CTB_AGENCIACODIGO,'
      '  CTB_ATIVOINATIVO = :CTB_ATIVOINATIVO,'
      '  CTB_BANCO = :CTB_BANCO,'
      '  CTB_BANCOCODIGO = :CTB_BANCOCODIGO,'
      '  CTB_CONTA = :CTB_CONTA,'
      '  CTB_CONTANUMERO = :CTB_CONTANUMERO,'
      '  CTB_EMPRESA = :CTB_EMPRESA,'
      '  CTB_SALDO = :CTB_SALDO,'
      '  CTB_TITULAR = :CTB_TITULAR'
      'where'
      '  CTB_BANCO = :OLD_CTB_BANCO and'
      '  CTB_CONTA = :OLD_CTB_CONTA')
    InsertSQL.Strings = (
      'insert into CONTA_BANCARIA'
      
        '  (CTB_AGENCIACODIGO, CTB_ATIVOINATIVO, CTB_BANCO, CTB_BANCOCODI' +
        'GO, CTB_CONTA, '
      '   CTB_CONTANUMERO, CTB_EMPRESA, CTB_SALDO, CTB_TITULAR)'
      'values'
      
        '  (:CTB_AGENCIACODIGO, :CTB_ATIVOINATIVO, :CTB_BANCO, :CTB_BANCO' +
        'CODIGO, '
      
        '   :CTB_CONTA, :CTB_CONTANUMERO, :CTB_EMPRESA, :CTB_SALDO, :CTB_' +
        'TITULAR)')
    DeleteSQL.Strings = (
      'delete from CONTA_BANCARIA'
      'where'
      '  CTB_BANCO = :OLD_CTB_BANCO and'
      '  CTB_CONTA = :OLD_CTB_CONTA')
    Left = 40
    Top = 152
  end
end
