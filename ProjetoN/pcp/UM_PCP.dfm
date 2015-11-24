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
    ExplicitLeft = -1
    ExplicitTop = -5
    ExplicitWidth = 792
    ExplicitHeight = 327
    object Label9: TLabel
      Left = 11
      Top = 24
      Width = 83
      Height = 13
      Caption = 'C'#243'digo da Ordem'
    end
    object Label17: TLabel
      Left = 151
      Top = 70
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
    object Label13: TLabel
      Left = 299
      Top = 121
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit9
    end
    object Label1: TLabel
      Left = 151
      Top = 123
      Width = 121
      Height = 13
      Caption = 'Data prevista de entrega'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 11
      Top = 70
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 151
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit4
    end
    object Label4: TLabel
      Left = 344
      Top = 24
      Width = 69
      Height = 13
      Caption = 'Departamento'
      FocusControl = DBEdit5
    end
    object DBEdit12: TDBEdit
      Left = 151
      Top = 90
      Width = 92
      Height = 21
      DataField = 'OP_TIPO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 0
    end
    object DBEdit13: TDBEdit
      Left = 11
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_DT_PEDIDO'
      DataSource = DM_PCP.DS_OrdemProducao
      ReadOnly = True
      TabOrder = 1
      OnEnter = FormCreate
    end
    object DBEdit9: TDBEdit
      Left = 299
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_QTD'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 11
      Top = 184
      Width = 758
      Height = 121
      DataField = 'OP_DESCRICAO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 151
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_DT_ENTREGA'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 11
      Top = 90
      Width = 30
      Height = 21
      DataField = 'OP_PRODUTO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 5
      OnClick = DBEdit2Click
    end
    object DBEdit11: TDBEdit
      Left = 11
      Top = 43
      Width = 134
      Height = 21
      DataField = 'OP_COD'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 47
      Top = 90
      Width = 98
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 151
      Top = 40
      Width = 41
      Height = 21
      DataField = 'OP_EMPRESA'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 8
      OnClick = DBEdit4Click
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 40
      Width = 49
      Height = 21
      DataField = 'OP_DEPARTAMENTO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 9
      OnClick = DBEdit5Click
    end
    object DBEdit6: TDBEdit
      Left = 198
      Top = 40
      Width = 118
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 399
      Top = 40
      Width = 138
      Height = 21
      Enabled = False
      TabOrder = 11
    end
  end
end
