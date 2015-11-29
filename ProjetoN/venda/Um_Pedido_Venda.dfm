inherited Frm_Pedido_Venda: TFrm_Pedido_Venda
  ActiveControl = DBEdit2
  Caption = 'Pedido de Venda'
  ClientHeight = 492
  ClientWidth = 662
  OnClose = nil
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 678
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 448
    Width = 662
    Height = 44
    ExplicitTop = 448
    ExplicitWidth = 662
    ExplicitHeight = 44
    inherited sbGravar: TSpeedButton
      Height = 42
      ExplicitHeight = 42
    end
    inherited sbCancelar: TSpeedButton
      Left = 565
      Height = 42
      ExplicitLeft = 506
      ExplicitHeight = 42
    end
  end
  inherited gbInfos: TGroupBox
    Width = 662
    Height = 448
    ExplicitWidth = 662
    ExplicitHeight = 448
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 87
      Height = 13
      Caption = 'N'#250'mero do Pedido'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 509
      Top = 9
      Width = 49
      Height = 13
      Caption = 'Sequ'#234'ncia'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 509
      Top = 55
      Width = 41
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label10: TLabel
      Left = 208
      Top = 191
      Width = 39
      Height = 13
      Caption = 'Unidade'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 317
      Top = 191
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 19
      Top = 191
      Width = 45
      Height = 13
      Caption = 'Desconto'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 435
      Top = 192
      Width = 107
      Height = 13
      Caption = 'Quantidade Disp'#243'nivel'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 16
      Top = 304
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 16
      Top = 347
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 16
      Top = 390
      Width = 43
      Height = 13
      Caption = 'Reajuste'
      FocusControl = DBEdit17
    end
    object Label18: TLabel
      Left = 419
      Top = 304
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
      FocusControl = DBEdit18
    end
    object Label19: TLabel
      Left = 419
      Top = 331
      Width = 79
      Height = 13
      Caption = 'Data de Entrega'
      FocusControl = DBEdit19
    end
    object Label20: TLabel
      Left = 419
      Top = 355
      Width = 83
      Height = 13
      Caption = 'Prazo de Entrega'
      FocusControl = DBEdit20
    end
    object Label21: TLabel
      Left = 419
      Top = 409
      Width = 80
      Height = 13
      Caption = 'Ordem de Venda'
      FocusControl = DBEdit21
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 35
      Width = 134
      Height = 21
      DataField = 'PED_NUMERO'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 74
      Width = 361
      Height = 21
      DataField = 'PED_PESSOA'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 509
      Top = 28
      Width = 134
      Height = 21
      DataField = 'PED_SEQUENCIA'
      DataSource = DataSource1
      TabOrder = 2
      OnChange = DBEdit3Change
    end
    object DBEdit10: TDBEdit
      Left = 208
      Top = 221
      Width = 73
      Height = 21
      DataField = 'PED_UNIDADE'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 317
      Top = 221
      Width = 73
      Height = 21
      DataField = 'PED_QUANTIDADE'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 16
      Top = 221
      Width = 134
      Height = 21
      DataField = 'PED_DESCONTO'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit14: TDBEdit
      Left = 452
      Top = 221
      Width = 73
      Height = 21
      DataField = 'PED_QTD_DISPONIVEL'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 16
      Top = 320
      Width = 251
      Height = 21
      DataField = 'PED_VLRUNITARIO'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit16: TDBEdit
      Left = 16
      Top = 363
      Width = 251
      Height = 21
      DataField = 'PED_VLRTOTAL'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit17: TDBEdit
      Left = 16
      Top = 409
      Width = 251
      Height = 21
      DataField = 'PED_REAJUSTE'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBEdit18: TDBEdit
      Left = 512
      Top = 301
      Width = 134
      Height = 21
      DataField = 'PED_DTPEDIDO'
      DataSource = DM_VENDA.DS_Venda
      TabOrder = 10
      OnEnter = DBEdit18Enter
    end
    object DBEdit19: TDBEdit
      Left = 513
      Top = 328
      Width = 134
      Height = 21
      DataField = 'PED_DTENTRADA'
      DataSource = DataSource1
      TabOrder = 11
    end
    object DBEdit20: TDBEdit
      Left = 513
      Top = 355
      Width = 134
      Height = 21
      DataField = 'PED_DTPRAZOENTREGA'
      DataSource = DataSource1
      TabOrder = 12
    end
    object DBEdit21: TDBEdit
      Left = 513
      Top = 409
      Width = 134
      Height = 21
      DataField = 'PED_ORDEMVENDA'
      DataSource = DataSource1
      TabOrder = 13
    end
    inline frm_empresa: TfrmRelacionamento
      Left = 7
      Top = 96
      Width = 386
      Height = 54
      TabOrder = 14
      ExplicitLeft = 7
      ExplicitTop = 96
      ExplicitWidth = 386
      ExplicitHeight = 54
      inherited pnlFrame: TPanel
        Top = 1
        Width = 447
        Height = 80
        Align = alNone
        ExplicitTop = 1
        ExplicitWidth = 447
        ExplicitHeight = 80
        inherited lbTitulo: TLabel
          Top = 1
          Width = 41
          Caption = 'Empresa'
          ExplicitTop = 1
          ExplicitWidth = 41
        end
        inherited DBE_CAMPO: TDBEdit
          Top = 16
          ExplicitTop = 16
        end
        inherited panelFundo: TPanel
          Top = 16
          Width = 297
          Height = 25
          ExplicitTop = 16
          ExplicitWidth = 297
          ExplicitHeight = 25
          inherited DBT_DESCRICAO: TDBText
            Left = 0
            Top = 0
            Width = 290
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 355
          end
        end
      end
    end
    inline frm_produto: TfrmRelacionamento
      Left = 9
      Top = 143
      Width = 374
      Height = 42
      TabOrder = 15
      ExplicitLeft = 9
      ExplicitTop = 143
      ExplicitWidth = 374
      ExplicitHeight = 42
      inherited pnlFrame: TPanel
        Width = 374
        Height = 42
        ExplicitWidth = 374
        ExplicitHeight = 42
        inherited lbTitulo: TLabel
          Top = -1
          Width = 38
          Caption = 'Produto'
          ExplicitTop = -1
          ExplicitWidth = 38
        end
        inherited DBE_CAMPO: TDBEdit
          Top = 15
          ExplicitTop = 15
        end
        inherited panelFundo: TPanel
          Top = 15
          Width = 296
          Height = 26
          ExplicitTop = 15
          ExplicitWidth = 296
          ExplicitHeight = 26
          inherited DBT_DESCRICAO: TDBText
            Left = 0
            Top = 1
            Width = 291
            ExplicitLeft = 0
            ExplicitTop = 1
            ExplicitWidth = 291
          end
        end
      end
    end
    object ComboBox1: TComboBox
      Left = 510
      Top = 74
      Width = 133
      Height = 21
      TabOrder = 16
      OnExit = ComboBox1Exit
      Items.Strings = (
        'A'
        'B')
    end
    inline frm_departamento: TfrmRelacionamento
      Left = 379
      Top = 124
      Width = 326
      Height = 67
      TabOrder = 17
      ExplicitLeft = 379
      ExplicitTop = 124
      ExplicitWidth = 326
      ExplicitHeight = 67
      inherited pnlFrame: TPanel
        Width = 326
        Height = 67
        ExplicitLeft = 4
        ExplicitTop = -63
        ExplicitWidth = 326
        ExplicitHeight = 67
        inherited lbTitulo: TLabel
          Width = 42
          Caption = 'Dep'#243'sito'
          ExplicitWidth = 42
        end
        inherited panelFundo: TPanel
          Width = 204
          ExplicitWidth = 204
          inherited DBT_DESCRICAO: TDBText
            Width = 191
            ExplicitWidth = 228
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_VENDA.IB_Venda
    Left = 408
    Top = 16
  end
end
