inherited MMarcas: TMMarcas
  Caption = 'Manuten'#231#227'o de Marca'
  ClientWidth = 556
  ExplicitWidth = 572
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 556
    ExplicitWidth = 556
    inherited sbCancelar: TSpeedButton
      Left = 459
      ExplicitLeft = 459
    end
  end
  inherited gbInfos: TGroupBox
    Width = 556
    ExplicitWidth = 556
    object GroupBox1: TGroupBox
      Left = 3
      Top = 16
      Width = 550
      Height = 218
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 16
        Top = 91
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 64
        Width = 521
        Height = 21
        DataField = 'MARC_DESCRICAO'
        DataSource = DM_Estoque.DSMarcas
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 110
        Width = 521
        Height = 99
        DataField = 'MARC_OBS'
        DataSource = DM_Estoque.DSMarcas
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 21
        Width = 134
        Height = 21
        DataField = 'MARC_CODIGO'
        DataSource = DM_Estoque.DSMarcas
        ParentColor = True
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 2
      end
    end
  end
end
