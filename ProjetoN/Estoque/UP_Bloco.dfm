inherited PBloco: TPBloco
  Caption = 'Listagem de Blocos'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSBloco
        Columns = <
          item
            Expanded = False
            FieldName = 'BLOC_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOC_OBS'
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
