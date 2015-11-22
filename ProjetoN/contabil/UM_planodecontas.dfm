inherited M_planodecontas: TM_planodecontas
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o Plano de Contas - ProjetoNecessauro'
  ClientHeight = 150
  ClientWidth = 385
  ExplicitWidth = 401
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 109
    Width = 385
    ExplicitTop = 109
    ExplicitWidth = 385
    inherited sbCancelar: TSpeedButton
      Left = 288
      ExplicitLeft = 327
    end
  end
  inherited gbInfos: TGroupBox
    Width = 385
    Height = 109
    ExplicitWidth = 385
    ExplicitHeight = 109
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 152
      Top = 62
      Width = 78
      Height = 13
      Caption = 'Nome da Conta:'
    end
    object Label4: TLabel
      Left = 327
      Top = 62
      Width = 45
      Height = 13
      Caption = 'Anal'#237'tica?'
    end
    object Label5: TLabel
      Left = 16
      Top = 62
      Width = 33
      Height = 13
      Caption = 'Conta:'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 35
      Width = 73
      Height = 21
      DataField = 'PLN_COD_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 327
      Top = 81
      Width = 97
      Height = 17
      DataField = 'PLN_ANALITICA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 81
      Width = 108
      Height = 21
      DataField = 'PLN_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 152
      Top = 81
      Width = 153
      Height = 21
      DataField = 'PLN_DESC_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 2
    end
  end
end
