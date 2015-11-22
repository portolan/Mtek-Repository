inherited MBloco: TMBloco
  Caption = 'Manuten'#231#227'o de Bloco'
  ClientWidth = 697
  ExplicitWidth = 713
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 697
    ExplicitWidth = 697
    inherited sbCancelar: TSpeedButton
      Left = 600
      ExplicitLeft = 600
    end
  end
  inherited gbInfos: TGroupBox
    Width = 697
    ExplicitWidth = 697
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label2: TLabel
      Left = 156
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 98
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object Label5: TLabel
      Left = 296
      Top = 16
      Width = 57
      Height = 13
      Caption = 'Qtd M'#225'xima'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 436
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object DBEdit2: TDBEdit
      Left = 156
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      Ctl3D = True
      DataField = 'BLOC_CODIGO'
      DataSource = DM_Estoque.DSBloco
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 71
      Width = 672
      Height = 21
      DataField = 'BLOC_DESCRICAO'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 117
      Width = 672
      Height = 117
      DataField = 'BLOC_OBS'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 4
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      DataField = 'BLOC_EMPRESA'
      DataSource = DM_Estoque.DSBloco
      KeyField = 'EMP_COD'
      ListField = 'EMP_RAZAO'
      ListFieldIndex = 1
      ListSource = DM_contabil.Dempresa
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 296
      Top = 32
      Width = 134
      Height = 21
      DataField = 'BLOC_QTDMAXIMA'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 436
      Top = 32
      Width = 141
      Height = 21
      DataField = 'BLOC_CATEGORIA'
      DataSource = DM_Estoque.DSBloco
      KeyField = 'CAT_CODIGO'
      ListField = 'CAT_DESCRICAO'
      ListSource = DM_Estoque.DSCategoria
      TabOrder = 2
      OnEnter = DBLookupComboBox1Enter
    end
  end
end
