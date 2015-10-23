object CPedido: TCPedido
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de Pedido'
  ClientHeight = 529
  ClientWidth = 645
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
  object Label1: TLabel
    Left = 18
    Top = 30
    Width = 32
    Height = 13
    Caption = 'Pedido'
  end
  object Label2: TLabel
    Left = 17
    Top = 65
    Width = 78
    Height = 13
    Caption = 'Estabelecimento'
  end
  object Label3: TLabel
    Left = 17
    Top = 105
    Width = 42
    Height = 13
    Caption = 'Dep'#243'sito'
  end
  object Label5: TLabel
    Left = 16
    Top = 147
    Width = 99
    Height = 13
    Caption = 'Tipo Movimenta'#231#227'o :'
  end
  object Label6: TLabel
    Left = 17
    Top = 187
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label7: TLabel
    Left = 16
    Top = 229
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  object Label4: TLabel
    Left = 328
    Top = 30
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label8: TLabel
    Left = 9
    Top = 265
    Width = 28
    Height = 13
    Caption = 'Datas'
  end
  object Panel1: TPanel
    Left = 5
    Top = 8
    Width = 635
    Height = 253
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 125
    Top = 227
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit7'
  end
  object Edit6: TEdit
    Left = 125
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit6'
  end
  object Edit4: TEdit
    Left = 126
    Top = 146
    Width = 38
    Height = 21
    TabOrder = 1
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 197
    Top = 146
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit5'
  end
  object ComboBox2: TComboBox
    Left = 125
    Top = 102
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'ComboBox1'
  end
  object ComboBox1: TComboBox
    Left = 125
    Top = 62
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'ComboBox2'
  end
  object Edit1: TEdit
    Left = 125
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Panel2: TPanel
    Left = 4
    Top = 281
    Width = 636
    Height = 144
    TabOrder = 8
    object Label9: TLabel
      Left = 24
      Top = 24
      Width = 122
      Height = 13
      Caption = 'Minimo para Faturamento'
    end
    object Label10: TLabel
      Left = 41
      Top = 63
      Width = 105
      Height = 13
      Caption = 'Previsto para Entrega'
    end
    object Label11: TLabel
      Left = 72
      Top = 104
      Width = 74
      Height = 13
      Caption = 'Data do Cliente'
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 431
    Width = 636
    Height = 90
    TabOrder = 9
  end
end
