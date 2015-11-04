inherited PMarcas: TPMarcas
  Caption = 'PMarcas'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
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
    inherited gbFiltro: TGroupBox
      ExplicitLeft = -6
      ExplicitTop = -3
    end
  end
end
