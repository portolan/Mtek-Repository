object frmRelacionamento: TfrmRelacionamento
  Left = 0
  Top = 0
  Width = 341
  Height = 60
  TabOrder = 0
  object pnlFrame: TPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 60
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 325
    ExplicitHeight = 44
    DesignSize = (
      341
      60)
    object lbTitulo: TLabel
      Left = 10
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object DBE_CAMPO: TDBEdit
      Left = 10
      Top = 21
      Width = 57
      Height = 21
      TabOrder = 0
      OnExit = DBE_CAMPOExit
    end
    object panelFundo: TPanel
      Left = 73
      Top = 21
      Width = 256
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvLowered
      TabOrder = 1
      ExplicitWidth = 240
      DesignSize = (
        256
        21)
      object DBT_DESCRICAO: TDBText
        Left = 6
        Top = 3
        Width = 243
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 227
      end
    end
  end
end
