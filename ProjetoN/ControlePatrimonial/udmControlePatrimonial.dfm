object DMControlePatrimonial: TDMControlePatrimonial
  OldCreateOrder = False
  Height = 206
  Width = 571
  object Localizacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = LocalizacaoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM LOCALIZACAO A'
      ' WHERE A.LOC_CODIGO = -1   ')
    UpdateObject = ULocalizacao
    Left = 40
    Top = 24
    object LocalizacaoLOC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LOC_CODIGO'
      Origin = '"LOCALIZACAO"."LOC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LocalizacaoLOC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LOC_DESCRICAO'
      Origin = '"LOCALIZACAO"."LOC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object LocalizacaoLOC_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'LOC_STATUS'
      Origin = '"LOCALIZACAO"."LOC_STATUS"'
      Size = 1
    end
  end
  object DLocalizacao: TDataSource
    DataSet = Localizacao
    Left = 40
    Top = 120
  end
  object ULocalizacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LOC_CODIGO,'
      '  LOC_DESCRICAO,'
      '  LOC_STATUS'
      'from LOCALIZACAO '
      'where'
      '  LOC_CODIGO = :LOC_CODIGO')
    ModifySQL.Strings = (
      'update LOCALIZACAO'
      'set'
      '  LOC_CODIGO = :LOC_CODIGO,'
      '  LOC_DESCRICAO = :LOC_DESCRICAO,'
      '  LOC_STATUS = :LOC_STATUS'
      'where'
      '  LOC_CODIGO = :OLD_LOC_CODIGO')
    InsertSQL.Strings = (
      'insert into LOCALIZACAO'
      '  (LOC_CODIGO, LOC_DESCRICAO, LOC_STATUS)'
      'values'
      '  (:LOC_CODIGO, :LOC_DESCRICAO, :LOC_STATUS)')
    DeleteSQL.Strings = (
      'delete from LOCALIZACAO'
      'where'
      '  LOC_CODIGO = :OLD_LOC_CODIGO')
    Left = 40
    Top = 72
  end
  object EstadoConservacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = EstadoConservacaoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM ESTADO_DE_CONSERVACAO A'
      ' WHERE A.EDC_CODIGO = -1   ')
    UpdateObject = UEstadoCOnservacao
    Left = 136
    Top = 24
    object EstadoConservacaoEDC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EDC_CODIGO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EstadoConservacaoEDC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EDC_DESCRICAO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object EstadoConservacaoEDC_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'EDC_STATUS'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_STATUS"'
      Size = 1
    end
  end
  object UEstadoCOnservacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EDC_CODIGO,'
      '  EDC_DESCRICAO,'
      '  EDC_STATUS'
      'from ESTADO_DE_CONSERVACAO '
      'where'
      '  EDC_CODIGO = :EDC_CODIGO')
    ModifySQL.Strings = (
      'update ESTADO_DE_CONSERVACAO'
      'set'
      '  EDC_CODIGO = :EDC_CODIGO,'
      '  EDC_DESCRICAO = :EDC_DESCRICAO,'
      '  EDC_STATUS = :EDC_STATUS'
      'where'
      '  EDC_CODIGO = :OLD_EDC_CODIGO')
    InsertSQL.Strings = (
      'insert into ESTADO_DE_CONSERVACAO'
      '  (EDC_CODIGO, EDC_DESCRICAO, EDC_STATUS)'
      'values'
      '  (:EDC_CODIGO, :EDC_DESCRICAO, :EDC_STATUS)')
    DeleteSQL.Strings = (
      'delete from ESTADO_DE_CONSERVACAO'
      'where'
      '  EDC_CODIGO = :OLD_EDC_CODIGO')
    Left = 136
    Top = 72
  end
  object DEstadoCOnservacao: TDataSource
    DataSet = EstadoConservacao
    Left = 136
    Top = 120
  end
  object TipoBens: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = TipoBensAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM TIPO_DE_BENS A'
      ' WHERE A.TPB_CODIGO = -1   ')
    UpdateObject = UTipoBens
    Left = 232
    Top = 24
    object TipoBensTPB_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPB_CODIGO'
      Origin = '"TIPO_DE_BENS"."TPB_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TipoBensTPB_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPB_DESCRICAO'
      Origin = '"TIPO_DE_BENS"."TPB_DESCRICAO"'
      Required = True
      Size = 100
    end
    object TipoBensTPB_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'TPB_STATUS'
      Origin = '"TIPO_DE_BENS"."TPB_STATUS"'
      Size = 1
    end
  end
  object UTipoBens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TPB_CODIGO,'
      '  TPB_DESCRICAO,'
      '  TPB_STATUS'
      'from TIPO_DE_BENS '
      'where'
      '  TPB_CODIGO = :TPB_CODIGO')
    ModifySQL.Strings = (
      'update TIPO_DE_BENS'
      'set'
      '  TPB_CODIGO = :TPB_CODIGO,'
      '  TPB_DESCRICAO = :TPB_DESCRICAO,'
      '  TPB_STATUS = :TPB_STATUS'
      'where'
      '  TPB_CODIGO = :OLD_TPB_CODIGO')
    InsertSQL.Strings = (
      'insert into TIPO_DE_BENS'
      '  (TPB_CODIGO, TPB_DESCRICAO, TPB_STATUS)'
      'values'
      '  (:TPB_CODIGO, :TPB_DESCRICAO, :TPB_STATUS)')
    DeleteSQL.Strings = (
      'delete from TIPO_DE_BENS'
      'where'
      '  TPB_CODIGO = :OLD_TPB_CODIGO')
    Left = 232
    Top = 72
  end
  object DTipoBens: TDataSource
    DataSet = TipoBens
    Left = 232
    Top = 120
  end
  object Componente: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = ComponenteAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM COMPONENTE A'
      ' WHERE A.COM_EMPRESA = -1 AND'
      '       A.COM_MANUTENCAO = -1 AND'
      '       A.COM_CODIGO = -1')
    UpdateObject = UComponente
    Left = 296
    Top = 24
    object ComponenteCOM_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'COM_EMPRESA'
      Origin = '"COMPONENTE"."COM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ComponenteCOM_MANUTENCAO: TIntegerField
      DisplayLabel = 'Manuten'#231#227'o'
      FieldName = 'COM_MANUTENCAO'
      Origin = '"COMPONENTE"."COM_MANUTENCAO"'
      Required = True
    end
    object ComponenteCOM_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COM_CODIGO'
      Origin = '"COMPONENTE"."COM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object ComponenteCOM_OBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'COM_OBSERVACAO'
      Origin = '"COMPONENTE"."COM_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ComponenteCOM_VLR_COMPONENTE: TFloatField
      FieldName = 'COM_VLR_COMPONENTE'
      Origin = '"COMPONENTE"."COM_VLR_COMPONENTE"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
    end
    object ComponenteCOM_QTD: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'COM_QTD'
      Origin = '"COMPONENTE"."COM_QTD"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ComponenteCOM_VLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr_Total'
      FieldName = 'COM_VLR_TOTAL'
      Origin = '"COMPONENTE"."COM_VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ComponenteCOM_MOV_ESTOQUE: TIntegerField
      DisplayLabel = 'MovimentoSaida'
      FieldName = 'COM_MOV_ESTOQUE'
      Origin = '"COMPONENTE"."COM_MOV_ESTOQUE"'
    end
  end
  object UComponente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COM_EMPRESA,'
      '  COM_MANUTENCAO,'
      '  COM_CODIGO,'
      '  COM_OBSERVACAO,'
      '  COM_VLR_COMPONENTE,'
      '  COM_QTD,'
      '  COM_VLR_TOTAL,'
      '  COM_MOV_ESTOQUE'
      'from COMPONENTE '
      'where'
      '  COM_CODIGO = :COM_CODIGO and'
      '  COM_EMPRESA = :COM_EMPRESA')
    ModifySQL.Strings = (
      'update COMPONENTE'
      'set'
      '  COM_CODIGO = :COM_CODIGO,'
      '  COM_EMPRESA = :COM_EMPRESA,'
      '  COM_MANUTENCAO = :COM_MANUTENCAO,'
      '  COM_MOV_ESTOQUE = :COM_MOV_ESTOQUE,'
      '  COM_OBSERVACAO = :COM_OBSERVACAO,'
      '  COM_QTD = :COM_QTD,'
      '  COM_VLR_COMPONENTE = :COM_VLR_COMPONENTE,'
      '  COM_VLR_TOTAL = :COM_VLR_TOTAL'
      'where'
      '  COM_CODIGO = :OLD_COM_CODIGO and'
      '  COM_EMPRESA = :OLD_COM_EMPRESA')
    InsertSQL.Strings = (
      'insert into COMPONENTE'
      
        '  (COM_CODIGO, COM_EMPRESA, COM_MANUTENCAO, COM_MOV_ESTOQUE, COM' +
        '_OBSERVACAO, '
      '   COM_QTD, COM_VLR_COMPONENTE, COM_VLR_TOTAL)'
      'values'
      
        '  (:COM_CODIGO, :COM_EMPRESA, :COM_MANUTENCAO, :COM_MOV_ESTOQUE,' +
        ' :COM_OBSERVACAO, '
      '   :COM_QTD, :COM_VLR_COMPONENTE, :COM_VLR_TOTAL)')
    DeleteSQL.Strings = (
      'delete from COMPONENTE'
      'where'
      '  COM_CODIGO = :OLD_COM_CODIGO and'
      '  COM_EMPRESA = :OLD_COM_EMPRESA')
    Left = 296
    Top = 72
  end
  object DComponente: TDataSource
    DataSet = Componente
    Left = 296
    Top = 120
  end
  object Manutencao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = ManutencaoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM MANUTENCAO A'
      ' WHERE A.MAN_EMPRESA = -1 AND'
      '       A.MAN_CODIGO = -1'
      ''
      '   '
      '   ')
    UpdateObject = UManutencao
    Left = 376
    Top = 24
    object ManutencaoMAN_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'MAN_EMPRESA'
      Origin = '"MANUTENCAO"."MAN_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ManutencaoMAN_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MAN_CODIGO'
      Origin = '"MANUTENCAO"."MAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ManutencaoMAN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MAN_DESCRICAO'
      Origin = '"MANUTENCAO"."MAN_DESCRICAO"'
      Required = True
      Size = 100
    end
    object ManutencaoMAN_OBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'MAN_OBSERVACAO'
      Origin = '"MANUTENCAO"."MAN_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ManutencaoMAN_VLR_COMPONENTE: TIBBCDField
      DisplayLabel = 'Valor Componente'
      FieldName = 'MAN_VLR_COMPONENTE'
      Origin = '"MANUTENCAO"."MAN_VLR_COMPONENTE"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ManutencaoMAN_VLR_MANUTENCAO: TIBBCDField
      DisplayLabel = 'Valor Manuten'#231#227'o'
      FieldName = 'MAN_VLR_MANUTENCAO'
      Origin = '"MANUTENCAO"."MAN_VLR_MANUTENCAO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ManutencaoMAN_VLR_TOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'MAN_VLR_TOTAL'
      Origin = '"MANUTENCAO"."MAN_VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ManutencaoMAN_AGREGA_CUSTO: TIBStringField
      DisplayLabel = 'Agrega Custo'
      FieldName = 'MAN_AGREGA_CUSTO'
      Origin = '"MANUTENCAO"."MAN_AGREGA_CUSTO"'
      Size = 1
    end
    object ManutencaoMAN_NUM_SERIE: TIntegerField
      DisplayLabel = 'Numero de Serie'
      FieldName = 'MAN_NUM_SERIE'
      Origin = '"MANUTENCAO"."MAN_NUM_SERIE"'
      Required = True
    end
    object ManutencaoMAN_BEN: TIBStringField
      DisplayLabel = 'Ben'
      FieldName = 'MAN_BEN'
      Origin = '"MANUTENCAO"."MAN_BEN"'
      Required = True
      Size = 30
    end
  end
  object UManutencao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MAN_EMPRESA,'
      '  MAN_CODIGO,'
      '  MAN_BEN,'
      '  MAN_DESCRICAO,'
      '  MAN_OBSERVACAO,'
      '  MAN_VLR_COMPONENTE,'
      '  MAN_VLR_MANUTENCAO,'
      '  MAN_VLR_TOTAL,'
      '  MAN_AGREGA_CUSTO,'
      '  MAN_NUM_SERIE'
      'from MANUTENCAO '
      'where'
      '  MAN_CODIGO = :MAN_CODIGO and'
      '  MAN_EMPRESA = :MAN_EMPRESA')
    ModifySQL.Strings = (
      'update MANUTENCAO'
      'set'
      '  MAN_AGREGA_CUSTO = :MAN_AGREGA_CUSTO,'
      '  MAN_BEN = :MAN_BEN,'
      '  MAN_CODIGO = :MAN_CODIGO,'
      '  MAN_DESCRICAO = :MAN_DESCRICAO,'
      '  MAN_EMPRESA = :MAN_EMPRESA,'
      '  MAN_NUM_SERIE = :MAN_NUM_SERIE,'
      '  MAN_OBSERVACAO = :MAN_OBSERVACAO,'
      '  MAN_VLR_COMPONENTE = :MAN_VLR_COMPONENTE,'
      '  MAN_VLR_MANUTENCAO = :MAN_VLR_MANUTENCAO,'
      '  MAN_VLR_TOTAL = :MAN_VLR_TOTAL'
      'where'
      '  MAN_CODIGO = :OLD_MAN_CODIGO and'
      '  MAN_EMPRESA = :OLD_MAN_EMPRESA')
    InsertSQL.Strings = (
      'insert into MANUTENCAO'
      
        '  (MAN_AGREGA_CUSTO, MAN_BEN, MAN_CODIGO, MAN_DESCRICAO, MAN_EMP' +
        'RESA, MAN_NUM_SERIE, '
      
        '   MAN_OBSERVACAO, MAN_VLR_COMPONENTE, MAN_VLR_MANUTENCAO, MAN_V' +
        'LR_TOTAL)'
      'values'
      
        '  (:MAN_AGREGA_CUSTO, :MAN_BEN, :MAN_CODIGO, :MAN_DESCRICAO, :MA' +
        'N_EMPRESA, '
      
        '   :MAN_NUM_SERIE, :MAN_OBSERVACAO, :MAN_VLR_COMPONENTE, :MAN_VL' +
        'R_MANUTENCAO, '
      '   :MAN_VLR_TOTAL)')
    DeleteSQL.Strings = (
      'delete from MANUTENCAO'
      'where'
      '  MAN_CODIGO = :OLD_MAN_CODIGO and'
      '  MAN_EMPRESA = :OLD_MAN_EMPRESA')
    Left = 376
    Top = 72
  end
  object DManutencao: TDataSource
    DataSet = Manutencao
    Left = 376
    Top = 120
  end
  object BenImobilizado: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = BenImobilizadoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT*'
      '  FROM BENS_IMOBILIZADOS A'
      ' WHERE A.BNI_EMPRESA = -1 AND'
      '       A.BNI_CODIGO = -1 AND'
      '       A.BNI_NUM_SERIE = -1 ')
    UpdateObject = UBenImobilizado
    Left = 456
    Top = 24
    object BenImobilizadoBNI_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'BNI_EMPRESA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BenImobilizadoBNI_NUM_SERIE: TIntegerField
      DisplayLabel = 'Numero de Serie'
      FieldName = 'BNI_NUM_SERIE'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NUM_SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BenImobilizadoBNI_NR_NOTA: TIntegerField
      DisplayLabel = 'Nr. Nota Entrada'
      FieldName = 'BNI_NR_NOTA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NR_NOTA"'
      Required = True
    end
    object BenImobilizadoBNI_FORNECEDOR: TIntegerField
      DisplayLabel = 'Cod. Forn.'
      FieldName = 'BNI_FORNECEDOR'
      Origin = '"BENS_IMOBILIZADOS"."BNI_FORNECEDOR"'
      Required = True
    end
    object BenImobilizadoBNI_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BNI_DESCRICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DESCRICAO"'
      Required = True
      Size = 100
    end
    object BenImobilizadoBNI_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'BNI_TIPO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TIPO"'
      Required = True
    end
    object BenImobilizadoBNI_LOCALIZACAO: TIntegerField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'BNI_LOCALIZACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_LOCALIZACAO"'
      Required = True
    end
    object BenImobilizadoBNI_ESTADO_CONSERVACAO: TIntegerField
      DisplayLabel = 'Estado de Conserva'#231#227'o'
      FieldName = 'BNI_ESTADO_CONSERVACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_ESTADO_CONSERVACAO"'
      Required = True
    end
    object BenImobilizadoBNI_DATA_AQUISICAO: TDateField
      DisplayLabel = 'Data de Aquisi'#231#227'o'
      FieldName = 'BNI_DATA_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DATA_AQUISICAO"'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object BenImobilizadoBNI_VLR_AQUISICAO: TIBBCDField
      DisplayLabel = 'Valor de Aquisi'#231#227'o'
      FieldName = 'BNI_VLR_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AQUISICAO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object BenImobilizadoBNI_VLR_AGREGADO: TIBBCDField
      DisplayLabel = 'Valor Agregado'
      FieldName = 'BNI_VLR_AGREGADO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AGREGADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object BenImobilizadoBNI_VLR_ATUAL: TIBBCDField
      DisplayLabel = 'Valor Atual'
      FieldName = 'BNI_VLR_ATUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_ATUAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object BenImobilizadoBNI_VLR_RESIDUAL: TIBBCDField
      DisplayLabel = 'Valor Residual'
      FieldName = 'BNI_VLR_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_RESIDUAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object BenImobilizadoBNI_DEPRECIACAO: TIBBCDField
      DisplayLabel = 'Perc. Deprecia'#231#227'o'
      FieldName = 'BNI_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DEPRECIACAO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object BenImobilizadoBNI_OBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'BNI_OBSERVACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BenImobilizadoBNI_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'BNI_STATUS'
      Origin = '"BENS_IMOBILIZADOS"."BNI_STATUS"'
      Size = 1
    end
    object BenImobilizadoBNI_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object BenImobilizadoBNI_TEMPO_DEPRECIACAO: TIntegerField
      DisplayLabel = 'TempoDepreciacao'
      FieldName = 'BNI_TEMPO_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_DEPRECIACAO"'
    end
    object BenImobilizadoBNI_TEMPO_RESIDUAL: TIntegerField
      DisplayLabel = 'TempoResidual'
      FieldName = 'BNI_TEMPO_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_RESIDUAL"'
    end
  end
  object UBenImobilizado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BNI_EMPRESA,'
      '  BNI_NUM_SERIE,'
      '  BNI_NR_NOTA,'
      '  BNI_FORNECEDOR,'
      '  BNI_DESCRICAO,'
      '  BNI_TIPO,'
      '  BNI_LOCALIZACAO,'
      '  BNI_ESTADO_CONSERVACAO,'
      '  BNI_DATA_AQUISICAO,'
      '  BNI_VLR_AQUISICAO,'
      '  BNI_VLR_RESIDUAL,'
      '  BNI_VLR_AGREGADO,'
      '  BNI_VLR_ATUAL,'
      '  BNI_DEPRECIACAO,'
      '  BNI_OBSERVACAO,'
      '  BNI_STATUS,'
      '  BNI_CODIGO,'
      '  BNI_TEMPO_DEPRECIACAO,'
      '  BNI_TEMPO_RESIDUAL'
      'from BENS_IMOBILIZADOS '
      'where'
      '  BNI_CODIGO = :BNI_CODIGO and'
      '  BNI_EMPRESA = :BNI_EMPRESA and'
      '  BNI_NUM_SERIE = :BNI_NUM_SERIE')
    ModifySQL.Strings = (
      'update BENS_IMOBILIZADOS'
      'set'
      '  BNI_CODIGO = :BNI_CODIGO,'
      '  BNI_DATA_AQUISICAO = :BNI_DATA_AQUISICAO,'
      '  BNI_DEPRECIACAO = :BNI_DEPRECIACAO,'
      '  BNI_DESCRICAO = :BNI_DESCRICAO,'
      '  BNI_EMPRESA = :BNI_EMPRESA,'
      '  BNI_ESTADO_CONSERVACAO = :BNI_ESTADO_CONSERVACAO,'
      '  BNI_FORNECEDOR = :BNI_FORNECEDOR,'
      '  BNI_LOCALIZACAO = :BNI_LOCALIZACAO,'
      '  BNI_NR_NOTA = :BNI_NR_NOTA,'
      '  BNI_NUM_SERIE = :BNI_NUM_SERIE,'
      '  BNI_OBSERVACAO = :BNI_OBSERVACAO,'
      '  BNI_STATUS = :BNI_STATUS,'
      '  BNI_TEMPO_DEPRECIACAO = :BNI_TEMPO_DEPRECIACAO,'
      '  BNI_TEMPO_RESIDUAL = :BNI_TEMPO_RESIDUAL,'
      '  BNI_TIPO = :BNI_TIPO,'
      '  BNI_VLR_AGREGADO = :BNI_VLR_AGREGADO,'
      '  BNI_VLR_AQUISICAO = :BNI_VLR_AQUISICAO,'
      '  BNI_VLR_ATUAL = :BNI_VLR_ATUAL,'
      '  BNI_VLR_RESIDUAL = :BNI_VLR_RESIDUAL'
      'where'
      '  BNI_CODIGO = :OLD_BNI_CODIGO and'
      '  BNI_EMPRESA = :OLD_BNI_EMPRESA and'
      '  BNI_NUM_SERIE = :OLD_BNI_NUM_SERIE')
    InsertSQL.Strings = (
      'insert into BENS_IMOBILIZADOS'
      
        '  (BNI_CODIGO, BNI_DATA_AQUISICAO, BNI_DEPRECIACAO, BNI_DESCRICA' +
        'O, BNI_EMPRESA, '
      
        '   BNI_ESTADO_CONSERVACAO, BNI_FORNECEDOR, BNI_LOCALIZACAO, BNI_' +
        'NR_NOTA, '
      
        '   BNI_NUM_SERIE, BNI_OBSERVACAO, BNI_STATUS, BNI_TEMPO_DEPRECIA' +
        'CAO, BNI_TEMPO_RESIDUAL, '
      
        '   BNI_TIPO, BNI_VLR_AGREGADO, BNI_VLR_AQUISICAO, BNI_VLR_ATUAL,' +
        ' BNI_VLR_RESIDUAL)'
      'values'
      
        '  (:BNI_CODIGO, :BNI_DATA_AQUISICAO, :BNI_DEPRECIACAO, :BNI_DESC' +
        'RICAO, '
      
        '   :BNI_EMPRESA, :BNI_ESTADO_CONSERVACAO, :BNI_FORNECEDOR, :BNI_' +
        'LOCALIZACAO, '
      
        '   :BNI_NR_NOTA, :BNI_NUM_SERIE, :BNI_OBSERVACAO, :BNI_STATUS, :' +
        'BNI_TEMPO_DEPRECIACAO, '
      
        '   :BNI_TEMPO_RESIDUAL, :BNI_TIPO, :BNI_VLR_AGREGADO, :BNI_VLR_A' +
        'QUISICAO, '
      '   :BNI_VLR_ATUAL, :BNI_VLR_RESIDUAL)')
    DeleteSQL.Strings = (
      'delete from BENS_IMOBILIZADOS'
      'where'
      '  BNI_CODIGO = :OLD_BNI_CODIGO and'
      '  BNI_EMPRESA = :OLD_BNI_EMPRESA and'
      '  BNI_NUM_SERIE = :OLD_BNI_NUM_SERIE')
    Left = 456
    Top = 72
  end
  object DBenImobilizado: TDataSource
    DataSet = BenImobilizado
    Left = 456
    Top = 120
  end
end
