inherited U_Condicao_Pg: TU_Condicao_Pg
  Caption = 'Condi'#231#227'o de Pagamento'
  ClientHeight = 179
  ClientWidth = 429
  OnClose = nil
  OnCreate = nil
  ExplicitWidth = 445
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 138
    Width = 429
    inherited sbCancelar: TSpeedButton
      Left = 332
    end
  end
  inherited gbInfos: TGroupBox
    Width = 429
    Height = 138
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'CDP_CODIGO'
      DataSource = DM_VENDA.DS_CondicaoPG
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 80
      Width = 385
      Height = 21
      DataField = 'CDP_DESCRICAO'
      DataSource = DM_VENDA.DS_CondicaoPG
      TabOrder = 1
    end
  end
end
