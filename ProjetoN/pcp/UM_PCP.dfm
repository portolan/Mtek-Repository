inherited M_OP: TM_OP
  Left = 537
  Top = 329
  Caption = 'Ordem de Producao'
  ClientHeight = 371
  ClientWidth = 792
  OnShow = FormShow
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
    ExplicitLeft = -24
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
    object Label13: TLabel
      Left = 135
      Top = 77
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit9
    end
    object Label1: TLabel
      Left = 164
      Top = 123
      Width = 121
      Height = 13
      Caption = 'Data prevista de entrega'
      FocusControl = DBEdit1
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
    object DBEdit12: TDBEdit
      Left = 11
      Top = 96
      Width = 118
      Height = 21
      DataField = 'OP_TIPO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 2
    end
    object DBEdit13: TDBEdit
      Left = 11
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_DT_PEDIDO'
      DataSource = DM_PCP.DS_OrdemProducao
      ReadOnly = True
      TabOrder = 3
      OnEnter = FormCreate
    end
    object DBEdit9: TDBEdit
      Left = 135
      Top = 96
      Width = 134
      Height = 21
      DataField = 'OP_QTD'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 11
      Top = 172
      Width = 726
      Height = 116
      DataField = 'OP_DESCRICAO'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 5
    end
    inline frm_empresa: TfrmRelacionamento
      Left = 291
      Top = 21
      Width = 446
      Height = 44
      TabOrder = 6
      ExplicitLeft = 291
      ExplicitTop = 21
      ExplicitWidth = 446
      inherited pnlFrame: TPanel
        Width = 446
        ExplicitWidth = 446
        inherited lbTitulo: TLabel
          Left = 4
          Top = 3
          ExplicitLeft = 4
          ExplicitTop = 3
        end
        inherited DBE_CAMPO: TDBEdit
          Left = 4
          Width = 63
          ExplicitLeft = 4
          ExplicitWidth = 63
        end
        inherited panelFundo: TPanel
          Width = 361
          ExplicitWidth = 361
          inherited DBT_DESCRICAO: TDBText
            Width = 348
            ExplicitWidth = 348
          end
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 164
      Top = 139
      Width = 134
      Height = 21
      DataField = 'OP_DT_ENTREGA'
      DataSource = DM_PCP.DS_OrdemProducao
      TabOrder = 7
    end
  end
end
