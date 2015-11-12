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
      'select  *  from CONTA_BANCARIA')
    UpdateObject = U_contasbancarias
    Left = 40
    Top = 16
    object contasbancariasCTB_BANCO: TIBStringField
      FieldName = 'CTB_BANCO'
      Origin = '"CONTA_BANCARIA"."CTB_BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object contasbancariasCTB_CONTA: TIBStringField
      FieldName = 'CTB_CONTA'
      Origin = '"CONTA_BANCARIA"."CTB_CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object contasbancariasCTB_TITULAR: TIBStringField
      FieldName = 'CTB_TITULAR'
      Origin = '"CONTA_BANCARIA"."CTB_TITULAR"'
      Required = True
      Size = 40
    end
    object contasbancariasCTB_EMPRESA: TIntegerField
      FieldName = 'CTB_EMPRESA'
      Origin = '"CONTA_BANCARIA"."CTB_EMPRESA"'
    end
    object contasbancariasCTB_SALDO: TIBBCDField
      FieldName = 'CTB_SALDO'
      Origin = '"CONTA_BANCARIA"."CTB_SALDO"'
      Precision = 18
      Size = 2
    end
    object contasbancariasCTB_BANCOCODIGO: TIBStringField
      FieldName = 'CTB_BANCOCODIGO'
      Origin = '"CONTA_BANCARIA"."CTB_BANCOCODIGO"'
      Size = 3
    end
    object contasbancariasCTB_AGENCIACODIGO: TIBStringField
      FieldName = 'CTB_AGENCIACODIGO'
      Origin = '"CONTA_BANCARIA"."CTB_AGENCIACODIGO"'
      Size = 4
    end
    object contasbancariasCTB_CONTANUMERO: TIBStringField
      FieldName = 'CTB_CONTANUMERO'
      Origin = '"CONTA_BANCARIA"."CTB_CONTANUMERO"'
      Size = 15
    end
    object contasbancariasCTB_ATIVOINATIVO: TIBStringField
      FieldName = 'CTB_ATIVOINATIVO'
      Origin = '"CONTA_BANCARIA"."CTB_ATIVOINATIVO"'
      Size = 1
    end
  end
  object D_contasbancarias: TDataSource
    DataSet = DM_contasreceber.contasreceber
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
