inherited UM_EMISSAONFE: TUM_EMISSAONFE
  Caption = 'EMISS'#195'O DE NOTA FISCAL'
  ClientHeight = 425
  ClientWidth = 788
  ExplicitWidth = 804
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 384
    Width = 788
    ExplicitTop = 384
    ExplicitWidth = 788
    inherited sbCancelar: TSpeedButton
      Left = 691
      ExplicitLeft = 691
    end
  end
  inherited gbInfos: TGroupBox
    Width = 788
    Height = 384
    ExplicitWidth = 788
    ExplicitHeight = 384
    object Label1: TLabel
      Left = 19
      Top = 16
      Width = 67
      Height = 13
      Caption = 'EMI_NUMERO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 19
      Top = 56
      Width = 87
      Height = 13
      Caption = 'EMI_NOTAFISCAL'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 19
      Top = 96
      Width = 70
      Height = 13
      Caption = 'EMI_EMPRESA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 19
      Top = 136
      Width = 53
      Height = 13
      Caption = 'EMI_SERIE'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 19
      Top = 176
      Width = 130
      Height = 13
      Caption = 'EMI_TIPOMOVIMENTACAO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 19
      Top = 216
      Width = 83
      Height = 13
      Caption = 'EMI_DESCRICAO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 19
      Top = 256
      Width = 63
      Height = 13
      Caption = 'EMI_PESSOA'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 19
      Top = 296
      Width = 82
      Height = 13
      Caption = 'EMI_DTEMISSAO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 19
      Top = 336
      Width = 68
      Height = 13
      Caption = 'EMI_DTSAIDA'
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 32
      Width = 134
      Height = 21
      DataField = 'EMI_NUMERO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 19
      Top = 72
      Width = 134
      Height = 21
      DataField = 'EMI_NOTAFISCAL'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 19
      Top = 112
      Width = 134
      Height = 21
      DataField = 'EMI_EMPRESA'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 19
      Top = 152
      Width = 134
      Height = 21
      DataField = 'EMI_SERIE'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 19
      Top = 192
      Width = 134
      Height = 21
      DataField = 'EMI_TIPOMOVIMENTACAO'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 19
      Top = 232
      Width = 430
      Height = 21
      DataField = 'EMI_DESCRICAO'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 19
      Top = 272
      Width = 430
      Height = 21
      DataField = 'EMI_PESSOA'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 19
      Top = 312
      Width = 134
      Height = 21
      DataField = 'EMI_DTEMISSAO'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 19
      Top = 352
      Width = 134
      Height = 21
      DataField = 'EMI_DTSAIDA'
      DataSource = DataSource1
      TabOrder = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = UDM_Pedido_Venda.IB_EmissaoNFE
    Left = 688
    Top = 32
  end
end
