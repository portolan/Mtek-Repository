inherited m_titulospagar: Tm_titulospagar
  Caption = 'CADASTRO DE T'#205'TULOS A PAGAR'
  ClientHeight = 456
  ClientWidth = 744
  ExplicitTop = -21
  ExplicitWidth = 760
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 415
    Width = 744
    ExplicitTop = 489
    ExplicitWidth = 766
    inherited sbCancelar: TSpeedButton
      Left = 647
      ExplicitLeft = 669
    end
  end
  inherited gbInfos: TGroupBox
    Width = 744
    Height = 415
    ExplicitLeft = -1
    ExplicitTop = -5
    ExplicitWidth = 768
    ExplicitHeight = 584
    object Label1: TLabel
      Left = 76
      Top = 46
      Width = 41
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 305
      Top = 46
      Width = 46
      Height = 13
      Caption = 'EMPRESA'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 528
      Top = 46
      Width = 39
      Height = 13
      Caption = 'PESSOA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 281
      Top = 176
      Width = 90
      Height = 13
      Caption = 'CONTA BANC'#193'RIA'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 497
      Top = 176
      Width = 120
      Height = 13
      Caption = 'CONDI'#199#195'O PAGAMENTO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 19
      Top = 80
      Width = 98
      Height = 13
      Caption = 'DESCRI'#199#195'O TITULO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 42
      Top = 128
      Width = 75
      Height = 13
      Caption = 'DATA EMISS'#195'O'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 278
      Top = 128
      Width = 95
      Height = 13
      Caption = 'DATA VENCIMENTO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 512
      Top = 128
      Width = 92
      Height = 13
      Caption = 'DATA PAGAMENTO'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 307
      Top = 336
      Width = 60
      Height = 13
      Caption = 'DATA BAIXA'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 506
      Top = 336
      Width = 111
      Height = 13
      Caption = 'DATA CANCELAMENTO'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 54
      Top = 176
      Width = 63
      Height = 13
      Caption = 'TIPO TITULO'
      FocusControl = DBEdit12
    end
    object Label15: TLabel
      Left = 24
      Top = 584
      Width = 90
      Height = 13
      Caption = 'TTP_VL_ORIGINAL'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 24
      Top = 624
      Width = 69
      Height = 13
      Caption = 'TTP_VL_PAGO'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 24
      Top = 664
      Width = 73
      Height = 13
      Caption = 'TTP_VL_TOTAL'
      FocusControl = DBEdit17
    end
    object Label18: TLabel
      Left = 24
      Top = 704
      Width = 81
      Height = 13
      Caption = 'TTP_MR_DIARIA'
      FocusControl = DBEdit18
    end
    object Label19: TLabel
      Left = 24
      Top = 744
      Width = 85
      Height = 13
      Caption = 'TTP_MT_ATRASO'
      FocusControl = DBEdit19
    end
    object SITUAÇÃO: TLabel
      Left = 65
      Top = 359
      Width = 52
      Height = 13
      Caption = 'SITUA'#199#195'O'
    end
    object Label20: TLabel
      Left = 59
      Top = 224
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DBEdit20
    end
    object Label21: TLabel
      Left = 64
      Top = 256
      Width = 45
      Height = 13
      Caption = 'PARCELA'
      FocusControl = DBEdit21
    end
    object Label22: TLabel
      Left = 32
      Top = 296
      Width = 85
      Height = 13
      Caption = 'VALOR ORIGINAL'
      FocusControl = DBEdit22
    end
    object Label23: TLabel
      Left = 303
      Top = 296
      Width = 64
      Height = 13
      Caption = 'VALOR PAGO'
      FocusControl = DBEdit23
    end
    object Label24: TLabel
      Left = 536
      Top = 296
      Width = 68
      Height = 13
      Caption = 'VALOR TOTAL'
      FocusControl = DBEdit24
    end
    object Label25: TLabel
      Left = 302
      Top = 229
      Width = 69
      Height = 13
      Caption = 'MORA DI'#193'RIA'
      FocusControl = DBEdit25
    end
    object Label26: TLabel
      Left = 511
      Top = 224
      Width = 93
      Height = 13
      Caption = 'MULTA DE ATRASO'
      FocusControl = DBEdit26
    end
    object DBEdit1: TDBEdit
      Left = 123
      Top = 43
      Width = 134
      Height = 21
      DataField = 'TTP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 357
      Top = 43
      Width = 134
      Height = 21
      DataField = 'TTP_EMP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 594
      Top = 43
      Width = 134
      Height = 21
      DataField = 'TTP_PES_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 377
      Top = 173
      Width = 114
      Height = 21
      DataField = 'TTP_CTB_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 619
      Top = 173
      Width = 111
      Height = 21
      DataField = 'TTP_CON_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 123
      Top = 77
      Width = 606
      Height = 28
      DataField = 'TTP_DESCRICAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 123
      Top = 125
      Width = 149
      Height = 21
      DataField = 'TTP_DT_EMISSAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 379
      Top = 125
      Width = 112
      Height = 21
      DataField = 'TTP_DT_VENCIMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 619
      Top = 125
      Width = 111
      Height = 21
      DataField = 'TTP_DT_PAGAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 373
      Top = 333
      Width = 117
      Height = 21
      DataField = 'TTP_DT_BAIXA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 623
      Top = 333
      Width = 107
      Height = 21
      DataField = 'TTP_DT_CANCELAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 123
      Top = 173
      Width = 152
      Height = 21
      DataField = 'TTP_TP_TITULO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 11
    end
    object DBEdit15: TDBEdit
      Left = 24
      Top = 600
      Width = 251
      Height = 21
      DataField = 'TTP_VL_ORIGINAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 12
    end
    object DBEdit16: TDBEdit
      Left = 24
      Top = 640
      Width = 251
      Height = 21
      DataField = 'TTP_VL_PAGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 13
    end
    object DBEdit17: TDBEdit
      Left = 24
      Top = 680
      Width = 251
      Height = 21
      DataField = 'TTP_VL_TOTAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 14
    end
    object DBEdit18: TDBEdit
      Left = 24
      Top = 720
      Width = 251
      Height = 21
      DataField = 'TTP_MR_DIARIA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 15
    end
    object DBEdit19: TDBEdit
      Left = 24
      Top = 760
      Width = 251
      Height = 21
      DataField = 'TTP_MT_ATRASO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 16
    end
    object RadioButton1: TRadioButton
      Left = 123
      Top = 335
      Width = 113
      Height = 17
      Caption = 'Aberto'
      TabOrder = 17
    end
    object RadioButton2: TRadioButton
      Left = 123
      Top = 358
      Width = 113
      Height = 17
      Caption = 'Pago'
      TabOrder = 18
    end
    object RadioButton3: TRadioButton
      Left = 123
      Top = 381
      Width = 113
      Height = 17
      Caption = 'Cancelado'
      TabOrder = 19
    end
    object DBEdit20: TDBEdit
      Left = 123
      Top = 221
      Width = 152
      Height = 21
      DataField = 'TTP_DESCONTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 20
    end
    object DBEdit21: TDBEdit
      Left = 123
      Top = 253
      Width = 152
      Height = 21
      DataField = 'TTP_PARCELA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 21
    end
    object DBEdit22: TDBEdit
      Left = 123
      Top = 293
      Width = 152
      Height = 21
      DataField = 'TTP_VL_ORIGINAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 22
    end
    object DBEdit23: TDBEdit
      Left = 373
      Top = 293
      Width = 117
      Height = 21
      DataField = 'TTP_VL_PAGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 23
    end
    object DBEdit24: TDBEdit
      Left = 623
      Top = 293
      Width = 107
      Height = 21
      DataField = 'TTP_VL_TOTAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 24
    end
    object DBEdit25: TDBEdit
      Left = 377
      Top = 221
      Width = 114
      Height = 21
      DataField = 'TTP_MR_DIARIA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 25
    end
    object DBEdit26: TDBEdit
      Left = 619
      Top = 221
      Width = 110
      Height = 21
      DataField = 'TTP_MT_ATRASO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 26
    end
    object RadioButton4: TRadioButton
      Left = 377
      Top = 257
      Width = 113
      Height = 17
      Caption = '%'
      TabOrder = 27
    end
    object RadioButton7: TRadioButton
      Left = 623
      Top = 255
      Width = 113
      Height = 17
      Caption = '%'
      TabOrder = 28
    end
  end
  object RadioButton5: TRadioButton
    Left = 416
    Top = 257
    Width = 113
    Height = 17
    Caption = 'R$'
    TabOrder = 2
  end
  object RadioButton6: TRadioButton
    Left = 671
    Top = 255
    Width = 113
    Height = 17
    Caption = 'R$'
    TabOrder = 3
  end
end
