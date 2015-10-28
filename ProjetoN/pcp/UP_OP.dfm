inherited P_OP: TP_OP
  ActiveControl = DBGDados
  Caption = 'Pesquisa Ordem Producao'
  OnCreate = FormCreate
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 767
        Height = 270
        ParentShowHint = False
        ShowHint = True
        Columns = <
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
      end
    end
  end
  inherited pnCabecalho: TPanel
    inherited gbStatus: TGroupBox
      ExplicitLeft = 628
      ExplicitTop = -3
    end
    inherited gbFiltro: TGroupBox
      ExplicitLeft = -6
      ExplicitTop = -3
    end
  end
end
