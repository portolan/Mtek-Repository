inherited MEmissao_NFE: TMEmissao_NFE
  Caption = 'Emiss'#227'o de Nota Fiscal Eletr'#244'nica'
  ClientHeight = 314
  ClientWidth = 590
  ExplicitWidth = 606
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 273
    Width = 590
    ExplicitTop = 212
    ExplicitWidth = 590
    inherited sbCancelar: TSpeedButton
      Left = 493
      ExplicitLeft = 493
    end
  end
  inherited gbInfos: TGroupBox
    Width = 590
    Height = 273
    ExplicitWidth = 590
    ExplicitHeight = 212
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 87
      Height = 13
      Caption = 'N'#250'mero do Pedido'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 52
      Height = 13
      Caption = 'Nota Fiscal'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 184
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Serie'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 169
      Width = 107
      Height = 13
      Caption = 'Tipo de Movimenta'#231#227'o'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 172
      Top = 169
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 448
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Data da Emiss'#227'o'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 448
      Top = 72
      Width = 67
      Height = 13
      Caption = 'Data de Sa'#237'da'
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'EMI_NUMERO'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 83
      Width = 134
      Height = 21
      DataField = 'EMI_NOTAFISCAL'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 184
      Top = 40
      Width = 134
      Height = 21
      DataField = 'EMI_SERIE'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 185
      Width = 134
      Height = 21
      DataField = 'EMI_TIPOMOVIMENTACAO'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 172
      Top = 185
      Width = 234
      Height = 21
      DataField = 'EMI_DESCRICAO'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 448
      Top = 40
      Width = 134
      Height = 21
      DataField = 'EMI_DTEMISSAO'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 448
      Top = 88
      Width = 134
      Height = 21
      DataField = 'EMI_DTSAIDA'
      DataSource = DM_VENDA.DS_EmissaoNFE
      TabOrder = 6
    end
    inline frm_Empresa: TfrmRelacionamento
      Left = 6
      Top = 111
      Width = 341
      Height = 60
      TabOrder = 7
      ExplicitLeft = 6
      ExplicitTop = 111
      inherited pnlFrame: TPanel
        inherited lbTitulo: TLabel
          Width = 41
          Caption = 'Empresa'
          ExplicitWidth = 41
        end
      end
    end
    inline frm_Pessoa: TfrmRelacionamento
      Left = 7
      Top = 213
      Width = 341
      Height = 60
      TabOrder = 8
      ExplicitLeft = 7
      ExplicitTop = 213
      inherited pnlFrame: TPanel
        inherited lbTitulo: TLabel
          Caption = 'Cliente'
        end
      end
    end
  end
end
