inherited UM_CONDICAO_PG: TUM_CONDICAO_PG
  Caption = 'CONDI'#199#195'O DE PAGAMENTO'
  ClientHeight = 174
  ClientWidth = 472
  ExplicitWidth = 488
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 133
    Width = 472
    ExplicitTop = 133
    ExplicitWidth = 472
    inherited sbCancelar: TSpeedButton
      Left = 375
      ExplicitLeft = 375
    end
  end
  inherited gbInfos: TGroupBox
    Width = 472
    Height = 133
    ExplicitWidth = 472
    ExplicitHeight = 133
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'CDP_CODIGO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 85
      Height = 13
      Caption = 'CDP_DESCRICAO'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'CDP_CODIGO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 83
      Width = 441
      Height = 21
      DataField = 'CDP_DESCRICAO'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = UDM_Pedido_Venda.IB_CondicaoPG
    Left = 400
    Top = 32
  end
end
