inherited MPessoa: TMPessoa
  Caption = 'MPessoa'
  ClientHeight = 520
  ClientWidth = 714
  ExplicitWidth = 730
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 479
    Width = 714
    ExplicitTop = 479
    ExplicitWidth = 714
    inherited sbCancelar: TSpeedButton
      Left = 617
      ExplicitLeft = 617
    end
  end
  inherited gbInfos: TGroupBox
    Width = 714
    Height = 479
    ExplicitWidth = 714
    ExplicitHeight = 479
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 156
      Top = 26
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label4: TLabel
      Left = 310
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Apelido'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 149
      Width = 39
      Height = 13
      Caption = 'Contato'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 502
      Top = 149
      Width = 60
      Height = 13
      Caption = 'Tel. Contato'
      FocusControl = DBEdit3
    end
    object Label7: TLabel
      Left = 16
      Top = 192
      Width = 51
      Height = 13
      Caption = 'Telefone 1'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 221
      Top = 192
      Width = 51
      Height = 13
      Caption = 'Telefone 2'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 426
      Top = 192
      Width = 51
      Height = 13
      Caption = 'Telefone 3'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 16
      Top = 235
      Width = 18
      Height = 13
      Caption = 'Fax'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 182
      Top = 235
      Width = 29
      Height = 13
      Caption = 'Ramal'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 511
      Top = 26
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = DBEdit11
    end
    object Label14: TLabel
      Left = 16
      Top = 106
      Width = 14
      Height = 13
      Caption = 'RG'
      FocusControl = DBEdit13
    end
    object Label15: TLabel
      Left = 156
      Top = 106
      Width = 68
      Height = 13
      Caption = 'Insc. Estadual'
      FocusControl = DBEdit14
    end
    object Label16: TLabel
      Left = 283
      Top = 106
      Width = 70
      Height = 13
      Caption = 'Insc. Municipal'
      FocusControl = DBEdit15
    end
    object Label17: TLabel
      Left = 16
      Top = 280
      Width = 28
      Height = 13
      Caption = 'E-Mail'
      FocusControl = DBEdit16
    end
    object Label18: TLabel
      Left = 581
      Top = 235
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit17
    end
    object Label19: TLabel
      Left = 16
      Top = 322
      Width = 55
      Height = 13
      Caption = 'Logradouro'
      FocusControl = DBEdit18
    end
    object Label20: TLabel
      Left = 491
      Top = 322
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit19
    end
    object Label13: TLabel
      Left = 16
      Top = 368
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = DBEdit12
    end
    object Label21: TLabel
      Left = 416
      Top = 368
      Width = 12
      Height = 13
      Caption = 'N'#186
      FocusControl = DBEdit20
    end
    object Label22: TLabel
      Left = 491
      Top = 368
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit21
    end
    object Label23: TLabel
      Left = 16
      Top = 408
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label24: TLabel
      Left = 77
      Top = 408
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
      FocusControl = DBEdit23
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'PESS_CODIGO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 82
      Width = 685
      Height = 21
      DataField = 'PESS_NOME'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 307
      Top = 40
      Width = 198
      Height = 21
      DataField = 'PESS_APELIDO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 165
      Width = 480
      Height = 21
      DataField = 'PESS_CONTATO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 502
      Top = 165
      Width = 199
      Height = 21
      DataField = 'PESS_TELCONTATO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 208
      Width = 199
      Height = 21
      DataField = 'PESS_TEL1'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 221
      Top = 208
      Width = 199
      Height = 21
      DataField = 'PESS_TEL2'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 426
      Top = 208
      Width = 199
      Height = 21
      DataField = 'PESS_TEL3'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 16
      Top = 251
      Width = 160
      Height = 21
      DataField = 'PESS_FAX'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 182
      Top = 251
      Width = 134
      Height = 21
      DataField = 'PESS_RAMAL'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 511
      Top = 40
      Width = 190
      Height = 21
      DataField = 'PESS_CNPJ'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 10
    end
    object DBEdit13: TDBEdit
      Left = 16
      Top = 122
      Width = 134
      Height = 21
      DataField = 'PESS_RG'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 11
    end
    object DBEdit14: TDBEdit
      Left = 156
      Top = 122
      Width = 121
      Height = 21
      DataField = 'PESS_INSCESTADUAL'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 283
      Top = 122
      Width = 199
      Height = 21
      DataField = 'PESS_INSCMUNICIPAL'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 16
      Top = 295
      Width = 685
      Height = 21
      DataField = 'PESS_EMAIL'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 581
      Top = 251
      Width = 120
      Height = 21
      DataField = 'PESS_DTCADASTRO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 15
    end
    object DBEdit18: TDBEdit
      Left = 16
      Top = 340
      Width = 469
      Height = 21
      DataField = 'PESS_LOGRADOURO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 16
    end
    object DBEdit19: TDBEdit
      Left = 491
      Top = 340
      Width = 210
      Height = 21
      DataField = 'PESS_BAIRRO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 17
    end
    object DBEdit12: TDBEdit
      Left = 16
      Top = 384
      Width = 394
      Height = 21
      DataField = 'PESS_COMPLEMENTO'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 18
    end
    object DBEdit20: TDBEdit
      Left = 416
      Top = 384
      Width = 69
      Height = 21
      DataField = 'PESS_NR'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 19
    end
    object DBEdit21: TDBEdit
      Left = 491
      Top = 384
      Width = 210
      Height = 21
      DataField = 'PESS_CIDADE'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 20
    end
    object DBEdit23: TDBEdit
      Left = 77
      Top = 424
      Width = 264
      Height = 21
      DataField = 'PESS_PAIS'
      DataSource = dmPedCompra.DSPessoa
      TabOrder = 21
    end
    object DBComboBox1: TDBComboBox
      Left = 16
      Top = 424
      Width = 55
      Height = 21
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 22
    end
    object RadioGroup1: TRadioGroup
      Left = 500
      Top = 109
      Width = 201
      Height = 34
      Caption = ' Tipo de Pessoa '
      Columns = 2
      Items.Strings = (
        'Fisico'
        'Juridico')
      TabOrder = 23
    end
  end
  object ComboBox1: TComboBox
    Left = 156
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
    Items.Strings = (
      'Funcionario'
      'Cliente'
      'Fornecedor')
  end
end
