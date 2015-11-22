inherited M_historico: TM_historico
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o Historico - ProjetoNecessauro'
  ClientHeight = 134
  ClientWidth = 466
  ExplicitWidth = 482
  ExplicitHeight = 173
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 93
    Width = 466
    ExplicitTop = 93
    ExplicitWidth = 466
    inherited sbCancelar: TSpeedButton
      Left = 369
      ExplicitLeft = 369
    end
  end
  inherited gbInfos: TGroupBox
    Width = 466
    Height = 93
    ExplicitWidth = 466
    ExplicitHeight = 93
    object Label1: TLabel
      Left = 20
      Top = 32
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 168
      Top = 32
      Width = 45
      Height = 13
      Caption = 'Hist'#243'rico:'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 51
      Width = 77
      Height = 21
      DataField = 'HIST_COD'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 51
      Width = 264
      Height = 21
      DataField = 'HIST_NOME'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_contabil.historico
    Left = 400
    Top = 8
  end
end
