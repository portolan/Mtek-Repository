inherited M_centro: TM_centro
  Caption = 'Cadastro de Centro de Custo'
  ClientHeight = 211
  ClientWidth = 451
  ExplicitWidth = 467
  ExplicitHeight = 250
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 170
    Width = 451
    ExplicitTop = 170
    ExplicitWidth = 451
    inherited sbCancelar: TSpeedButton
      Left = 354
      ExplicitLeft = 354
    end
  end
  inherited gbInfos: TGroupBox
    Width = 451
    Height = 170
    ExplicitWidth = 451
    ExplicitHeight = 170
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 54
      Height = 13
      Caption = 'C'#243'digo C.C'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 78
      Height = 13
      Caption = 'Estabelecimento'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 113
      Width = 58
      Height = 13
      Caption = 'N'#250'mero C.C'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 176
      Top = 67
      Width = 71
      Height = 13
      Caption = 'Descri'#231#227'o C.C.'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 176
      Top = 113
      Width = 45
      Height = 13
      Caption = 'Analitico?'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'COD_CC'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 86
      Width = 49
      Height = 21
      DataField = 'COD_GRUPO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 132
      Width = 134
      Height = 21
      DataField = 'NUM_CC'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 86
      Width = 225
      Height = 21
      DataField = 'DESC_CC'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 184
      Top = 132
      Width = 97
      Height = 17
      DataField = 'ANALITICO'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_contabil.centro
    Left = 408
    Top = 8
  end
end
