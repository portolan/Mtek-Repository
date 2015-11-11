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
    Top = 327
    Width = 792
    Height = 44
    ExplicitLeft = -8
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
    object sb_abrirOP: TSpeedButton
      Left = 0
      Top = -7
      Width = 97
      Height = 58
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
    Height = 327
    ExplicitWidth = 792
    ExplicitHeight = 312
    object pc_ordem: TPageControl
      Left = -70
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
          Left = 93
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
          Left = 93
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
          Left = 96
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
          Left = 93
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
    Left = 694
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
    Height = 327
    Align = alClient
    Caption = 'Dados'
    TabOrder = 3
    ExplicitTop = -5
    ExplicitHeight = 312
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 788
      Height = 310
      ActivePage = TabSheet3
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
      ExplicitLeft = 3
      ExplicitTop = 12
      ExplicitHeight = 295
      object TabSheet2: TTabSheet
        Caption = 'TabSheet1'
        DragMode = dmAutomatic
        TabVisible = False
        ExplicitHeight = 267
        object Label1: TLabel
          Left = 19
          Top = 32
          Width = 83
          Height = 13
          Caption = 'C'#243'digo da Ordem'
          FocusControl = DBEdit2
        end
        object Label2: TLabel
          Left = 19
          Top = 131
          Width = 73
          Height = 13
          Caption = 'Data do Pedido'
          FocusControl = DBEdit4
        end
        object Label3: TLabel
          Left = 19
          Top = 85
          Width = 70
          Height = 13
          Caption = 'Tipo da Ordem'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 159
          Top = 88
          Width = 76
          Height = 13
          Caption = 'C'#243'digo da Ficha'
          FocusControl = DBEdit5
        end
        object Label5: TLabel
          Left = 159
          Top = 32
          Width = 81
          Height = 13
          Caption = 'C'#243'digo da Venda'
          FocusControl = DBEdit6
        end
        object Label6: TLabel
          Left = 299
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Empresa'
          FocusControl = DBEdit7
        end
        object Label7: TLabel
          Left = 299
          Top = 85
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          FocusControl = DBEdit14
        end
        object Label8: TLabel
          Left = 159
          Top = 131
          Width = 121
          Height = 13
          Caption = 'Data Prevista de Entrega'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 497
          Top = 207
          Width = 134
          Height = 21
          Date = 42319.673866481480000000
          Time = 42319.673866481480000000
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 19
          Top = 48
          Width = 134
          Height = 21
          DataField = 'OP_COD'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 19
          Top = 104
          Width = 118
          Height = 21
          DataField = 'OP_TIPO'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 19
          Top = 147
          Width = 134
          Height = 21
          DataField = 'OP_DT_PEDIDO'
          DataSource = DM_PCP.DS_OrdemProducao
          Enabled = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 159
          Top = 104
          Width = 110
          Height = 21
          DataField = 'OP_FICHATECNICA'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 159
          Top = 48
          Width = 134
          Height = 21
          DataField = 'OP_VENDAS'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 299
          Top = 48
          Width = 134
          Height = 21
          DataField = 'OP_EMPRESA'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 299
          Top = 104
          Width = 134
          Height = 21
          DataField = 'OP_QTD'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 7
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 307
          Top = 147
          Width = 145
          Height = 21
          DataField = 'OP_STATUS'
          DataSource = DM_PCP.DS_OrdemProducao
          ListField = 'OP_STATUS'
          ListSource = DM_PCP.DS_OrdemProducao
          TabOrder = 8
        end
        object DateTimePicker2: TDateTimePicker
          Left = 159
          Top = 147
          Width = 134
          Height = 21
          Date = 42319.673866481480000000
          Time = 42319.673866481480000000
          TabOrder = 9
        end
        object DBMemo2: TDBMemo
          Left = 12
          Top = 171
          Width = 756
          Height = 96
          DataField = 'OP_DESCRICAO'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 10
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cadastro da Ordem'
        DoubleBuffered = False
        ImageIndex = 1
        ParentDoubleBuffered = False
        ExplicitLeft = 6
        ExplicitHeight = 267
        object Label16: TLabel
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
          Left = 291
          Top = 24
          Width = 41
          Height = 13
          Caption = 'Empresa'
          FocusControl = DBEdit1
        end
        object Label13: TLabel
          Left = 291
          Top = 77
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 291
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object Label11: TLabel
          Left = 151
          Top = 123
          Width = 121
          Height = 13
          Caption = 'Data Prevista de Entrega'
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
        object DBEdit10: TDBEdit
          Left = 151
          Top = 40
          Width = 134
          Height = 21
          DataField = 'OP_VENDAS'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 291
          Top = 40
          Width = 134
          Height = 21
          DataField = 'OP_EMPRESA'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 291
          Top = 96
          Width = 134
          Height = 21
          DataField = 'OP_QTD'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 2
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 291
          Top = 139
          Width = 145
          Height = 21
          DataField = 'OP_STATUS'
          DataSource = DM_PCP.DS_OrdemProducao
          ListField = 'OP_STATUS'
          ListSource = DM_PCP.DS_OrdemProducao
          TabOrder = 3
        end
        object DateTimePicker3: TDateTimePicker
          Left = 151
          Top = 139
          Width = 134
          Height = 21
          Date = 42319.673866481480000000
          Time = 42319.673866481480000000
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 151
          Top = 96
          Width = 110
          Height = 21
          DataField = 'OP_FICHATECNICA'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 11
          Top = 96
          Width = 118
          Height = 21
          DataField = 'OP_TIPO'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 11
          Top = 139
          Width = 134
          Height = 21
          DataField = 'OP_DT_PEDIDO'
          DataSource = DM_PCP.DS_OrdemProducao
          Enabled = False
          TabOrder = 7
        end
        object DBEdit11: TDBEdit
          Left = 11
          Top = 40
          Width = 134
          Height = 21
          DataField = 'OP_COD'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 8
        end
        object DBMemo1: TDBMemo
          Left = 11
          Top = 168
          Width = 726
          Height = 96
          DataField = 'OP_DESCRICAO'
          DataSource = DM_PCP.DS_OrdemProducao
          TabOrder = 9
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Aguardando Liberacao'
        ImageIndex = 2
        ExplicitHeight = 267
        object db_producao: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 282
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
        Caption = 'Em Producao'
        ImageIndex = 3
        ExplicitHeight = 267
        object DBGrid7: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 282
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
        Caption = 'Concluidas'
        ImageIndex = 4
        ExplicitHeight = 267
        object DBGrid8: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 282
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
      object TabSheet8: TTabSheet
        Caption = 'Canceladas'
        ImageIndex = 6
        ExplicitHeight = 267
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 282
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
    Left = 627
    Top = 272
  end
  object uLiberacao: TIBUpdateSQL
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
  object dsfechada: TDataSource
    DataSet = qfechada
    Left = 627
    Top = 136
  end
end
