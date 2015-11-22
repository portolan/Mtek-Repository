inherited PMarcas: TPMarcas
  Caption = 'Listagem de Marcas'
  ExplicitWidth = 880
  ExplicitHeight = 441
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
      ExplicitWidth = 848
      inherited editPesquisa: TEdit
        ExplicitWidth = 454
      end
      inherited Pesquisar: TButton
        ExplicitLeft = 767
      end
    end
  end
end
