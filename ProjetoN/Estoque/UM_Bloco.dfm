inherited MBloco: TMBloco
  Caption = 'MBloco'
  ExplicitWidth = 597
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbInfos: TGroupBox
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit1
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
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      DataField = 'BLOC_EMPRESA'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 0
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
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 71
      Width = 553
      Height = 21
      DataField = 'BLOC_DESCRICAO'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 117
      Width = 553
      Height = 117
      DataField = 'BLOC_OBS'
      DataSource = DM_Estoque.DSBloco
      TabOrder = 3
    end
  end
end
