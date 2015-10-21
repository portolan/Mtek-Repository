object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 150
  Width = 215
  object empresa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from empresa')
    UpdateObject = Uempresa
    Left = 96
    Top = 56
    object empresaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = '"EMPRESA"."COD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object empresaCNPJ_EMPRESA: TIBBCDField
      FieldName = 'CNPJ_EMPRESA'
      Origin = '"EMPRESA"."CNPJ_EMPRESA"'
      Precision = 18
      Size = 2
    end
    object empresaEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object empresaEMP_NOMEF: TIBStringField
      FieldName = 'EMP_NOMEF'
      Origin = '"EMPRESA"."EMP_NOMEF"'
      Size = 60
    end
    object empresaEMP_ENDERECO: TIBStringField
      FieldName = 'EMP_ENDERECO'
      Origin = '"EMPRESA"."EMP_ENDERECO"'
      Size = 60
    end
    object empresaEMP_END_NUM: TIntegerField
      FieldName = 'EMP_END_NUM'
      Origin = '"EMPRESA"."EMP_END_NUM"'
    end
    object empresaEMP_BAIRRO: TIBStringField
      FieldName = 'EMP_BAIRRO'
      Origin = '"EMPRESA"."EMP_BAIRRO"'
    end
    object empresaEMP_CIDADE: TIBStringField
      FieldName = 'EMP_CIDADE'
      Origin = '"EMPRESA"."EMP_CIDADE"'
      Size = 60
    end
    object empresaEMP_UF: TIBStringField
      FieldName = 'EMP_UF'
      Origin = '"EMPRESA"."EMP_UF"'
      Size = 2
    end
    object empresaEMP_CEP: TIntegerField
      FieldName = 'EMP_CEP'
      Origin = '"EMPRESA"."EMP_CEP"'
    end
    object empresaEMP_FONE: TIntegerField
      FieldName = 'EMP_FONE'
      Origin = '"EMPRESA"."EMP_FONE"'
    end
    object empresaEMP_TITULAR: TIBStringField
      FieldName = 'EMP_TITULAR'
      Origin = '"EMPRESA"."EMP_TITULAR"'
      Size = 60
    end
  end
  object Dempresa: TDataSource
    DataSet = empresa
    Left = 160
    Top = 24
  end
  object Uempresa: TIBUpdateSQL
    Left = 48
    Top = 24
  end
end
