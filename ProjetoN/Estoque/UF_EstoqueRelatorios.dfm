object FEstoqueRelatorios: TFEstoqueRelatorios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rios'
  ClientHeight = 339
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 97
    Caption = 'Movimento de Caixa por data'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 102
      Top = 69
      Width = 86
      Height = 22
      Caption = 'Listar'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Dt. Inicial'
    end
    object Label2: TLabel
      Left = 16
      Top = 45
      Width = 40
      Height = 13
      Caption = 'Dt. Final'
    end
    object editDtInicial: TMaskEdit
      Left = 67
      Top = 16
      Width = 120
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '  /  /  '
    end
    object editDtFinal: TMaskEdit
      Left = 67
      Top = 42
      Width = 120
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 1
      Text = '  /  /  '
    end
  end
end
