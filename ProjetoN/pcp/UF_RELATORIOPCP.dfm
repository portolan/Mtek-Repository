object FRELATORIOPCP: TFRELATORIOPCP
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 260
  ClientWidth = 489
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
    Left = 0
    Top = 0
    Width = 161
    Height = 97
    Caption = 'Ordens de Producao'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 32
      Top = 40
      Width = 89
      Height = 22
      Caption = 'Gerar '
      OnClick = SpeedButton1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 0
    Width = 169
    Height = 97
    Caption = 'Producoes em Andamento'
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 48
      Top = 40
      Width = 73
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 167
    Top = -1
    Width = 147
    Height = 98
    Caption = 'Fichas T'#233'cnicas'
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 32
      Top = 48
      Width = 65
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton3Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 97
    Width = 161
    Height = 128
    Caption = 'Ordens de producao por Data'
    TabOrder = 3
    object Label1: TLabel
      Left = 15
      Top = 28
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 15
      Top = 55
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object SpeedButton5: TSpeedButton
      Left = 92
      Top = 88
      Width = 57
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton5Click
    end
    object editDtInicial: TMaskEdit
      Left = 73
      Top = 25
      Width = 76
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object editDtFinal: TMaskEdit
      Left = 73
      Top = 52
      Width = 77
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
end
