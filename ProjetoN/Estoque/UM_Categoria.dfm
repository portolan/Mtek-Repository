inherited MCategoria: TMCategoria
  Caption = 'MCategoria'
  ClientHeight = 294
  ClientWidth = 552
  ExplicitWidth = 568
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 253
    Width = 552
    inherited sbCancelar: TSpeedButton
      Left = 455
    end
  end
  inherited gbInfos: TGroupBox
    Width = 552
    Height = 253
    object GroupBox1: TGroupBox
      Left = 3
      Top = 16
      Width = 545
      Height = 321
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 8
        Width = 41
        Height = 13
        Caption = 'Empresa'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 154
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 14
        Top = 51
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 294
        Top = 8
        Width = 22
        Height = 13
        Caption = 'NCM'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 14
        Top = 95
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object DBEdit1: TDBEdit
        Left = 14
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CAT_EMPRESA'
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 154
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CAT_CODIGO'
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 14
        Top = 68
        Width = 528
        Height = 21
        DataField = 'CAT_DESCRICAO'
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 294
        Top = 24
        Width = 248
        Height = 21
        DataField = 'CAT_NCM'
        TabOrder = 3
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 17
    Top = 130
    Width = 528
    Height = 119
    TabOrder = 2
  end
end