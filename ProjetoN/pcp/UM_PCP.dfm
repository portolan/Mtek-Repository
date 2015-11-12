inherited M_OP: TM_OP
  Left = 537
  Top = 329
  Caption = 'Ordem de Producao'
  ClientHeight = 371
  ClientWidth = 792
  ExplicitWidth = 808
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 327
    Width = 792
    Height = 44
    ExplicitTop = 327
    ExplicitWidth = 792
    ExplicitHeight = 44
    inherited sbGravar: TSpeedButton
      Height = 42
      ExplicitHeight = 57
    end
    inherited sbCancelar: TSpeedButton
      Left = 689
      Width = 102
      Height = 42
      Transparent = False
      ExplicitLeft = 689
      ExplicitTop = 0
      ExplicitWidth = 102
      ExplicitHeight = 57
    end
  end
  inherited gbInfos: TGroupBox
    Width = 792
    Height = 327
    ExplicitWidth = 792
    ExplicitHeight = 327
    object Label9: TLabel
      Left = 11
      Top = 24
      Width = 83
      Height = 13
      Caption = 'C'#243'digo da Ordem'
      FocusControl = DBEdit11
    end
    object Label15: TLabel
      Left = 151
      Top = 24
      Width = 81
      Height = 13
      Caption = 'C'#243'digo da Venda'
      FocusControl = DBEdit10
    end
    object Label14: TLabel
      Left = 299
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit1
    end
    object Label12: TLabel
      Left = 151
      Top = 80
      Width = 76
      Height = 13
      Caption = 'C'#243'digo da Ficha'
      FocusControl = DBEdit8
    end
    object Label17: TLabel
      Left = 11
      Top = 77
      Width = 70
      Height = 13
      Caption = 'Tipo da Ordem'
      FocusControl = DBEdit12
    end
    object Label18: TLabel
      Left = 11
      Top = 123
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
      FocusControl = DBEdit13
    end
    object Label11: TLabel
      Left = 151
      Top = 123
      Width = 121
      Height = 13
      Caption = 'Data Prevista de Entrega'
    end
    object Label13: TLabel
      Left = 278
      Top = 77
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit9
    end
    object DBEdit11: TDBEdit
      Left = 11
      Top = 43
      Width = 134
      Height = 21
      DataField = 'OP_COD'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 151
      Top = 43
      Width = 134
      Height = 21
      DataField = 'OP_VENDAS'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 299
      Top = 43
      Width = 134
      Height = 21
      DataField = 'OP_EMPRESA'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 151
      Top = 96
      Width = 110
      Height = 21
      DataField = 'OP_FICHATECNICA'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 3
    end
    object DBEdit12: TDBEdit
      Left = 11
      Top = 96
      Width = 118
      Height = 21
      DataField = 'OP_TIPO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 11
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_DT_PEDIDO'
      DataSource = DM_PCP.DS_OrdemProducao
      ReadOnly = True
      TabOrder = 5
      OnEnter = FormCreate
    end
    object DateTimePicker3: TDateTimePicker
      Left = 151
      Top = 139
      Width = 134
      Height = 21
      Date = 42319.673866481480000000
      Time = 42319.673866481480000000
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 278
      Top = 96
      Width = 134
      Height = 21
      DataField = 'OP_QTD'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 11
      Top = 172
      Width = 726
      Height = 116
      DataField = 'OP_DESCRICAO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 8
    end
  end
  object qLiberacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsproducao
    ParamCheck = True
    SQL.Strings = (
      'select * from ordem_producao where op_status = '#39'A'#39)
    Left = 755
    Top = 272
    object qLiberacaoOP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qLiberacaoOP_VENDAS: TIntegerField
      DisplayLabel = 'C'#243'digo da Venda'
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object qLiberacaoOP_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLiberacaoOP_FICHATECNICA: TIBStringField
      DisplayLabel = 'Ficha T'#233'cnica'
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
      Size = 30
    end
    object qLiberacaoOP_DESCRICAO: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object qLiberacaoOP_TIPO: TIBStringField
      DisplayLabel = 'Tipo da Ordem'
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object qLiberacaoOP_QTD: TIntegerField
      DisplayLabel = 'Quantidade da Ordem'
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object qLiberacaoOP_DT_PEDIDO: TDateField
      DisplayLabel = 'Data do pedido'
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object qLiberacaoOP_DT_ENTREGA: TDateField
      DisplayLabel = 'Data da entrega'
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object qLiberacaoOP_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
  end
  object dsLiberacao: TDataSource
    DataSet = qLiberacao
    Left = 627
    Top = 272
  end
  object uLiberacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from ordem_producao '
      'where'
      '  OP_COD = :OP_COD and'
      '  OP_EMPRESA = :OP_EMPRESA')
    ModifySQL.Strings = (
      'update ordem_producao'
      'set'
      '  OP_COD = :OP_COD,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_EMPRESA = :OP_EMPRESA,'
      '  OP_FICHATECNICA = :OP_FICHATECNICA,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO,'
      '  OP_VENDAS = :OP_VENDAS'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    InsertSQL.Strings = (
      'insert into ordem_producao'
      
        '  (OP_COD, OP_DESCRICAO, OP_DT_ENTREGA, OP_DT_PEDIDO, OP_EMPRESA' +
        ', OP_FICHATECNICA, '
      '   OP_QTD, OP_STATUS, OP_TIPO, OP_VENDAS)'
      'values'
      
        '  (:OP_COD, :OP_DESCRICAO, :OP_DT_ENTREGA, :OP_DT_PEDIDO, :OP_EM' +
        'PRESA, '
      '   :OP_FICHATECNICA, :OP_QTD, :OP_STATUS, :OP_TIPO, :OP_VENDAS)')
    DeleteSQL.Strings = (
      'delete from ordem_producao'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    Left = 691
    Top = 272
  end
  object qproducao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ordem_producao where op_status = '#39'E'#39)
    UpdateObject = uproducao
    Left = 755
    Top = 224
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo da Venda'
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      DisplayLabel = 'Ficha T'#233'cnica'
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
      Size = 30
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object IBStringField3: TIBStringField
      DisplayLabel = 'Tipo da Ordem'
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object DateField1: TDateField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Prevista de entrega'
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object IBStringField4: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object IntegerField4: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
      Required = True
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object uproducao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordem_producao '
      'where'
      '  OP_COD = :OP_COD and'
      '  OP_EMPRESA = :OP_EMPRESA')
    ModifySQL.Strings = (
      'update ordem_producao'
      'set'
      '  OP_COD = :OP_COD,'
      '  OP_COMPRAS = :OP_COMPRAS,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_EMPRESA = :OP_EMPRESA,'
      '  OP_FICHATECNICA = :OP_FICHATECNICA,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO,'
      '  OP_VENDAS = :OP_VENDAS'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    InsertSQL.Strings = (
      'insert into ordem_producao'
      
        '  (OP_COD, OP_COMPRAS, OP_DESCRICAO, OP_DT_ENTREGA, OP_DT_PEDIDO' +
        ', OP_EMPRESA, '
      '   OP_FICHATECNICA, OP_QTD, OP_STATUS, OP_TIPO, OP_VENDAS)'
      'values'
      
        '  (:OP_COD, :OP_COMPRAS, :OP_DESCRICAO, :OP_DT_ENTREGA, :OP_DT_P' +
        'EDIDO, '
      
        '   :OP_EMPRESA, :OP_FICHATECNICA, :OP_QTD, :OP_STATUS, :OP_TIPO,' +
        ' :OP_VENDAS)')
    DeleteSQL.Strings = (
      'delete from ordem_producao'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    Left = 691
    Top = 224
  end
  object dsproducao: TDataSource
    DataSet = qproducao
    Left = 627
    Top = 224
  end
  object qcancelada: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ordem_producao where op_status = '#39'C'#39)
    UpdateObject = uLiberacao
    Left = 755
    Top = 176
    object IntegerField10: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'C'#243'digo da Venda'
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField5: TIBStringField
      DisplayLabel = 'Ficha t'#233'cnica'
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
      Size = 30
    end
    object IBStringField6: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object IBStringField7: TIBStringField
      DisplayLabel = 'Tipo da Ordem'
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object DateField3: TDateField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Prevista de entrega'
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object IBStringField8: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object IntegerField9: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
      Required = True
    end
  end
  object ucancelada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordem_producao '
      'where'
      '  OP_COD = :OP_COD and'
      '  OP_EMPRESA = :OP_EMPRESA')
    ModifySQL.Strings = (
      'update ordem_producao'
      'set'
      '  OP_COD = :OP_COD,'
      '  OP_COMPRAS = :OP_COMPRAS,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_EMPRESA = :OP_EMPRESA,'
      '  OP_FICHATECNICA = :OP_FICHATECNICA,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO,'
      '  OP_VENDAS = :OP_VENDAS'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    InsertSQL.Strings = (
      'insert into ordem_producao'
      
        '  (OP_COD, OP_COMPRAS, OP_DESCRICAO, OP_DT_ENTREGA, OP_DT_PEDIDO' +
        ', OP_EMPRESA, '
      '   OP_FICHATECNICA, OP_QTD, OP_STATUS, OP_TIPO, OP_VENDAS)'
      'values'
      
        '  (:OP_COD, :OP_COMPRAS, :OP_DESCRICAO, :OP_DT_ENTREGA, :OP_DT_P' +
        'EDIDO, '
      
        '   :OP_EMPRESA, :OP_FICHATECNICA, :OP_QTD, :OP_STATUS, :OP_TIPO,' +
        ' :OP_VENDAS)')
    DeleteSQL.Strings = (
      'delete from ordem_producao'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    Left = 691
    Top = 176
  end
  object dscancelada: TDataSource
    DataSet = qcancelada
    Left = 627
    Top = 176
  end
  object qfechada: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ordem_producao where op_status = '#39'F'#39)
    UpdateObject = ufechada
    Left = 755
    Top = 128
    object IntegerField15: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField11: TIntegerField
      DisplayLabel = 'C'#243'digo da Venda'
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object IntegerField12: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField9: TIBStringField
      DisplayLabel = 'Ficha T'#233'cnica'
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
      Size = 30
    end
    object IBStringField10: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object IBStringField11: TIBStringField
      DisplayLabel = 'Tipo de Ordem'
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object IntegerField13: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object DateField5: TDateField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object DateField6: TDateField
      DisplayLabel = 'Data prevista da entrega'
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object IBStringField12: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object IntegerField14: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
      Required = True
    end
  end
  object ufechada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordem_producao '
      'where'
      '  OP_COD = :OP_COD and'
      '  OP_EMPRESA = :OP_EMPRESA')
    ModifySQL.Strings = (
      'update ordem_producao'
      'set'
      '  OP_COD = :OP_COD,'
      '  OP_COMPRAS = :OP_COMPRAS,'
      '  OP_DESCRICAO = :OP_DESCRICAO,'
      '  OP_DT_ENTREGA = :OP_DT_ENTREGA,'
      '  OP_DT_PEDIDO = :OP_DT_PEDIDO,'
      '  OP_EMPRESA = :OP_EMPRESA,'
      '  OP_FICHATECNICA = :OP_FICHATECNICA,'
      '  OP_QTD = :OP_QTD,'
      '  OP_STATUS = :OP_STATUS,'
      '  OP_TIPO = :OP_TIPO,'
      '  OP_VENDAS = :OP_VENDAS'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    InsertSQL.Strings = (
      'insert into ordem_producao'
      
        '  (OP_COD, OP_COMPRAS, OP_DESCRICAO, OP_DT_ENTREGA, OP_DT_PEDIDO' +
        ', OP_EMPRESA, '
      '   OP_FICHATECNICA, OP_QTD, OP_STATUS, OP_TIPO, OP_VENDAS)'
      'values'
      
        '  (:OP_COD, :OP_COMPRAS, :OP_DESCRICAO, :OP_DT_ENTREGA, :OP_DT_P' +
        'EDIDO, '
      
        '   :OP_EMPRESA, :OP_FICHATECNICA, :OP_QTD, :OP_STATUS, :OP_TIPO,' +
        ' :OP_VENDAS)')
    DeleteSQL.Strings = (
      'delete from ordem_producao'
      'where'
      '  OP_COD = :OLD_OP_COD and'
      '  OP_EMPRESA = :OLD_OP_EMPRESA')
    Left = 691
    Top = 128
  end
end
