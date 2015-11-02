inherited PMarcas: TPMarcas
  Caption = 'PMarcas'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    ExplicitTop = 53
    ExplicitHeight = 307
    inherited gbDados: TGroupBox
      ExplicitHeight = 301
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSMarcas
        Columns = <
          item
            Expanded = False
            FieldName = 'MARC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARC_OBS'
            Visible = True
          end>
      end
    end
  end
  inherited pnCabecalho: TPanel
    inherited gbStatus: TGroupBox
      ExplicitLeft = 622
      ExplicitTop = 0
      ExplicitHeight = 53
    end
    inherited gbFiltro: TGroupBox
      ExplicitHeight = 53
    end
  end
end
