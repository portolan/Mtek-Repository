inherited MPrateleira: TMPrateleira
  Caption = 'Manuten'#231#227'o de Prateleira'
  ClientWidth = 747
  ExplicitWidth = 763
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 747
    ExplicitWidth = 747
    inherited sbCancelar: TSpeedButton
      Left = 650
      ExplicitLeft = 650
    end
  end
  inherited gbInfos: TGroupBox
    Width = 747
    ExplicitWidth = 747
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label2: TLabel
      Left = 317
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
    object Label5: TLabel
      Left = 456
      Top = 16
      Width = 57
      Height = 13
      Caption = 'Qtd M'#225'xima'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 596
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label7: TLabel
      Left = 149
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Bloco'
    end
    object DBEdit2: TDBEdit
      Left = 317
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'PRAT_CODIGO'
      DataSource = DM_Estoque.DSPrateleira
      ParentColor = True
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 3
      Top = 71
      Width = 734
      Height = 21
      DataField = 'PRAT_DESCRICAO'
      DataSource = DM_Estoque.DSPrateleira
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 9
      Top = 117
      Width = 728
      Height = 117
      DataField = 'PRAT_OBS'
      DataSource = DM_Estoque.DSPrateleira
      TabOrder = 5
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
      ListFieldIndex = 1
      ListSource = DM_contabil.Dempresa
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 456
      Top = 32
      Width = 134
      Height = 21
      DataField = 'PRAT_QTDMAXIMA'
      DataSource = DM_Estoque.DSPrateleira
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 596
      Top = 32
      Width = 141
      Height = 21
      DataField = 'PRAT_CATEGORIA'
      DataSource = DM_Estoque.DSPrateleira
      KeyField = 'CAT_CODIGO'
      ListField = 'CAT_DESCRICAO'
      ListSource = DM_Estoque.DSCategoria
      TabOrder = 3
      OnEnter = DBLookupComboBox1Enter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 149
      Top = 32
      Width = 162
      Height = 21
      DataField = 'PRAT_BLOCO'
      DataSource = DM_Estoque.DSPrateleira
      KeyField = 'BLOC_CODIGO'
      ListField = 'BLOC_DESCRICAO'
      ListSource = DM_Estoque.DSBloco
      TabOrder = 1
      OnEnter = DBLookupComboBox2Enter
    end
  end
end
