inherited m_novacontabancaria: Tm_novacontabancaria
  Caption = 'Conta Bancaria'
  ClientHeight = 240
  ClientWidth = 491
  ExplicitWidth = 507
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 199
    Width = 491
    ExplicitTop = 199
    ExplicitWidth = 491
    inherited sbCancelar: TSpeedButton
      Left = 394
      ExplicitLeft = 394
    end
  end
  inherited gbInfos: TGroupBox
    Width = 491
    Height = 199
    ExplicitWidth = 491
    ExplicitHeight = 199
    object Label1: TLabel
      Left = 15
      Top = 75
      Width = 38
      Height = 13
      Caption = 'Agencia'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 167
      Top = 21
      Width = 65
      Height = 13
      Caption = 'Codigo Banco'
    end
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 167
      Top = 75
      Width = 29
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 15
      Top = 128
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label6: TLabel
      Left = 167
      Top = 128
      Width = 34
      Height = 13
      Caption = 'Pessoa'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 184
      Top = 328
      Width = 58
      Height = 13
      Caption = 'CTB_SALDO'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 184
      Top = 368
      Width = 63
      Height = 13
      Caption = 'CTB_STATUS'
      FocusControl = DBEdit8
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 94
      Width = 134
      Height = 21
      DataField = 'CTB_AGENCIA'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'CTB_CODIGO'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 167
      Top = 94
      Width = 178
      Height = 21
      DataField = 'CTB_CONTA'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 167
      Top = 147
      Width = 178
      Height = 21
      DataField = 'CTB_PESSOA'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 184
      Top = 344
      Width = 251
      Height = 21
      DataField = 'CTB_SALDO'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 184
      Top = 384
      Width = 17
      Height = 21
      DataField = 'CTB_STATUS'
      DataSource = DM_financeiro.D_contasbancarias
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 167
      Top = 40
      Width = 178
      Height = 21
      DataField = 'CTB_BAN_CODIGO'
      DataSource = DM_financeiro.D_contasbancarias
      KeyField = 'BAN_CODIGO'
      ListField = 'BAN_DESCRICAO'
      ListSource = DM_financeiro.D_banco
      TabOrder = 6
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 147
      Width = 134
      Height = 21
      DataField = 'CTB_EMP_CODIGO'
      DataSource = DM_financeiro.D_contasbancarias
      KeyField = 'EMP_COD'
      ListField = 'EMP_RAZAO'
      ListSource = DM_contabil.Dempresa
      TabOrder = 7
    end
  end
end
