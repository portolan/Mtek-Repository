object DM_contabil: TDM_contabil
  OldCreateOrder = False
  Height = 389
  Width = 679
  object empresa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from empresa')
    UpdateObject = Uempresa
    Left = 128
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
    Left = 208
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
    AfterInsert = centroAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from centrodecusto'
      '')
    UpdateObject = Ucentro
    Left = 128
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
    Left = 208
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
  object lancamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from lancamentos'
      '')
    UpdateObject = Ulancamento
    Left = 128
    Top = 184
    object lancamentoNR_LOTE: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      FieldName = 'NR_LOTE'
      Origin = '"LANCAMENTOS"."NR_LOTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object lancamentoNR_LANCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Lan'#231'amento'
      FieldName = 'NR_LANCAMENTO'
      Origin = '"LANCAMENTOS"."NR_LANCAMENTO"'
    end
    object lancamentoDT_LANCAMENTO: TDateField
      DisplayLabel = 'Data Lan'#231'amento'
      FieldName = 'DT_LANCAMENTO'
      Origin = '"LANCAMENTOS"."DT_LANCAMENTO"'
    end
    object lancamentoDEBITO: TIntegerField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      Origin = '"LANCAMENTOS"."DEBITO"'
    end
    object lancamentoCENTRODECUSTO_DB: TIntegerField
      DisplayLabel = 'C.C D'#233'bito'
      FieldName = 'CENTRODECUSTO_DB'
      Origin = '"LANCAMENTOS"."CENTRODECUSTO_DB"'
    end
    object lancamentoCREDITO: TIntegerField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = '"LANCAMENTOS"."CREDITO"'
    end
    object lancamentoCENTRODECUSTO_CR: TIntegerField
      DisplayLabel = 'C.C Cr'#233'dito'
      FieldName = 'CENTRODECUSTO_CR'
      Origin = '"LANCAMENTOS"."CENTRODECUSTO_CR"'
    end
    object lancamentoHISTORICO: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"LANCAMENTOS"."HISTORICO"'
    end
    object lancamentoVAR_HISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico Variavel'
      FieldName = 'VAR_HISTORICO'
      Origin = '"LANCAMENTOS"."VAR_HISTORICO"'
      Size = 100
    end
    object lancamentoVALOR: TIntegerField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"LANCAMENTOS"."VALOR"'
    end
  end
  object Dlancamento: TDataSource
    DataSet = lancamento
    Left = 208
    Top = 184
  end
  object Ulancamento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lancamentos '
      'where'
      '  NR_LOTE = :NR_LOTE')
    ModifySQL.Strings = (
      'update lancamentos'
      'set'
      '  CENTRODECUSTO_CR = :CENTRODECUSTO_CR,'
      '  CENTRODECUSTO_DB = :CENTRODECUSTO_DB,'
      '  CREDITO = :CREDITO,'
      '  DEBITO = :DEBITO,'
      '  DT_LANCAMENTO = :DT_LANCAMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  NR_LANCAMENTO = :NR_LANCAMENTO,'
      '  NR_LOTE = :NR_LOTE,'
      '  VALOR = :VALOR,'
      '  VAR_HISTORICO = :VAR_HISTORICO'
      'where'
      '  NR_LOTE = :OLD_NR_LOTE')
    InsertSQL.Strings = (
      'insert into lancamentos'
      
        '  (CENTRODECUSTO_CR, CENTRODECUSTO_DB, CREDITO, DEBITO, DT_LANCA' +
        'MENTO, '
      '   HISTORICO, NR_LANCAMENTO, NR_LOTE, VALOR, VAR_HISTORICO)'
      'values'
      
        '  (:CENTRODECUSTO_CR, :CENTRODECUSTO_DB, :CREDITO, :DEBITO, :DT_' +
        'LANCAMENTO, '
      '   :HISTORICO, :NR_LANCAMENTO, :NR_LOTE, :VALOR, :VAR_HISTORICO)')
    DeleteSQL.Strings = (
      'delete from lancamentos'
      'where'
      '  NR_LOTE = :OLD_NR_LOTE')
    Left = 48
    Top = 184
  end
  object departamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DEPARTAMENTO')
    UpdateObject = Udepartamento
    Left = 128
    Top = 264
    object departamentoCOD_DEP: TIntegerField
      DisplayLabel = 'C'#243'digo Departamento'
      FieldName = 'COD_DEP'
      Origin = '"DEPARTAMENTO"."COD_DEP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object departamentoCOD_EMPRESAR: TIntegerField
      DisplayLabel = 'Empresa Relacionada'
      FieldName = 'COD_EMPRESAR'
      Origin = '"DEPARTAMENTO"."COD_EMPRESAR"'
      Required = True
    end
    object departamentoDP_NOME: TIBStringField
      DisplayLabel = 'Departamento'
      FieldName = 'DP_NOME'
      Origin = '"DEPARTAMENTO"."DP_NOME"'
      Required = True
      Size = 40
    end
    object departamentoDP_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DP_DESC'
      Origin = '"DEPARTAMENTO"."DP_DESC"'
      Required = True
      Size = 60
    end
  end
  object Ddepartamento: TDataSource
    DataSet = departamento
    Left = 208
    Top = 264
  end
  object Udepartamento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DEP,'
      '  COD_EMPRESAR,'
      '  DP_NOME,'
      '  DP_DESC'
      'from DEPARTAMENTO '
      'where'
      '  COD_DEP = :COD_DEP')
    ModifySQL.Strings = (
      'update DEPARTAMENTO'
      'set'
      '  COD_DEP = :COD_DEP,'
      '  COD_EMPRESAR = :COD_EMPRESAR,'
      '  DP_DESC = :DP_DESC,'
      '  DP_NOME = :DP_NOME'
      'where'
      '  COD_DEP = :OLD_COD_DEP')
    InsertSQL.Strings = (
      'insert into DEPARTAMENTO'
      '  (COD_DEP, COD_EMPRESAR, DP_DESC, DP_NOME)'
      'values'
      '  (:COD_DEP, :COD_EMPRESAR, :DP_DESC, :DP_NOME)')
    DeleteSQL.Strings = (
      'delete from DEPARTAMENTO'
      'where'
      '  COD_DEP = :OLD_COD_DEP')
    Left = 48
    Top = 264
  end
  object planodecontas: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = planodecontasAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PLANODECONTAS')
    UpdateObject = Uplanodecontas
    Left = 456
    Top = 24
    object planodecontasCOD_CONTA: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'COD_CONTA'
      Origin = '"PLANODECONTAS"."COD_CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object planodecontasCONTA: TIntegerField
      DisplayLabel = 'N'#250'mero Conta'
      FieldName = 'CONTA'
      Origin = '"PLANODECONTAS"."CONTA"'
    end
    object planodecontasDESC_CONTA: TIBStringField
      DisplayLabel = 'Nome Conta'
      FieldName = 'DESC_CONTA'
      Origin = '"PLANODECONTAS"."DESC_CONTA"'
    end
    object planodecontasANALITICA: TIBStringField
      DisplayLabel = 'Anal'#237'tica?'
      FieldName = 'ANALITICA'
      Origin = '"PLANODECONTAS"."ANALITICA"'
      Size = 1
    end
  end
  object Dplanodecontas: TDataSource
    DataSet = planodecontas
    Left = 536
    Top = 24
  end
  object Uplanodecontas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CONTA,'
      '  CONTA,'
      '  DESC_CONTA,'
      '  ANALITICA'
      'from PLANODECONTAS '
      'where'
      '  COD_CONTA = :COD_CONTA')
    ModifySQL.Strings = (
      'update PLANODECONTAS'
      'set'
      '  ANALITICA = :ANALITICA,'
      '  COD_CONTA = :COD_CONTA,'
      '  CONTA = :CONTA,'
      '  DESC_CONTA = :DESC_CONTA'
      'where'
      '  COD_CONTA = :OLD_COD_CONTA')
    InsertSQL.Strings = (
      'insert into PLANODECONTAS'
      '  (ANALITICA, COD_CONTA, CONTA, DESC_CONTA)'
      'values'
      '  (:ANALITICA, :COD_CONTA, :CONTA, :DESC_CONTA)')
    DeleteSQL.Strings = (
      'delete from PLANODECONTAS'
      'where'
      '  COD_CONTA = :OLD_COD_CONTA')
    Left = 376
    Top = 24
  end
  object historico: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from HISTORICO')
    UpdateObject = Uhistorico
    Left = 456
    Top = 104
    object historicoCOD_HIST: TIntegerField
      DisplayLabel = 'Codigo Historico'
      FieldName = 'COD_HIST'
      Origin = '"HISTORICO"."COD_HIST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object historicoHIST_NOME: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HIST_NOME'
      Origin = '"HISTORICO"."HIST_NOME"'
      Required = True
    end
  end
  object Dhistorico: TDataSource
    DataSet = historico
    Left = 536
    Top = 104
  end
  object Uhistorico: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_HIST,'
      '  HIST_NOME'
      'from HISTORICO '
      'where'
      '  COD_HIST = :COD_HIST')
    ModifySQL.Strings = (
      'update HISTORICO'
      'set'
      '  COD_HIST = :COD_HIST,'
      '  HIST_NOME = :HIST_NOME'
      'where'
      '  COD_HIST = :OLD_COD_HIST')
    InsertSQL.Strings = (
      'insert into HISTORICO'
      '  (COD_HIST, HIST_NOME)'
      'values'
      '  (:COD_HIST, :HIST_NOME)')
    DeleteSQL.Strings = (
      'delete from HISTORICO'
      'where'
      '  COD_HIST = :OLD_COD_HIST')
    Left = 376
    Top = 104
  end
end
