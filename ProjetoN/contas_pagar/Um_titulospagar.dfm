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
    ExplicitTop = 294
    ExplicitWidth = 744
    inherited sbCancelar: TSpeedButton
      Left = 647
      ExplicitLeft = 669
    end
  end
  inherited gbInfos: TGroupBox
    Width = 744
    Height = 294
    Caption = ''
    ExplicitWidth = 744
    ExplicitHeight = 294
    object Label1: TLabel
      Left = 76
      Top = 15
      Width = 41
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = ttp_codigo
    end
    object Label2: TLabel
      Left = 71
      Top = 38
      Width = 46
      Height = 13
      Caption = 'EMPRESA'
      FocusControl = ttp_empresa
    end
    object Label3: TLabel
      Left = 395
      Top = 38
      Width = 39
      Height = 13
      Caption = 'PESSOA'
      FocusControl = ttp_pessoa
    end
    object Label4: TLabel
      Left = 283
      Top = 106
      Width = 90
      Height = 13
      Caption = 'CONTA BANC'#193'RIA'
    end
    object Label5: TLabel
      Left = 494
      Top = 106
      Width = 120
      Height = 13
      Caption = 'CONDI'#199#195'O PAGAMENTO'
    end
    object Label6: TLabel
      Left = 19
      Top = 60
      Width = 98
      Height = 13
      Caption = 'DESCRI'#199#195'O TITULO'
      FocusControl = ttp_descricao
    end
    object Label7: TLabel
      Left = 42
      Top = 84
      Width = 75
      Height = 13
      Caption = 'DATA EMISS'#195'O'
      FocusControl = ttp_emissao
    end
    object Label8: TLabel
      Left = 278
      Top = 84
      Width = 95
      Height = 13
      Caption = 'DATA VENCIMENTO'
      FocusControl = ttp_vencimento
    end
    object Label9: TLabel
      Left = 522
      Top = 84
      Width = 92
      Height = 13
      Caption = 'DATA PAGAMENTO'
      FocusControl = ttp_dt_pagamento
    end
    object Label10: TLabel
      Left = 313
      Top = 204
      Width = 60
      Height = 13
      Caption = 'DATA BAIXA'
      FocusControl = ttp_dt_baixa
    end
    object Label11: TLabel
      Left = 503
      Top = 182
      Width = 111
      Height = 13
      Caption = 'DATA CANCELAMENTO'
      FocusControl = ttp_dt_cancelamento
    end
    object Label12: TLabel
      Left = 54
      Top = 106
      Width = 63
      Height = 13
      Caption = 'TIPO TITULO'
      FocusControl = ttp_tp_titulo
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
      Left = 184
      Top = 253
      Width = 52
      Height = 13
      Caption = 'SITUA'#199#195'O'
    end
    object Label20: TLabel
      Left = 62
      Top = 128
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = ttp_desconto
    end
    object Label21: TLabel
      Left = 72
      Top = 150
      Width = 45
      Height = 13
      Caption = 'PARCELA'
      FocusControl = ttp_parcela
    end
    object Label22: TLabel
      Left = 32
      Top = 172
      Width = 85
      Height = 13
      Caption = 'VALOR ORIGINAL'
      FocusControl = ttp_vl_original
    end
    object Label23: TLabel
      Left = 309
      Top = 182
      Width = 64
      Height = 13
      Caption = 'VALOR PAGO'
      FocusControl = ttp_vl_pago
    end
    object Label24: TLabel
      Left = 542
      Top = 223
      Width = 68
      Height = 13
      Caption = 'VALOR TOTAL'
      FocusControl = ttp_vl_total
    end
    object Label25: TLabel
      Left = 304
      Top = 128
      Width = 69
      Height = 13
      Caption = 'MORA DI'#193'RIA'
      FocusControl = ttp_mora
    end
    object Label26: TLabel
      Left = 521
      Top = 128
      Width = 93
      Height = 13
      Caption = 'MULTA DE ATRASO'
      FocusControl = ttp_multa
    end
    object ttp_codigo: TDBEdit
      Left = 123
      Top = 12
      Width = 52
      Height = 21
      DataField = 'TTP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 0
    end
    object ttp_empresa: TDBEdit
      Left = 123
      Top = 34
      Width = 52
      Height = 21
      DataField = 'TTP_EMP_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 1
      OnExit = ttp_empresaExit
    end
    object ttp_pessoa: TDBEdit
      Left = 439
      Top = 34
      Width = 52
      Height = 21
      DataField = 'TTP_PES_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 2
      OnExit = ttp_pessoaExit
    end
    object ttp_descricao: TDBEdit
      Left = 123
      Top = 57
      Width = 606
      Height = 21
      DataField = 'TTP_DESCRICAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 3
    end
    object ttp_emissao: TDBEdit
      Left = 123
      Top = 81
      Width = 149
      Height = 21
      DataField = 'TTP_DT_EMISSAO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 4
    end
    object ttp_vencimento: TDBEdit
      Left = 379
      Top = 81
      Width = 112
      Height = 21
      DataField = 'TTP_DT_VENCIMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 9
    end
    object ttp_dt_pagamento: TDBEdit
      Left = 617
      Top = 81
      Width = 112
      Height = 21
      DataField = 'TTP_DT_PAGAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 13
    end
    object ttp_dt_baixa: TDBEdit
      Left = 379
      Top = 201
      Width = 114
      Height = 21
      DataField = 'TTP_DT_BAIXA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 12
    end
    object ttp_dt_cancelamento: TDBEdit
      Left = 616
      Top = 179
      Width = 112
      Height = 21
      DataField = 'TTP_DT_CANCELAMENTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 15
    end
    object ttp_tp_titulo: TDBEdit
      Left = 123
      Top = 103
      Width = 149
      Height = 21
      DataField = 'TTP_TP_TITULO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 5
    end
    object DBEdit15: TDBEdit
      Left = 24
      Top = 600
      Width = 251
      Height = 21
      DataField = 'TTP_VL_ORIGINAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 17
    end
    object DBEdit16: TDBEdit
      Left = 24
      Top = 640
      Width = 251
      Height = 21
      DataField = 'TTP_VL_PAGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 18
    end
    object DBEdit17: TDBEdit
      Left = 24
      Top = 680
      Width = 251
      Height = 21
      DataField = 'TTP_VL_TOTAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 19
    end
    object DBEdit18: TDBEdit
      Left = 24
      Top = 720
      Width = 251
      Height = 21
      DataField = 'TTP_MR_DIARIA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 20
    end
    object DBEdit19: TDBEdit
      Left = 24
      Top = 760
      Width = 251
      Height = 21
      DataField = 'TTP_MT_ATRASO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 21
    end
    object ttp_desconto: TDBEdit
      Left = 123
      Top = 125
      Width = 149
      Height = 21
      DataField = 'TTP_DESCONTO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 6
    end
    object ttp_parcela: TDBEdit
      Left = 123
      Top = 147
      Width = 149
      Height = 21
      DataField = 'TTP_PARCELA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 7
    end
    object ttp_vl_original: TDBEdit
      Left = 123
      Top = 169
      Width = 149
      Height = 21
      DataField = 'TTP_VL_ORIGINAL'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 8
    end
    object ttp_vl_pago: TDBEdit
      Left = 379
      Top = 179
      Width = 114
      Height = 21
      DataField = 'TTP_VL_PAGO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 11
    end
    object ttp_vl_total: TDBEdit
      Left = 616
      Top = 220
      Width = 112
      Height = 21
      TabStop = False
      DataField = 'TTP_VL_TOTAL'
      DataSource = dm_contaspagar.Dtitulospagar
      ReadOnly = True
      TabOrder = 16
    end
    object ttp_mora: TDBEdit
      Left = 379
      Top = 125
      Width = 112
      Height = 21
      DataField = 'TTP_MR_DIARIA'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 10
    end
    object ttp_multa: TDBEdit
      Left = 617
      Top = 125
      Width = 112
      Height = 21
      DataField = 'TTP_MT_ATRASO'
      DataSource = dm_contaspagar.Dtitulospagar
      TabOrder = 14
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 242
      Top = 234
      Width = 250
      Height = 54
      Columns = 3
      DataField = 'TTP_SITUACAO'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'ABERTO '
        'PAGO '
        'CANCELADO')
      TabOrder = 22
      Values.Strings = (
        'A'
        'P'
        'C')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 379
      Top = 146
      Width = 112
      Height = 33
      Columns = 2
      DataField = 'TTP_TP_MORA'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'R$'
        '%')
      TabOrder = 23
      Values.Strings = (
        'R'
        'P')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 617
      Top = 146
      Width = 111
      Height = 33
      Columns = 2
      DataField = 'TTP_TP_MULTA'
      DataSource = dm_contaspagar.Dtitulospagar
      Items.Strings = (
        'R$'
        '%')
      TabOrder = 24
      Values.Strings = (
        'R'
        'P')
    end
    object emp_razao: TDBEdit
      Left = 176
      Top = 34
      Width = 218
      Height = 21
      TabStop = False
      DataField = 'EMP_RAZAO'
      DataSource = dm_contaspagar.Dtitulospagar
      ReadOnly = True
      TabOrder = 25
    end
    object pess_nome: TDBEdit
      Left = 492
      Top = 34
      Width = 236
      Height = 21
      TabStop = False
      DataField = 'PESS_NOME'
      DataSource = dm_contaspagar.Dtitulospagar
      ReadOnly = True
      TabOrder = 26
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 379
      Top = 103
      Width = 112
      Height = 21
      DataField = 'TTP_CTB_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      KeyField = 'CTB_CODIGO'
      ListField = 'CTB_CONTA'
      ListSource = DM_financeiro.D_contasbancarias
      TabOrder = 27
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 617
      Top = 103
      Width = 113
      Height = 21
      DataField = 'TTP_CON_CODIGO'
      DataSource = dm_contaspagar.Dtitulospagar
      KeyField = 'CDP_CODIGO'
      ListField = 'CDP_DESCRICAO'
      ListSource = dm_contaspagar.Dcondicao
      TabOrder = 28
    end
  end
end
