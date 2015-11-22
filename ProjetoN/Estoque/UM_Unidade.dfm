inherited MUnidade: TMUnidade
  Caption = 'Manuten'#231#227'o de Unidade'
  ExplicitWidth = 597
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbInfos: TGroupBox
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 59
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 101
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'UN_CODIGO'
      DataSource = DM_Estoque.DSUnidade
      ParentColor = True
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 74
      Width = 553
      Height = 21
      DataField = 'UN_DESCRICAO'
      DataSource = DM_Estoque.DSUnidade
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 118
      Width = 553
      Height = 89
      DataField = 'UN_OBS'
      DataSource = DM_Estoque.DSUnidade
      TabOrder = 1
    end
  end
end
