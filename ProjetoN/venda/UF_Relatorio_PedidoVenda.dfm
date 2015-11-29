object f_Pedidos: Tf_Pedidos
  Left = 0
  Top = 0
  ClientHeight = 236
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 186
    Height = 169
    Caption = 'Pedido de Venda Data '
    TabOrder = 0
    object Edit1: TEdit
      Left = 62
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 62
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
  end
  object GroupBox2: TGroupBox
    Left = 192
    Top = 0
    Width = 183
    Height = 169
    Caption = 'Pedido dia Atual'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
end
