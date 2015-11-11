object REL_prevtitulos: TREL_prevtitulos
  Left = 0
  Top = 0
  Caption = ' Previs'#227'o de Contas Receber/ Pagar '
  ClientHeight = 201
  ClientWidth = 378
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
  object lb_finalcx: TLabel
    Left = 205
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
  object btn_relfechamcaixa: TButton
    Left = 112
    Top = 120
    Width = 145
    Height = 49
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 205
    Top = 52
    Width = 129
    Height = 21
    Date = 42318.985325868050000000
    Time = 42318.985325868050000000
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 52
    Width = 129
    Height = 21
    Date = 42318.985177812500000000
    Time = 42318.985177812500000000
    TabOrder = 2
  end
end
