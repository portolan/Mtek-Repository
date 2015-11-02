inherited PPrateleira: TPPrateleira
  Caption = 'PPrateleira'
  OnCreate = FormCreate
  ExplicitLeft = -139
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    ExplicitTop = 53
    ExplicitWidth = 864
    ExplicitHeight = 307
    inherited gbDados: TGroupBox
      ExplicitWidth = 858
      ExplicitHeight = 301
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSPrateleira
        Columns = <
          item
            Expanded = False
            FieldName = 'PRAT_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_OBS'
            Width = 349
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    ExplicitWidth = 864
  end
  inherited pnCabecalho: TPanel
    ExplicitWidth = 864
    inherited gbStatus: TGroupBox
      ExplicitLeft = 703
      ExplicitTop = 0
      ExplicitHeight = 53
    end
    inherited gbFiltro: TGroupBox
      ExplicitWidth = 703
      ExplicitHeight = 53
    end
  end
end
