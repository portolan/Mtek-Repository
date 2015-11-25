inherited M_novobanco: TM_novobanco
  Caption = 'Banco'
  ClientHeight = 224
  ClientWidth = 537
  ExplicitWidth = 553
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 183
    Width = 537
    ExplicitTop = 183
    ExplicitWidth = 537
    inherited sbCancelar: TSpeedButton
      Left = 440
      ExplicitLeft = 440
    end
  end
  inherited gbInfos: TGroupBox
    Width = 537
    Height = 183
    ExplicitWidth = 537
    ExplicitHeight = 183
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 85
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 42
      Width = 134
      Height = 21
      DataField = 'BAN_CODIGO'
      DataSource = DM_financeiro.D_banco
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 104
      Width = 304
      Height = 21
      DataField = 'BAN_DESCRICAO'
      DataSource = DM_financeiro.D_banco
      TabOrder = 1
    end
  end
end
