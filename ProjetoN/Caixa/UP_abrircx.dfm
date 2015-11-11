object UP_abrircaixa: TUP_abrircaixa
  Left = 0
  Top = 0
  Caption = 'Abrir Caixa'
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
  object lb_dtutimofechacx: TLabel
    Left = 16
    Top = 24
    Width = 143
    Height = 14
    Caption = 'Data Fechamento anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_saldoant: TLabel
    Left = 16
    Top = 68
    Width = 77
    Height = 14
    Caption = 'Saldo Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_datainicial: TLabel
    Left = 16
    Top = 118
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
  object dt_dataultfechamento: TDateTimePicker
    Left = 176
    Top = 17
    Width = 129
    Height = 21
    Date = 42319.060105775460000000
    Time = 42319.060105775460000000
    Enabled = False
    TabOrder = 0
  end
  object Edit_saldoant: TEdit
    Left = 112
    Top = 61
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object dt_abertura: TDateTimePicker
    Left = 112
    Top = 111
    Width = 129
    Height = 21
    Date = 42319.060784386570000000
    Time = 42319.060784386570000000
    TabOrder = 2
  end
  object btn_abrircx: TButton
    Left = 16
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Abrir Caixa'
    TabOrder = 3
  end
  object btn_cancelarcx: TButton
    Left = 225
    Top = 168
    Width = 121
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 4
  end
end
