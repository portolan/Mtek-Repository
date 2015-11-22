inherited PCategoria: TPCategoria
  Caption = 'Listagem de Categorias'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSCategoria
        Columns = <
          item
            Expanded = False
            FieldName = 'CAT_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_OBS'
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
