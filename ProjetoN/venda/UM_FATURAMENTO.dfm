inherited UM_FATURANFE: TUM_FATURANFE
  Caption = 'FATURAMENTO'
  ClientHeight = 467
  ClientWidth = 505
  ExplicitWidth = 521
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 426
    Width = 505
    ExplicitTop = 426
    ExplicitWidth = 505
    inherited sbCancelar: TSpeedButton
      Left = 408
      ExplicitLeft = 408
    end
  end
  inherited gbInfos: TGroupBox
    Width = 505
    Height = 426
    ExplicitWidth = 505
    ExplicitHeight = 426
    object Label1: TLabel
      Left = 27
      Top = 24
      Width = 110
      Height = 13
      Caption = 'FAT_CODIGO_PEDIDO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 27
      Top = 64
      Width = 84
      Height = 13
      Caption = 'FAT_DESCRICAO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 27
      Top = 104
      Width = 71
      Height = 13
      Caption = 'FAT_EMPRESA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 27
      Top = 144
      Width = 64
      Height = 13
      Caption = 'FAT_PESSOA'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 27
      Top = 184
      Width = 53
      Height = 13
      Caption = 'FAT_NOTA'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 27
      Top = 224
      Width = 82
      Height = 13
      Caption = 'FAT_NOTASERIE'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 27
      Top = 264
      Width = 83
      Height = 13
      Caption = 'FAT_DTEMISSAO'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 27
      Top = 304
      Width = 69
      Height = 13
      Caption = 'FAT_DTSAIDA'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 27
      Top = 344
      Width = 77
      Height = 13
      Caption = 'FAT_SITAUCAO'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 27
      Top = 384
      Width = 104
      Height = 13
      Caption = 'FAT_CHAVE_ACESSO'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 27
      Top = 40
      Width = 134
      Height = 21
      DataField = 'FAT_CODIGO_PEDIDO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 27
      Top = 80
      Width = 406
      Height = 21
      DataField = 'FAT_DESCRICAO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 27
      Top = 120
      Width = 134
      Height = 21
      DataField = 'FAT_EMPRESA'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 27
      Top = 160
      Width = 134
      Height = 21
      DataField = 'FAT_PESSOA'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 27
      Top = 200
      Width = 134
      Height = 21
      DataField = 'FAT_NOTA'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 27
      Top = 240
      Width = 134
      Height = 21
      DataField = 'FAT_NOTASERIE'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 27
      Top = 280
      Width = 134
      Height = 21
      DataField = 'FAT_DTEMISSAO'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 27
      Top = 320
      Width = 134
      Height = 21
      DataField = 'FAT_DTSAIDA'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 27
      Top = 360
      Width = 69
      Height = 21
      DataField = 'FAT_SITAUCAO'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 27
      Top = 400
      Width = 134
      Height = 21
      DataField = 'FAT_CHAVE_ACESSO'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = UDM_Pedido_Venda.IB_Faturamento
    Left = 440
    Top = 24
  end
end
