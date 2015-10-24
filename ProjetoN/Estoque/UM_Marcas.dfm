inherited MMarcas: TMMarcas
  Caption = 'Gerenciamento de Marcas'
  ClientWidth = 556
  ExplicitWidth = 572
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 556
    inherited sbCancelar: TSpeedButton
      Left = 459
    end
  end
  inherited gbInfos: TGroupBox
    Width = 556
    ExplicitLeft = 8
    ExplicitTop = 33
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
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 91
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'MARC_CODIGO'
        DataSource = DM_Estoque.DSMarcas
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 64
        Width = 521
        Height = 21
        DataField = 'MARC_DESCRICAO'
        DataSource = DM_Estoque.DSMarcas
        TabOrder = 1
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 19
    Top = 126
    Width = 521
    Height = 99
    TabOrder = 2
  end
end
