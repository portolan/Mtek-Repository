inherited MPrateleira: TMPrateleira
  Caption = 'MPrateleira'
  ExplicitWidth = 597
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbInfos: TGroupBox
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label2: TLabel
      Left = 149
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 9
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 9
      Top = 98
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object DBEdit2: TDBEdit
      Left = 149
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'PRAT_CODIGO'
      DataSource = DM_Estoque.DSPrateleira
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 9
      Top = 71
      Width = 560
      Height = 21
      DataField = 'PRAT_DESCRICAO'
      DataSource = DM_Estoque.DSPrateleira
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 9
      Top = 117
      Width = 560
      Height = 117
      DataField = 'PRAT_OBS'
      DataSource = DM_Estoque.DSPrateleira
      TabOrder = 2
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 9
      Top = 32
      Width = 134
      Height = 21
      DataField = 'PRAT_EMPRESA'
      DataSource = DM_Estoque.DSPrateleira
      KeyField = 'EMP_COD'
      ListField = 'EMP_RAZAO'
      ListSource = DM_contabil.Dempresa
      TabOrder = 3
    end
  end
end
