inherited M_centro: TM_centro
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Centro de Custo - ProjetoNecessauro'
  ClientHeight = 214
  ClientWidth = 506
  ExplicitWidth = 522
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 173
    Width = 506
    ExplicitTop = 173
    ExplicitWidth = 506
    inherited sbCancelar: TSpeedButton
      Left = 409
      ExplicitLeft = 354
    end
  end
  inherited gbInfos: TGroupBox
    Width = 506
    Height = 173
    ExplicitWidth = 506
    ExplicitHeight = 173
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 54
      Height = 13
      Caption = 'C'#243'digo C.C'
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 78
      Height = 13
      Caption = 'Estabelecimento'
    end
    object Label3: TLabel
      Left = 272
      Top = 67
      Width = 58
      Height = 13
      Caption = 'N'#250'mero C.C'
    end
    object Label4: TLabel
      Left = 16
      Top = 113
      Width = 71
      Height = 13
      Caption = 'Descri'#231#227'o C.C.'
    end
    object Label5: TLabel
      Left = 409
      Top = 67
      Width = 45
      Height = 13
      Caption = 'Analitico?'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 54
      Height = 21
      DataField = 'CEC_COD'
      DataSource = DM_contabil.Dcentro
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 272
      Top = 86
      Width = 121
      Height = 21
      DataField = 'CEC_NUM_CC'
      DataSource = DM_contabil.Dcentro
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 132
      Width = 236
      Height = 21
      DataField = 'CEC_DESC_CC'
      DataSource = DM_contabil.Dcentro
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 417
      Top = 86
      Width = 97
      Height = 17
      DataField = 'CEC_ANALITICO'
      DataSource = DM_contabil.Dcentro
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 16
    Top = 86
    Width = 236
    Height = 21
    DataField = 'CEC_COD_GRUPO'
    DataSource = DM_contabil.Dcentro
    KeyField = 'EMP_COD'
    ListField = 'EMP_RAZAO'
    ListSource = DM_contabil.Dempresa
    TabOrder = 2
  end
end
