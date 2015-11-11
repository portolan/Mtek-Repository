object REL_balancocx: TREL_balancocx
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Balan'#231'o por Per'#237'odo'
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
  object lb_inicialcx2: TLabel
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
  object lb_finalcx2: TLabel
    Left = 189
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
  object dt_balancoini: TDateTimePicker
    Left = 24
    Top = 52
    Width = 129
    Height = 21
    Date = 42318.985177812500000000
    Time = 42318.985177812500000000
    TabOrder = 0
  end
  object dt_balancofini: TDateTimePicker
    Left = 189
    Top = 52
    Width = 129
    Height = 21
    Date = 42318.985325868050000000
    Time = 42318.985325868050000000
    TabOrder = 1
  end
  object btn_relbalancaixa: TButton
    Left = 96
    Top = 120
    Width = 145
    Height = 49
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 2
  end
end
