inherited M_planodecontas: TM_planodecontas
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o Plano de Contas - ProjetoDesnecessauro'
  ClientHeight = 189
  ClientWidth = 424
  ExplicitWidth = 440
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 148
    Width = 424
    ExplicitTop = 148
    ExplicitWidth = 424
    inherited sbCancelar: TSpeedButton
      Left = 327
      ExplicitLeft = 327
    end
  end
  inherited gbInfos: TGroupBox
    Width = 424
    Height = 148
    ExplicitWidth = 424
    ExplicitHeight = 148
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 80
      Width = 88
      Height = 13
      Caption = 'N'#250'mero da Conta:'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 184
      Top = 80
      Width = 78
      Height = 13
      Caption = 'Nome da Conta:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 344
      Top = 80
      Width = 45
      Height = 13
      Caption = 'Anal'#237'tica?'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 53
      Width = 73
      Height = 21
      DataField = 'PLN_COD_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 99
      Width = 109
      Height = 21
      DataField = 'PLN_DESC_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 184
      Top = 99
      Width = 145
      Height = 21
      DataField = 'PLN_DESC_CONTA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 344
      Top = 99
      Width = 97
      Height = 17
      DataField = 'PLN_ANALITICA'
      DataSource = DM_contabil.Dplanodecontas
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
end
