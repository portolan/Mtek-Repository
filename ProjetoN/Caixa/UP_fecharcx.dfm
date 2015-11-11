object UP_fecharcaixa: TUP_fecharcaixa
  Left = 0
  Top = 0
  Caption = 'UP_fecharcaixa'
  ClientHeight = 239
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lb_dataabriu: TLabel
    Left = 16
    Top = 32
    Width = 77
    Height = 14
    Caption = 'Data Abertura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 87
    Width = 97
    Height = 14
    Caption = 'Data Fechamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 135
    Width = 61
    Height = 14
    Caption = 'Saldo Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dt_abriu: TDateTimePicker
    Left = 144
    Top = 25
    Width = 129
    Height = 21
    Date = 42319.060105775460000000
    Time = 42319.060105775460000000
    Enabled = False
    TabOrder = 0
  end
  object dt_fechou: TDateTimePicker
    Left = 144
    Top = 80
    Width = 129
    Height = 21
    Date = 42319.060105775460000000
    Time = 42319.060105775460000000
    TabOrder = 1
  end
  object Edit_saldototal: TEdit
    Left = 96
    Top = 133
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object btn_cancelacx: TButton
    Left = 225
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object btn_fecharcx: TButton
    Left = 16
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Fechar Caixa'
    TabOrder = 4
  end
end
