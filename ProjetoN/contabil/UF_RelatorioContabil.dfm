object F_RelatorioContabil: TF_RelatorioContabil
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio - Contabilidade - ProjetoNecessauro'
  ClientHeight = 212
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 327
    Top = 0
    Width = 282
    Height = 89
    Caption = 'Raz'#227'o'
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 35
      Width = 96
      Height = 13
      Caption = 'Saldo por Empresa: '
    end
    object Rsoma: TEdit
      Left = 122
      Top = 32
      Width = 39
      Height = 21
      TabOrder = 0
    end
    object SALDO_EMPRESA: TButton
      Left = 175
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = SALDO_EMPRESAClick
    end
  end
  object GroupBox2: TGroupBox
    Left = -6
    Top = 0
    Width = 327
    Height = 209
    Caption = 'Lan'#231'amentos'
    TabOrder = 1
    object Label1: TLabel
      Left = 115
      Top = 56
      Width = 6
      Height = 13
      Caption = #225
    end
    object Label2: TLabel
      Left = 40
      Top = 30
      Width = 85
      Height = 13
      Caption = 'Relat'#243'rio por Dias'
    end
    object LANC_DIAS: TButton
      Left = 216
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = LANC_DIASClick
    end
    object LANC_DEB: TButton
      Left = 40
      Top = 90
      Width = 251
      Height = 47
      Caption = 'Lan'#231'amentos D'#233'bito'
      TabOrder = 1
      OnClick = LANC_DEBClick
    end
    object LANC_CRED: TButton
      Left = 40
      Top = 143
      Width = 251
      Height = 48
      Caption = 'Lan'#231'amentos Cr'#233'dito'
      TabOrder = 2
      OnClick = LANC_CREDClick
    end
  end
  object editDtInicial: TMaskEdit
    Left = 34
    Top = 53
    Width = 69
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object editDtFinal: TMaskEdit
    Left = 121
    Top = 53
    Width = 63
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object GroupBox3: TGroupBox
    Left = 327
    Top = 90
    Width = 282
    Height = 119
    Caption = 'Gerais'
    TabOrder = 4
    object Label5: TLabel
      Left = 32
      Top = 48
      Width = 3
      Height = 13
    end
    object empresa: TButton
      Left = 49
      Top = 23
      Width = 177
      Height = 19
      Caption = 'Listar Empresas'
      TabOrder = 0
      OnClick = empresaClick
    end
    object dept: TButton
      Left = 49
      Top = 48
      Width = 177
      Height = 19
      Caption = 'Listar Departamentos'
      TabOrder = 1
      OnClick = deptClick
    end
    object ep: TButton
      Left = 49
      Top = 73
      Width = 177
      Height = 19
      Caption = 'Listar Emp x Dept'
      TabOrder = 2
      OnClick = epClick
    end
  end
end
