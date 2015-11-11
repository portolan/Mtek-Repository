inherited M_OP: TM_OP
  Left = 537
  Top = 329
  Caption = 'Ordem de Producao'
  ClientHeight = 371
  ClientWidth = 792
  Position = poDesigned
  ExplicitWidth = 808
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 312
    Width = 792
    Height = 59
    ExplicitTop = 312
    ExplicitWidth = 792
    ExplicitHeight = 59
    inherited sbGravar: TSpeedButton
      Height = 57
      ExplicitHeight = 57
    end
    inherited sbCancelar: TSpeedButton
      Left = 689
      Width = 102
      Height = 57
      Transparent = False
      ExplicitLeft = 672
      ExplicitWidth = 102
      ExplicitHeight = 57
    end
    object sb_abrirOP: TSpeedButton
      Left = 0
      Top = 0
      Width = 97
      Height = 59
      Caption = 'Abrir OP'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = sb_abrirOPClick
    end
  end
  inherited gbInfos: TGroupBox
    Width = 792
    Height = 312
    ExplicitWidth = 792
    ExplicitHeight = 312
    object pc_ordem: TPageControl
      Left = 0
      Top = 0
      Width = 862
      Height = 450
      ActivePage = ts_cancelada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        DragMode = dmAutomatic
        TabVisible = False
        object DBGrid4: TDBGrid
          Left = 3
          Top = 3
          Width = 758
          Height = 297
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ts_aguardandoliberacao: TTabSheet
        Caption = 'Aguardando Libera'#231#227'o'
        DoubleBuffered = False
        ImageIndex = 1
        ParentDoubleBuffered = False
        object gridLibercao: TDBGrid
          Left = 3
          Top = 4
          Width = 758
          Height = 297
          DataSource = dsLiberacao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COD'
              Visible = True
            end>
        end
      end
      object ts_producao: TTabSheet
        Caption = 'Em Producao'
        ImageIndex = 2
        object DBGrid2: TDBGrid
          Left = 0
          Top = 3
          Width = 758
          Height = 297
          DataSource = dsproducao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COD'
              Visible = True
            end>
        end
      end
      object ts_cancelada: TTabSheet
        Caption = 'Cancelada'
        ImageIndex = 3
        object DBGrid3: TDBGrid
          Left = 3
          Top = 0
          Width = 758
          Height = 297
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object ts_concluida: TTabSheet
        Caption = 'Concluida'
        ImageIndex = 4
      end
    end
  end
  object Button1: TButton
    Left = 1
    Top = 266
    Width = 97
    Height = 40
    Caption = 'Button1'
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 312
    Align = alClient
    Caption = 'Dados'
    TabOrder = 3
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 788
      Height = 295
      ActivePage = TabSheet6
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TabStop = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 866
      ExplicitHeight = 450
      object TabSheet2: TTabSheet
        Caption = 'TabSheet1'
        DragMode = dmAutomatic
        TabVisible = False
        ExplicitWidth = 858
        ExplicitHeight = 422
        object DBGrid1: TDBGrid
          Left = 3
          Top = 3
          Width = 758
          Height = 297
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Aguardando Libera'#231#227'o'
        DoubleBuffered = False
        ImageIndex = 1
        ParentDoubleBuffered = False
        ExplicitWidth = 858
        ExplicitHeight = 422
        object db_aguardando: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 267
          Align = alClient
          DataSource = dsLiberacao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_COD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = False
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Em Producao'
        ImageIndex = 2
        ExplicitWidth = 858
        ExplicitHeight = 422
        object db_producao: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 267
          Align = alClient
          DataSource = dsproducao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_COD'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Width = 44
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Cancelada'
        ImageIndex = 3
        ExplicitWidth = 858
        ExplicitHeight = 422
        object DBGrid7: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 267
          Align = alClient
          DataSource = dscancelada
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_COD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = False
            end>
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Fechada'
        ImageIndex = 4
        ExplicitWidth = 858
        ExplicitHeight = 422
        object DBGrid8: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 267
          Align = alClient
          DataSource = dsfechada
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OP_COD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_VENDAS'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_EMPRESA'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_FICHATECNICA'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_TIPO'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DESCRICAO'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_PEDIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_DT_ENTREGA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OP_COMPRAS'
              Visible = False
            end>
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'TabSheet7'
        ImageIndex = 5
        ExplicitWidth = 858
        ExplicitHeight = 422
      end
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
    Left = 600
    Top = 208
    object qLiberacaoOP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object qLiberacaoOP_COMPRAS: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
      Required = True
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
    Left = 728
    Top = 208
  end
  object uLiberacao: TIBUpdateSQL
    Left = 664
    Top = 208
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
    Left = 600
    Top = 160
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
    Left = 664
    Top = 160
  end
  object dsproducao: TDataSource
    DataSet = qproducao
    Left = 728
    Top = 160
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
    Left = 600
    Top = 112
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
    Left = 664
    Top = 112
  end
  object dscancelada: TDataSource
    DataSet = qcancelada
    Left = 728
    Top = 112
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
    Left = 600
    Top = 64
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
    Left = 664
    Top = 64
  end
  object dsfechada: TDataSource
    DataSet = qfechada
    Left = 728
    Top = 64
  end
end
