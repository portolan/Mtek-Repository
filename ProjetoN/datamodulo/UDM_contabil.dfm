object DM_contabil: TDM_contabil
  OldCreateOrder = False
  Height = 413
  Width = 376
  object empresa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from empresa')
    UpdateObject = Uempresa
    Left = 104
    Top = 24
    object empresaCOD_EMPRESA: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'COD_EMPRESA'
      Origin = '"EMPRESA"."COD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object empresaCNPJ_EMPRESA: TIBBCDField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_EMPRESA'
      Origin = '"EMPRESA"."CNPJ_EMPRESA"'
      Precision = 18
      Size = 2
    end
    object empresaEMP_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object empresaEMP_NOMEF: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'EMP_NOMEF'
      Origin = '"EMPRESA"."EMP_NOMEF"'
      Size = 60
    end
    object empresaEMP_ENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'EMP_ENDERECO'
      Origin = '"EMPRESA"."EMP_ENDERECO"'
      Size = 60
    end
    object empresaEMP_END_NUM: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'EMP_END_NUM'
      Origin = '"EMPRESA"."EMP_END_NUM"'
    end
    object empresaEMP_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EMP_BAIRRO'
      Origin = '"EMPRESA"."EMP_BAIRRO"'
    end
    object empresaEMP_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'EMP_CIDADE'
      Origin = '"EMPRESA"."EMP_CIDADE"'
      Size = 60
    end
    object empresaEMP_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'EMP_UF'
      Origin = '"EMPRESA"."EMP_UF"'
      Size = 2
    end
    object empresaEMP_CEP: TIntegerField
      DisplayLabel = 'CEP'
      FieldName = 'EMP_CEP'
      Origin = '"EMPRESA"."EMP_CEP"'
    end
    object empresaEMP_FONE: TIntegerField
      DisplayLabel = 'Telefone'
      FieldName = 'EMP_FONE'
      Origin = '"EMPRESA"."EMP_FONE"'
    end
    object empresaEMP_TITULAR: TIBStringField
      DisplayLabel = 'TitulaR'
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
    RefreshSQL.Strings = (
      'Select *'
      'from empresa '
      'where'
      '  COD_EMPRESA = :COD_EMPRESA')
    ModifySQL.Strings = (
      'update empresa'
      'set'
      '  CNPJ_EMPRESA = :CNPJ_EMPRESA,'
      '  COD_EMPRESA = :COD_EMPRESA,'
      '  EMP_BAIRRO = :EMP_BAIRRO,'
      '  EMP_CEP = :EMP_CEP,'
      '  EMP_CIDADE = :EMP_CIDADE,'
      '  EMP_END_NUM = :EMP_END_NUM,'
      '  EMP_ENDERECO = :EMP_ENDERECO,'
      '  EMP_FONE = :EMP_FONE,'
      '  EMP_NOMEF = :EMP_NOMEF,'
      '  EMP_RAZAO = :EMP_RAZAO,'
      '  EMP_TITULAR = :EMP_TITULAR,'
      '  EMP_UF = :EMP_UF'
      'where'
      '  COD_EMPRESA = :OLD_COD_EMPRESA')
    InsertSQL.Strings = (
      'insert into empresa'
      
        '  (CNPJ_EMPRESA, COD_EMPRESA, EMP_BAIRRO, EMP_CEP, EMP_CIDADE, E' +
        'MP_END_NUM, '
      
        '   EMP_ENDERECO, EMP_FONE, EMP_NOMEF, EMP_RAZAO, EMP_TITULAR, EM' +
        'P_UF)'
      'values'
      
        '  (:CNPJ_EMPRESA, :COD_EMPRESA, :EMP_BAIRRO, :EMP_CEP, :EMP_CIDA' +
        'DE, :EMP_END_NUM, '
      
        '   :EMP_ENDERECO, :EMP_FONE, :EMP_NOMEF, :EMP_RAZAO, :EMP_TITULA' +
        'R, :EMP_UF)')
    DeleteSQL.Strings = (
      'delete from empresa'
      'where'
      '  COD_EMPRESA = :OLD_COD_EMPRESA')
    Left = 48
    Top = 24
  end
  object centro: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from centrodecusto'
      '')
    UpdateObject = Ucentro
    Left = 104
    Top = 104
    object centroCOD_CC: TIntegerField
      DisplayLabel = 'C'#243'digo C.C'
      FieldName = 'COD_CC'
      Origin = '"CENTRODECUSTO"."COD_CC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object centroCOD_GRUPO: TIntegerField
      DisplayLabel = 'Estabelecimento'
      FieldName = 'COD_GRUPO'
      Origin = '"CENTRODECUSTO"."COD_GRUPO"'
    end
    object centroNUM_CC: TIntegerField
      DisplayLabel = 'N'#250'mero C.C'
      FieldName = 'NUM_CC'
      Origin = '"CENTRODECUSTO"."NUM_CC"'
    end
    object centroDESC_CC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o C.C.'
      FieldName = 'DESC_CC'
      Origin = '"CENTRODECUSTO"."DESC_CC"'
      Size = 60
    end
    object centroANALITICO: TIBStringField
      DisplayLabel = 'Analitico?'
      FieldName = 'ANALITICO'
      Origin = '"CENTRODECUSTO"."ANALITICO"'
      Size = 1
    end
  end
  object Dcentro: TDataSource
    DataSet = centro
    Left = 160
    Top = 104
  end
  object Ucentro: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from centrodecusto '
      'where'
      '  COD_CC = :COD_CC')
    ModifySQL.Strings = (
      'update centrodecusto'
      'set'
      '  ANALITICO = :ANALITICO,'
      '  COD_CC = :COD_CC,'
      '  COD_GRUPO = :COD_GRUPO,'
      '  DESC_CC = :DESC_CC,'
      '  NUM_CC = :NUM_CC'
      'where'
      '  COD_CC = :OLD_COD_CC')
    InsertSQL.Strings = (
      'insert into centrodecusto'
      '  (ANALITICO, COD_CC, COD_GRUPO, DESC_CC, NUM_CC)'
      'values'
      '  (:ANALITICO, :COD_CC, :COD_GRUPO, :DESC_CC, :NUM_CC)')
    DeleteSQL.Strings = (
      'delete from centrodecusto'
      'where'
      '  COD_CC = :OLD_COD_CC')
    Left = 48
    Top = 104
  end
end
