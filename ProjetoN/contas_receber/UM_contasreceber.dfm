﻿inherited M_contasreceber: TM_contasreceber
  Caption = 'Contas Receber'
  ClientHeight = 344
  ClientWidth = 736
  ExplicitWidth = 752
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 303
    Width = 736
    ExplicitTop = 303
    ExplicitWidth = 736
    inherited sbGravar: TSpeedButton
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitHeight = 39
    end
    inherited sbCancelar: TSpeedButton
      Left = 639
      ExplicitLeft = 639
    end
  end
  inherited gbInfos: TGroupBox
    Width = 736
    Height = 303
    Caption = ''
    ExplicitWidth = 736
    ExplicitHeight = 303
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 732
      Height = 286
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 76
        Top = 15
        Width = 41
        Height = 13
        Caption = 'C'#211'DIGO'
        FocusControl = ttr_codigo
      end
      object Label2: TLabel
        Left = 71
        Top = 38
        Width = 46
        Height = 13
        Caption = 'EMPRESA'
        FocusControl = ttr_empresa
      end
      object Label3: TLabel
        Left = 395
        Top = 43
        Width = 39
        Height = 13
        Caption = 'PESSOA'
        FocusControl = ttr_pessoa
      end
      object Label4: TLabel
        Left = 283
        Top = 106
        Width = 90
        Height = 13
        Caption = 'CONTA BANC'#193'RIA'
        FocusControl = ttr_conta
      end
      object Label5: TLabel
        Left = 494
        Top = 106
        Width = 120
        Height = 13
        Caption = 'CONDI'#199#195'O PAGAMENTO'
        FocusControl = ttp_condicao
      end
      object Label6: TLabel
        Left = 19
        Top = 60
        Width = 98
        Height = 13
        Caption = 'DESCRI'#199#195'O TITULO'
        FocusControl = ttr_descricao
      end
      object Label7: TLabel
        Left = 42
        Top = 84
        Width = 75
        Height = 13
        Caption = 'DATA EMISS'#195'O'
        FocusControl = ttr_emissao
      end
      object Label8: TLabel
        Left = 278
        Top = 84
        Width = 95
        Height = 13
        Caption = 'DATA VENCIMENTO'
        FocusControl = ttr_vencimento
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
        FocusControl = ttr_dt_baixa
      end
      object Label11: TLabel
        Left = 503
        Top = 204
        Width = 111
        Height = 13
        Caption = 'DATA CANCELAMENTO'
        FocusControl = ttr_dt_cancelamento
      end
      object Label12: TLabel
        Left = 54
        Top = 106
        Width = 63
        Height = 13
        Caption = 'TIPO TITULO'
        FocusControl = ttr_tp_titulo
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
        Left = 210
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
        FocusControl = ttr_desconto
      end
      object Label21: TLabel
        Left = 72
        Top = 150
        Width = 45
        Height = 13
        Caption = 'PARCELA'
        FocusControl = ttr_parcela
      end
      object Label22: TLabel
        Left = 32
        Top = 172
        Width = 85
        Height = 13
        Caption = 'VALOR ORIGINAL'
        FocusControl = ttr_vl_original
      end
      object Label23: TLabel
        Left = 309
        Top = 182
        Width = 64
        Height = 13
        Caption = 'VALOR PAGO'
        FocusControl = ttr_vl_pago
      end
      object Label24: TLabel
        Left = 546
        Top = 182
        Width = 68
        Height = 13
        Caption = 'VALOR TOTAL'
        FocusControl = ttr_vl_total
      end
      object Label25: TLabel
        Left = 304
        Top = 128
        Width = 69
        Height = 13
        Caption = 'MORA DI'#193'RIA'
        FocusControl = ttr_mora
      end
      object Label26: TLabel
        Left = 521
        Top = 128
        Width = 93
        Height = 13
        Caption = 'MULTA DE ATRASO'
        FocusControl = ttp_multa
      end
      object ttr_codigo: TDBEdit
        Left = 123
        Top = 12
        Width = 52
        Height = 21
        DataField = 'TTR_CODIGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 0
      end
      object ttr_empresa: TDBEdit
        Left = 123
        Top = 33
        Width = 52
        Height = 21
        DataField = 'TTR_EMP_CODIGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 1
      end
      object ttr_pessoa: TDBEdit
        Left = 439
        Top = 35
        Width = 52
        Height = 21
        DataField = 'TTR_PES_CODIGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 2
      end
      object ttr_conta: TDBEdit
        Left = 379
        Top = 103
        Width = 112
        Height = 21
        DataField = 'TTR_CTB_CODIGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 3
      end
      object ttp_condicao: TDBEdit
        Left = 617
        Top = 103
        Width = 112
        Height = 21
        DataField = 'TTR_CON_CODIGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 4
      end
      object ttr_descricao: TDBEdit
        Left = 123
        Top = 57
        Width = 606
        Height = 21
        DataField = 'TTR_DESCRICAO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 5
      end
      object ttr_emissao: TDBEdit
        Left = 123
        Top = 81
        Width = 149
        Height = 21
        DataField = 'TTR_DT_EMISSAO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 6
      end
      object ttr_vencimento: TDBEdit
        Left = 379
        Top = 81
        Width = 112
        Height = 21
        DataField = 'TTR_DT_VENCIMENTO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 7
      end
      object ttp_dt_pagamento: TDBEdit
        Left = 617
        Top = 81
        Width = 112
        Height = 21
        DataField = 'TTR_DT_PAGAMENTO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 8
      end
      object ttr_dt_baixa: TDBEdit
        Left = 379
        Top = 201
        Width = 114
        Height = 21
        DataField = 'TTR_DT_BAIXA'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 9
      end
      object ttr_dt_cancelamento: TDBEdit
        Left = 617
        Top = 201
        Width = 112
        Height = 21
        DataField = 'TTR_DT_EMISSAO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 10
      end
      object ttr_tp_titulo: TDBEdit
        Left = 123
        Top = 103
        Width = 149
        Height = 21
        DataField = 'TTR_TP_TITULO'
        DataSource = DM_contasreceber.D_contasreceber
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
      object ttr_desconto: TDBEdit
        Left = 123
        Top = 125
        Width = 149
        Height = 21
        DataField = 'TTR_DESCONTO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 17
      end
      object ttr_parcela: TDBEdit
        Left = 123
        Top = 147
        Width = 149
        Height = 21
        DataField = 'TTR_PARCELA'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 18
      end
      object ttr_vl_original: TDBEdit
        Left = 123
        Top = 169
        Width = 149
        Height = 21
        DataField = 'TTR_VL_ORIGINAL'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 19
      end
      object ttr_vl_pago: TDBEdit
        Left = 379
        Top = 179
        Width = 114
        Height = 21
        DataField = 'TTR_VL_PAGO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 20
      end
      object ttr_vl_total: TDBEdit
        Left = 617
        Top = 179
        Width = 112
        Height = 21
        DataField = 'TTR_VL_TOTAL'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 21
      end
      object ttr_mora: TDBEdit
        Left = 379
        Top = 125
        Width = 112
        Height = 21
        DataField = 'TTR_MR_DIARIA'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 22
      end
      object ttp_multa: TDBEdit
        Left = 617
        Top = 125
        Width = 112
        Height = 21
        DataField = 'TTR_MT_ATRASO'
        DataSource = DM_contasreceber.D_contasreceber
        TabOrder = 23
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 268
        Top = 232
        Width = 250
        Height = 54
        Columns = 3
        DataField = 'TTR_SITUACAO'
        DataSource = DM_contasreceber.D_contasreceber
        Items.Strings = (
          'ABERTO '
          'PAGO '
          'CANCELADO')
        TabOrder = 24
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 379
        Top = 146
        Width = 112
        Height = 33
        Columns = 2
        DataField = 'TTR_TP_MORA'
        DataSource = DM_contasreceber.D_contasreceber
        Items.Strings = (
          'R$'
          '%')
        TabOrder = 25
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 617
        Top = 146
        Width = 111
        Height = 33
        Columns = 2
        DataField = 'TTR_TP_MULTA'
        DataSource = DM_contasreceber.D_contasreceber
        Items.Strings = (
          'R$'
          '%')
        TabOrder = 26
      end
    end
  end
end
