object F_RelatorioContabil: TF_RelatorioContabil
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Contabilidade - ProjetoNecessauro'
  ClientHeight = 362
  ClientWidth = 688
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
    Left = 344
    Top = 0
    Width = 345
    Height = 185
    Caption = 'Raz'#227'o'
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 35
      Width = 92
      Height = 13
      Caption = 'Saldo da Empresa: '
    end
    object Rsoma: TEdit
      Left = 114
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
    Left = 0
    Top = 0
    Width = 344
    Height = 185
    Caption = 'Lan'#231'amentos'
    TabOrder = 1
    object Label1: TLabel
      Left = 115
      Top = 40
      Width = 6
      Height = 13
      Caption = #225
    end
    object Label2: TLabel
      Left = 40
      Top = 18
      Width = 84
      Height = 13
      Caption = 'Relat'#243'rio por dias'
    end
    object LANC_DIAS: TButton
      Left = 216
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = LANC_DIASClick
    end
  end
  object editDtInicial: TMaskEdit
    Left = 40
    Top = 37
    Width = 69
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object editDtFinal: TMaskEdit
    Left = 130
    Top = 37
    Width = 69
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
end
