object REL_fechamentocx: TREL_fechamentocx
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Fechamento Caixa'
  ClientHeight = 201
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lb_inicialcx: TLabel
    Left = 24
    Top = 32
    Width = 58
    Height = 14
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_finalcx: TLabel
    Left = 176
    Top = 32
    Width = 52
    Height = 14
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 53
    Width = 129
    Height = 21
    Date = 42318.985177812500000000
    Time = 42318.985177812500000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 176
    Top = 52
    Width = 129
    Height = 21
    Date = 42318.985325868050000000
    Time = 42318.985325868050000000
    TabOrder = 1
  end
  object btn_relfechamcaixa: TButton
    Left = 96
    Top = 120
    Width = 145
    Height = 49
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 2
  end
end
