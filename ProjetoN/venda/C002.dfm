inherited CAD_DETALHE_PEDIDO: TCAD_DETALHE_PEDIDO
  Caption = 'Detalhe do Pedido'
  ClientHeight = 530
  ClientWidth = 700
  ExplicitWidth = 716
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 489
    Width = 700
    ExplicitTop = 489
    ExplicitWidth = 700
    inherited sbGravar: TSpeedButton
      Width = 90
      Caption = 'Confirmar'
      ExplicitLeft = 0
      ExplicitWidth = 90
      ExplicitHeight = 39
    end
    inherited sbCancelar: TSpeedButton
      Left = 603
      ExplicitLeft = 604
      ExplicitHeight = 39
    end
    object SpeedButton3: TSpeedButton
      Left = 169
      Top = 1
      Width = 90
      Height = 37
      Caption = 'Exibir Detalhes'
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 383
      Top = 2
      Width = 90
      Height = 35
      Caption = 'Enviar '
    end
  end
  inherited gbInfos: TGroupBox
    Width = 700
    Height = 489
    Caption = ''
    ExplicitWidth = 700
    ExplicitHeight = 489
    object panel2: TPanel
      Left = 8
      Top = 8
      Width = 687
      Height = 89
      TabOrder = 0
      object lb_Sequencia: TLabel
        Left = 481
        Top = 17
        Width = 49
        Height = 13
        Caption = 'Sequencia'
      end
      object lb_Status: TLabel
        Left = 499
        Top = 52
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object lb_Pedido: TLabel
        Left = 92
        Top = 17
        Width = 32
        Height = 13
        Caption = 'Pedido'
      end
      object lb_Tipo_Movimentacao: TLabel
        Left = 17
        Top = 52
        Width = 107
        Height = 13
        Caption = 'Tipo de Movimenta'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 544
        Top = 49
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object DBComboBox4: TDBComboBox
        Left = 130
        Top = 49
        Width = 145
        Height = 21
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 544
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 8
      Top = 103
      Width = 687
      Height = 138
      TabOrder = 1
      object lb_Estabelecimento: TLabel
        Left = 26
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Estabelecimento'
      end
      object lb_Deposito: TLabel
        Left = 62
        Top = 48
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object lb_Produto: TLabel
        Left = 73
        Top = 80
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object lb_Descricao: TLabel
        Left = 73
        Top = 112
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object lb_Unidade: TLabel
        Left = 478
        Top = 108
        Width = 39
        Height = 13
        Caption = 'Unidade'
      end
      object SpeedButton2: TSpeedButton
        Left = 278
        Top = 79
        Width = 23
        Height = 22
      end
      object DBComboBox1: TDBComboBox
        Left = 127
        Top = 5
        Width = 145
        Height = 21
        TabOrder = 0
      end
      object DBComboBox2: TDBComboBox
        Left = 127
        Top = 45
        Width = 145
        Height = 21
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 80
        Width = 144
        Height = 21
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 107
        Width = 305
        Height = 21
        TabOrder = 3
      end
      object DBComboBox3: TDBComboBox
        Left = 525
        Top = 103
        Width = 145
        Height = 21
        TabOrder = 4
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 248
      Width = 686
      Height = 236
      TabOrder = 2
      object lb_Quantidade: TLabel
        Left = 62
        Top = 13
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object lb_Lista_Preco: TLabel
        Left = 51
        Top = 51
        Width = 67
        Height = 13
        Caption = 'Lista de Pre'#231'o'
      end
      object lb_Desconto: TLabel
        Left = 77
        Top = 121
        Width = 45
        Height = 13
        Caption = 'Desconto'
      end
      object lb_Valor_Unitario: TLabel
        Left = 442
        Top = 49
        Width = 64
        Height = 13
        Caption = 'Valor Unit'#225'rio'
      end
      object Label2: TLabel
        Left = 396
        Top = 24
        Width = 107
        Height = 13
        Caption = 'Quantidade Dispon'#237'vel'
      end
      object lb_Data_Base: TLabel
        Left = 73
        Top = 88
        Width = 49
        Height = 13
        Caption = 'Data Base'
      end
      object lb_Valor_Total: TLabel
        Left = 452
        Top = 80
        Width = 51
        Height = 13
        Caption = 'Valor Total'
      end
      object lb_Dt_Entrega: TLabel
        Left = 428
        Top = 155
        Width = 79
        Height = 13
        Caption = 'Data de Entrada'
      end
      object lb_Data_Cliente: TLabel
        Left = 428
        Top = 182
        Width = 74
        Height = 13
        Caption = 'Data do Cliente'
      end
      object lb_n_ordem_compra: TLabel
        Left = 26
        Top = 190
        Width = 87
        Height = 13
        Caption = 'N'#186' Ordem Compra'
      end
      object lb_Reajuste: TLabel
        Left = 452
        Top = 107
        Width = 43
        Height = 13
        Caption = 'Reajuste'
      end
      object SpeedButton1: TSpeedButton
        Left = 278
        Top = 44
        Width = 23
        Height = 22
      end
      object Label1: TLabel
        Left = 8
        Top = 155
        Width = 116
        Height = 13
        Caption = 'Condi'#231#227'o de Pagamento'
      end
      object DBEdit6: TDBEdit
        Left = 128
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 128
        Top = 45
        Width = 144
        Height = 21
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 128
        Top = 116
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 525
        Top = 46
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 525
        Top = 19
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object DBEdit11: TDBEdit
        Left = 128
        Top = 83
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object DBEdit12: TDBEdit
        Left = 525
        Top = 75
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object DBEdit14: TDBEdit
        Left = 525
        Top = 179
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object DBEdit15: TDBEdit
        Left = 128
        Top = 185
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object DBComboBox5: TDBComboBox
        Left = 525
        Top = 102
        Width = 145
        Height = 21
        TabOrder = 9
      end
      object DBEdit13: TDBEdit
        Left = 525
        Top = 151
        Width = 121
        Height = 21
        TabOrder = 10
      end
      object ComboBox1: TComboBox
        Left = 128
        Top = 151
        Width = 145
        Height = 21
        TabOrder = 11
        Text = 'ComboBox1'
      end
    end
  end
end
