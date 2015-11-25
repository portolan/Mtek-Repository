object DM_contabil: TDM_contabil
  OldCreateOrder = False
  Height = 389
  Width = 679
  object empresa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = empresaAfterInsert
    BeforePost = empresaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from empresa')
    UpdateObject = Uempresa
    Left = 128
    Top = 24
    object empresaEMP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMP_COD'
      Origin = '"EMPRESA"."EMP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object empresaEMP_CNPJ: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'EMP_CNPJ'
      Origin = '"EMPRESA"."EMP_CNPJ"'
      EditMask = '99.999.999/9999-99;0'
      Size = 18
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
      DisplayLabel = 'N'#250'mero'
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
    object empresaEMP_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'EMP_CEP'
      Origin = '"EMPRESA"."EMP_CEP"'
      EditMask = '00000\-999;1;_'
      Size = 12
    end
    object empresaEMP_FONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'EMP_FONE'
      Origin = '"EMPRESA"."EMP_FONE"'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 14
    end
    object empresaEMP_TITULAR: TIBStringField
      DisplayLabel = 'Titular'
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
      'Select '
      'from empresa '
      'where'
      '  EMP_COD = :EMP_COD')
    ModifySQL.Strings = (
      'update empresa'
      'set'
      '  EMP_BAIRRO = :EMP_BAIRRO,'
      '  EMP_CEP = :EMP_CEP,'
      '  EMP_CIDADE = :EMP_CIDADE,'
      '  EMP_CNPJ = :EMP_CNPJ,'
      '  EMP_COD = :EMP_COD,'
      '  EMP_END_NUM = :EMP_END_NUM,'
      '  EMP_ENDERECO = :EMP_ENDERECO,'
      '  EMP_FONE = :EMP_FONE,'
      '  EMP_NOMEF = :EMP_NOMEF,'
      '  EMP_RAZAO = :EMP_RAZAO,'
      '  EMP_TITULAR = :EMP_TITULAR,'
      '  EMP_UF = :EMP_UF'
      'where'
      '  EMP_COD = :OLD_EMP_COD')
    InsertSQL.Strings = (
      'insert into empresa'
      
        '  (EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CNPJ, EMP_COD, EMP_END_N' +
        'UM, EMP_ENDERECO, '
      '   EMP_FONE, EMP_NOMEF, EMP_RAZAO, EMP_TITULAR, EMP_UF)'
      'values'
      
        '  (:EMP_BAIRRO, :EMP_CEP, :EMP_CIDADE, :EMP_CNPJ, :EMP_COD, :EMP' +
        '_END_NUM, '
      
        '   :EMP_ENDERECO, :EMP_FONE, :EMP_NOMEF, :EMP_RAZAO, :EMP_TITULA' +
        'R, :EMP_UF)')
    DeleteSQL.Strings = (
      'delete from empresa'
      'where'
      '  EMP_COD = :OLD_EMP_COD')
    Left = 48
    Top = 24
  end
  object centro: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = centroAfterInsert
    BeforePost = centroBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from centrodecusto'
      '')
    UpdateObject = Ucentro
    Left = 128
    Top = 104
    object centroCEC_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CEC_COD'
      Origin = '"CENTRODECUSTO"."CEC_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object centroCEC_COD_GRUPO: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CEC_COD_GRUPO'
      Origin = '"CENTRODECUSTO"."CEC_COD_GRUPO"'
    end
    object centroCEC_DESC_CC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CEC_DESC_CC'
      Origin = '"CENTRODECUSTO"."CEC_DESC_CC"'
      Size = 60
    end
    object centroCEC_NUM_CC: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CEC_NUM_CC'
      Origin = '"CENTRODECUSTO"."CEC_NUM_CC"'
      Required = True
      EditMask = '000\.000\.000;0;_'
      Size = 9
    end
    object centroCEC_ANALITICO: TIBStringField
      DisplayLabel = 'Anal'#237'tico?'
      FieldName = 'CEC_ANALITICO'
      Origin = '"CENTRODECUSTO"."CEC_ANALITICO"'
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
      '  CEC_COD = :CEC_COD')
    ModifySQL.Strings = (
      'update centrodecusto'
      'set'
      '  CEC_ANALITICO = :CEC_ANALITICO,'
      '  CEC_COD = :CEC_COD,'
      '  CEC_COD_GRUPO = :CEC_COD_GRUPO,'
      '  CEC_DESC_CC = :CEC_DESC_CC,'
      '  CEC_NUM_CC = :CEC_NUM_CC'
      'where'
      '  CEC_COD = :OLD_CEC_COD')
    InsertSQL.Strings = (
      'insert into centrodecusto'
      
        '  (CEC_ANALITICO, CEC_COD, CEC_COD_GRUPO, CEC_DESC_CC, CEC_NUM_C' +
        'C)'
      'values'
      
        '  (:CEC_ANALITICO, :CEC_COD, :CEC_COD_GRUPO, :CEC_DESC_CC, :CEC_' +
        'NUM_CC)')
    DeleteSQL.Strings = (
      'delete from centrodecusto'
      'where'
      '  CEC_COD = :OLD_CEC_COD')
    Left = 48
    Top = 104
  end
  object lancamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = lancamentoAfterInsert
    BeforePost = lancamentoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from lancamentos'
      '')
    UpdateObject = Ulancamento
    Left = 128
    Top = 184
    object lancamentoLANC_EMP: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'LANC_EMP'
      Origin = '"LANCAMENTOS"."LANC_EMP"'
      Required = True
    end
    object lancamentoLANC_NR_LOTE: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      FieldName = 'LANC_NR_LOTE'
      Origin = '"LANCAMENTOS"."LANC_NR_LOTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object lancamentoLANC_NR_LANCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Lan'#231'amento'
      FieldName = 'LANC_NR_LANCAMENTO'
      Origin = '"LANCAMENTOS"."LANC_NR_LANCAMENTO"'
    end
    object lancamentoLANC_DT_LANCAMENTO: TDateField
      DisplayLabel = 'Data Lan'#231
      FieldName = 'LANC_DT_LANCAMENTO'
      Origin = '"LANCAMENTOS"."LANC_DT_LANCAMENTO"'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/0000;1;_'
    end
    object lancamentoLANC_DEBITO: TIBStringField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'LANC_DEBITO'
      Origin = '"LANCAMENTOS"."LANC_DEBITO"'
      EditMask = '0000\.0000;0;_'
      Size = 8
    end
    object lancamentoLANC_CENTRODECUSTO_DB: TIBStringField
      DisplayLabel = 'C.C D'#233'bito'
      FieldName = 'LANC_CENTRODECUSTO_DB'
      Origin = '"LANCAMENTOS"."LANC_CENTRODECUSTO_DB"'
      EditMask = '000\.000\.000;0;_'
      Size = 9
    end
    object lancamentoLANC_CREDITO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'LANC_CREDITO'
      Origin = '"LANCAMENTOS"."LANC_CREDITO"'
      EditMask = '0000\.0000;0;_'
      Size = 8
    end
    object lancamentoLANC_CENTRODECUSTO_CR: TIBStringField
      DisplayLabel = 'C.C Cr'#233'dito'
      FieldName = 'LANC_CENTRODECUSTO_CR'
      Origin = '"LANCAMENTOS"."LANC_CENTRODECUSTO_CR"'
      EditMask = '000\.000\.000;0;_'
      Size = 9
    end
    object lancamentoLANC_HISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'LANC_HISTORICO'
      Origin = '"LANCAMENTOS"."LANC_HISTORICO"'
      Size = 100
    end
    object lancamentoLANC_VAR_HISTORICO: TIBStringField
      DisplayLabel = 'Vari'#225'vel Hist'#243'rico'
      FieldName = 'LANC_VAR_HISTORICO'
      Origin = '"LANCAMENTOS"."LANC_VAR_HISTORICO"'
      Size = 100
    end
    object lancamentoLANC_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'LANC_VALOR'
      Origin = '"LANCAMENTOS"."LANC_VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object lancamentoLANC_TIPO: TIBStringField
      DisplayLabel = 'Tipo de Lan'#231'amento'
      FieldName = 'LANC_TIPO'
      Origin = '"LANCAMENTOS"."LANC_TIPO"'
      Required = True
      Size = 1
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
      '  LANC_NR_LOTE = :LANC_NR_LOTE')
    ModifySQL.Strings = (
      'update lancamentos'
      'set'
      '  LANC_CENTRODECUSTO_CR = :LANC_CENTRODECUSTO_CR,'
      '  LANC_CENTRODECUSTO_DB = :LANC_CENTRODECUSTO_DB,'
      '  LANC_CREDITO = :LANC_CREDITO,'
      '  LANC_DEBITO = :LANC_DEBITO,'
      '  LANC_DT_LANCAMENTO = :LANC_DT_LANCAMENTO,'
      '  LANC_EMP = :LANC_EMP,'
      '  LANC_HISTORICO = :LANC_HISTORICO,'
      '  LANC_NR_LANCAMENTO = :LANC_NR_LANCAMENTO,'
      '  LANC_NR_LOTE = :LANC_NR_LOTE,'
      '  LANC_TIPO = :LANC_TIPO,'
      '  LANC_VALOR = :LANC_VALOR,'
      '  LANC_VAR_HISTORICO = :LANC_VAR_HISTORICO'
      'where'
      '  LANC_NR_LOTE = :OLD_LANC_NR_LOTE')
    InsertSQL.Strings = (
      'insert into lancamentos'
      
        '  (LANC_CENTRODECUSTO_CR, LANC_CENTRODECUSTO_DB, LANC_CREDITO, L' +
        'ANC_DEBITO, '
      
        '   LANC_DT_LANCAMENTO, LANC_EMP, LANC_HISTORICO, LANC_NR_LANCAME' +
        'NTO, LANC_NR_LOTE, '
      '   LANC_TIPO, LANC_VALOR, LANC_VAR_HISTORICO)'
      'values'
      
        '  (:LANC_CENTRODECUSTO_CR, :LANC_CENTRODECUSTO_DB, :LANC_CREDITO' +
        ', :LANC_DEBITO, '
      
        '   :LANC_DT_LANCAMENTO, :LANC_EMP, :LANC_HISTORICO, :LANC_NR_LAN' +
        'CAMENTO, '
      '   :LANC_NR_LOTE, :LANC_TIPO, :LANC_VALOR, :LANC_VAR_HISTORICO)')
    DeleteSQL.Strings = (
      'delete from lancamentos'
      'where'
      '  LANC_NR_LOTE = :OLD_LANC_NR_LOTE')
    Left = 48
    Top = 184
  end
  object departamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = departamentoAfterInsert
    BeforePost = departamentoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DEPARTAMENTO')
    UpdateObject = Udepartamento
    Left = 128
    Top = 264
    object departamentoDEP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DEP_COD'
      Origin = '"DEPARTAMENTO"."DEP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object departamentoDEP_EMPRESAR: TIntegerField
      DisplayLabel = 'Empresa Relacionada'
      FieldName = 'DEP_EMPRESAR'
      Origin = '"DEPARTAMENTO"."DEP_EMPRESAR"'
      Required = True
    end
    object departamentoDEP_NOME: TIBStringField
      DisplayLabel = 'Departamento'
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object departamentoDEP_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DEP_DESC'
      Origin = '"DEPARTAMENTO"."DEP_DESC"'
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
      '  DEP_COD,'
      '  DEP_EMPRESAR,'
      '  DEP_NOME,'
      '  DEP_DESC'
      'from DEPARTAMENTO '
      'where'
      '  DEP_COD = :DEP_COD')
    ModifySQL.Strings = (
      'update DEPARTAMENTO'
      'set'
      '  DEP_COD = :DEP_COD,'
      '  DEP_DESC = :DEP_DESC,'
      '  DEP_EMPRESAR = :DEP_EMPRESAR,'
      '  DEP_NOME = :DEP_NOME'
      'where'
      '  DEP_COD = :OLD_DEP_COD')
    InsertSQL.Strings = (
      'insert into DEPARTAMENTO'
      '  (DEP_COD, DEP_DESC, DEP_EMPRESAR, DEP_NOME)'
      'values'
      '  (:DEP_COD, :DEP_DESC, :DEP_EMPRESAR, :DEP_NOME)')
    DeleteSQL.Strings = (
      'delete from DEPARTAMENTO'
      'where'
      '  DEP_COD = :OLD_DEP_COD')
    Left = 48
    Top = 264
  end
  object planodecontas: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = planodecontasAfterInsert
    BeforePost = planodecontasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PLANODECONTAS')
    UpdateObject = Uplanodecontas
    Left = 456
    Top = 24
    object planodecontasPLN_COD_CONTA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLN_COD_CONTA'
      Origin = '"PLANODECONTAS"."PLN_COD_CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object planodecontasPLN_CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'PLN_CONTA'
      Origin = '"PLANODECONTAS"."PLN_CONTA"'
      Required = True
      EditMask = '0000\.0000;0;_'
      Size = 8
    end
    object planodecontasPLN_DESC_CONTA: TIBStringField
      DisplayLabel = 'Nome da Conta'
      FieldName = 'PLN_DESC_CONTA'
      Origin = '"PLANODECONTAS"."PLN_DESC_CONTA"'
    end
    object planodecontasPLN_ANALITICA: TIBStringField
      DisplayLabel = 'Analitica'
      FieldName = 'PLN_ANALITICA'
      Origin = '"PLANODECONTAS"."PLN_ANALITICA"'
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
      '  PLN_COD_CONTA,'
      '  PLN_CONTA,'
      '  PLN_DESC_CONTA,'
      '  PLN_ANALITICA'
      'from PLANODECONTAS '
      'where'
      '  PLN_COD_CONTA = :PLN_COD_CONTA')
    ModifySQL.Strings = (
      'update PLANODECONTAS'
      'set'
      '  PLN_ANALITICA = :PLN_ANALITICA,'
      '  PLN_COD_CONTA = :PLN_COD_CONTA,'
      '  PLN_CONTA = :PLN_CONTA,'
      '  PLN_DESC_CONTA = :PLN_DESC_CONTA'
      'where'
      '  PLN_COD_CONTA = :OLD_PLN_COD_CONTA')
    InsertSQL.Strings = (
      'insert into PLANODECONTAS'
      '  (PLN_ANALITICA, PLN_COD_CONTA, PLN_CONTA, PLN_DESC_CONTA)'
      'values'
      '  (:PLN_ANALITICA, :PLN_COD_CONTA, :PLN_CONTA, :PLN_DESC_CONTA)')
    DeleteSQL.Strings = (
      'delete from PLANODECONTAS'
      'where'
      '  PLN_COD_CONTA = :OLD_PLN_COD_CONTA')
    Left = 376
    Top = 24
  end
  object historico: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = historicoAfterInsert
    BeforePost = historicoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from HISTORICO')
    UpdateObject = Uhistorico
    Left = 456
    Top = 104
    object historicoHIST_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'HIST_COD'
      Origin = '"HISTORICO"."HIST_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object historicoHIST_NOME: TIBStringField
      DisplayLabel = 'Nome'
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
      '  HIST_COD,'
      '  HIST_NOME'
      'from HISTORICO '
      'where'
      '  HIST_COD = :HIST_COD')
    ModifySQL.Strings = (
      'update HISTORICO'
      'set'
      '  HIST_COD = :HIST_COD,'
      '  HIST_NOME = :HIST_NOME'
      'where'
      '  HIST_COD = :OLD_HIST_COD')
    InsertSQL.Strings = (
      'insert into HISTORICO'
      '  (HIST_COD, HIST_NOME)'
      'values'
      '  (:HIST_COD, :HIST_NOME)')
    DeleteSQL.Strings = (
      'delete from HISTORICO'
      'where'
      '  HIST_COD = :OLD_HIST_COD')
    Left = 376
    Top = 104
  end
end
