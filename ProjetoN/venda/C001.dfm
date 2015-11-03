inherited CAD_PEDIDO_VENDA: TCAD_PEDIDO_VENDA
  Caption = 'Cadastro de Pedido de Venda'
  ClientHeight = 404
  ClientWidth = 735
  ExplicitWidth = 751
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 168
    Top = 80
    Width = 97
    Height = 1
  end
  inherited pnRodape: TPanel
    Top = 363
    Width = 735
    ExplicitTop = 363
    ExplicitWidth = 735
    inherited sbCancelar: TSpeedButton
      Left = 638
      ExplicitLeft = 633
      ExplicitTop = 6
      ExplicitHeight = 39
    end
    object sbDetalhe: TButton
      Left = 277
      Top = 1
      Width = 201
      Height = 39
      Caption = 'Adicionar Detalhes do Pedido'
      TabOrder = 0
      OnClick = sbDetalheClick
    end
  end
  inherited gbInfos: TGroupBox
    Width = 735
    Height = 363
    Caption = ''
    ExplicitWidth = 735
    ExplicitHeight = 363
    object lb_Pedido: TLabel
      Left = 65
      Top = 22
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object lb_Estabelecimento: TLabel
      Left = 19
      Top = 59
      Width = 78
      Height = 13
      Caption = 'Estabelecimento'
    end
    object lb_Deposito: TLabel
      Left = 55
      Top = 99
      Width = 42
      Height = 13
      Caption = 'Dep'#243'sito'
    end
    object lb_Cliente: TLabel
      Left = 61
      Top = 139
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object lb_Contato: TLabel
      Left = 55
      Top = 171
      Width = 39
      Height = 13
      Caption = 'Contato'
    end
    object lb_Tipo_Movimentacao: TLabel
      Left = 424
      Top = 22
      Width = 107
      Height = 13
      Caption = 'Tipo de Movimenta'#231#227'o'
    end
    object lb_Dt_Entrega: TLabel
      Left = 523
      Top = 77
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
    end
    object lb_Dt_Prazo_Entrega: TLabel
      Left = 519
      Top = 115
      Width = 83
      Height = 13
      Caption = 'Prazo de Entrega'
    end
    object lb_Status: TLabel
      Left = 571
      Top = 156
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 120
      Top = 51
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object DBComboBox2: TDBComboBox
      Left = 120
      Top = 96
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object DBComboBox3: TDBComboBox
      Left = 120
      Top = 136
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object DBComboBox4: TDBComboBox
      Left = 552
      Top = 19
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 608
      Top = 74
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 608
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 608
      Top = 153
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 200
      Width = 726
      Height = 160
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object ScrollBar1: TScrollBar
      Left = 3
      Top = 341
      Width = 726
      Height = 17
      PageSize = 0
      TabOrder = 10
    end
  end
end
