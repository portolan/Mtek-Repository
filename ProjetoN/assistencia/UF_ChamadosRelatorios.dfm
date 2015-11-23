object F_ChamadosRelatorios: TF_ChamadosRelatorios
  Left = 0
  Top = 0
  Caption = 'Relatorios'
  ClientHeight = 258
  ClientWidth = 464
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
    Width = 249
    Height = 129
    Caption = 'Chamados por Data'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 161
      Top = 96
      Width = 70
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 41
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 41
      Top = 59
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object editDtInicial: TMaskEdit
      Left = 100
      Top = 29
      Width = 78
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object editDtFinal: TMaskEdit
      Left = 100
      Top = 56
      Width = 78
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Chamados: TGroupBox
    Left = 0
    Top = 135
    Width = 169
    Height = 126
    Caption = 'Chamados'
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 32
      Top = 56
      Width = 97
      Height = 22
      Caption = 'Chamados do Dia'
      OnClick = SpeedButton2Click
    end
  end
end
