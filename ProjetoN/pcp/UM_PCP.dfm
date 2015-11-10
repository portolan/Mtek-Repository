inherited M_OP: TM_OP
  Left = 537
  Top = 329
  Caption = 'Ordem de Producao'
  ClientHeight = 371
  ClientWidth = 775
  Position = poDesigned
  ExplicitWidth = 791
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 330
    Width = 775
    ExplicitTop = 303
    ExplicitWidth = 775
    inherited sbCancelar: TSpeedButton
      Left = 678
      Transparent = False
      ExplicitLeft = 582
      ExplicitHeight = 39
    end
  end
  inherited gbInfos: TGroupBox
    Width = 775
    Height = 330
    ExplicitWidth = 775
    ExplicitHeight = 303
    object pc_ordem: TPageControl
      Left = 0
      Top = 0
      Width = 862
      Height = 450
      ActivePage = ts_aguardandoliberacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        DragMode = dmAutomatic
        TabVisible = False
      end
      object ts_aguardandoliberacao: TTabSheet
        Caption = 'Aguardando Libera'#231#227'o'
        DoubleBuffered = False
        ImageIndex = 1
        ParentDoubleBuffered = False
        ExplicitLeft = 0
        ExplicitTop = 28
      end
      object ts_producao: TTabSheet
        Caption = 'Em Producao'
        ImageIndex = 2
      end
      object ts_cancelada: TTabSheet
        Caption = 'Cancelada'
        ImageIndex = 3
      end
      object ts_concluida: TTabSheet
        Caption = 'Concluida'
        ImageIndex = 4
      end
    end
  end
  object Button1: TButton
    Left = 0
    Top = 330
    Width = 97
    Height = 40
    Caption = 'Button1'
    TabOrder = 2
  end
end
