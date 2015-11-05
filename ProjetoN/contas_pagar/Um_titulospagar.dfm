inherited m_titulospagar: Tm_titulospagar
  Caption = 'CADASTRO DE T'#205'TULOS A PAGAR'
  ClientHeight = 335
  ClientWidth = 744
  ExplicitWidth = 760
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 294
    Width = 744
    ExplicitTop = 415
    ExplicitWidth = 744
    inherited sbCancelar: TSpeedButton
      Left = 647
      ExplicitLeft = 669
    end
  end
  inherited gbInfos: TGroupBox
    Width = 744
    Height = 294
    ExplicitLeft = -1
    ExplicitTop = -6
    ExplicitWidth = 744
    ExplicitHeight = 415
    object Label1: TLabel
      Left = 76
      Top = 46
      Width = 41
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 193
      Top = 46
      Width = 46
      Height = 13
      Caption = 'EMPRESA'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 328
      Top = 46
      Width = 39
      Height = 13
      Caption = 'PESSOA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 283
      Top = 116
      Width = 90
      Height = 13
      Caption = 'CONTA BANC'#193'RIA'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 497
      Top = 116
      Width = 120
      Height = 13
      Caption = 'CONDI'#199#195'O PAGAMENTO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 19
      Top = 70
      Width = 98
      Height = 13
      Caption = 'DESCRI'#199#195'O TITULO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 42
      Top = 92
      Width = 75
      Height = 13
      Caption = 'DATA EMISS'#195'O'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 278
      Top = 92
      Width = 95
      Height = 13
      Caption = 'DATA VENCIMENTO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 525
      Top = 92
      Width = 92
      Height = 13
      Caption = 'DATA PAGAMENTO'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 313
      Top = 223
      Width = 60
      Height = 13
      Caption = 'DATA BAIXA'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 504
      Top = 223
      Width = 111
      Height = 13
      Caption = 'DATA CANCELAMENTO'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 54
      Top = 111
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
      Left = 62
      Top = 213
      Width = 52
      Height = 13
      Caption = 'SITUA'#199#195'O'
    end
    object Label20: TLabel
      Left = 62
      Top = 138
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DBEdit20
    end
    object Label21: TLabel
      Left = 72
      Top = 157
      Width = 45
      Height = 13
      Caption = 'PARCELA'
      FocusControl = DBEdit21
    end
    object Label22: TLabel
      Left = 32
      Top = 184
      Width = 85
      Height = 13
      Caption = 'VALOR ORIGINAL'
      FocusControl = DBEdit22
    end
    object Label23: TLabel
      Left = 309
      Top = 199
      Width = 64
      Height = 13
      Caption = 'VALOR PAGO'
      FocusControl = DBEdit23
    end
    object Label24: TLabel
      Left = 547
      Top = 199
      Width = 68
      Height = 13
      Caption = 'VALOR TOTAL'
      FocusControl = DBEdit24
    end
    object Label25: TLabel
      Left = 304
      Top = 138
      Width = 69
      Height = 13
      Caption = 'MORA DI'#193'RIA'
      FocusControl = DBEdit25
    end
    object Label26: TLabel
      Left = 524
      Top = 138
      Width = 93
      Height = 13
      Caption = 'MULTA DE ATRASO'
      FocusControl = DBEdit26
    end
    object DBEdit1: TDBEdit
      Left = 123
      Top = 43
      Width = 54
      Height = 21
      DataField = 'TTP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 253
      Top = 43
      Width = 52
      Height = 21
      DataField = 'TTP_EMP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 373
      Top = 43
      Width = 52
      Height = 21
      DataField = 'TTP_PES_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 379
      Top = 111
      Width = 112
      Height = 21
      DataField = 'TTP_CTB_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 618
      Top = 111
      Width = 111
      Height = 21
      DataField = 'TTP_CON_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 123
      Top = 65
      Width = 606
      Height = 21
      DataField = 'TTP_DESCRICAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 123
      Top = 89
      Width = 149
      Height = 21
      DataField = 'TTP_DT_EMISSAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 379
      Top = 89
      Width = 112
      Height = 21
      DataField = 'TTP_DT_VENCIMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 618
      Top = 84
      Width = 111
      Height = 21
      DataField = 'TTP_DT_PAGAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 379
      Top = 218
      Width = 114
      Height = 21
      DataField = 'TTP_DT_BAIXA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 621
      Top = 218
      Width = 107
      Height = 21
      DataField = 'TTP_DT_CANCELAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 123
      Top = 111
      Width = 149
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
    object DBEdit20: TDBEdit
      Left = 123
      Top = 135
      Width = 149
      Height = 21
      DataField = 'TTP_DESCONTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 17
    end
    object DBEdit21: TDBEdit
      Left = 123
      Top = 157
      Width = 149
      Height = 21
      DataField = 'TTP_PARCELA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 18
    end
    object DBEdit22: TDBEdit
      Left = 123
      Top = 184
      Width = 152
      Height = 21
      DataField = 'TTP_VL_ORIGINAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 19
    end
    object DBEdit23: TDBEdit
      Left = 379
      Top = 196
      Width = 114
      Height = 21
      DataField = 'TTP_VL_PAGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 20
    end
    object DBEdit24: TDBEdit
      Left = 621
      Top = 196
      Width = 107
      Height = 21
      DataField = 'TTP_VL_TOTAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 21
    end
    object DBEdit25: TDBEdit
      Left = 379
      Top = 135
      Width = 112
      Height = 21
      DataField = 'TTP_MR_DIARIA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 22
    end
    object DBEdit26: TDBEdit
      Left = 618
      Top = 135
      Width = 110
      Height = 21
      DataField = 'TTP_MT_ATRASO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 23
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 42
      Top = 232
      Width = 250
      Height = 57
      Columns = 3
      DataField = 'TTP_SITUACAO'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'ABERTO '
        'PAGO '
        'CANCELADO')
      TabOrder = 24
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 379
      Top = 157
      Width = 114
      Height = 33
      Columns = 2
      DataField = 'TTP_TP_MORA'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'R$'
        '%')
      TabOrder = 25
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 617
      Top = 157
      Width = 111
      Height = 33
      Columns = 2
      DataField = 'TTP_TP_MULTA'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'R$'
        '%')
      TabOrder = 26
    end
  end
end
