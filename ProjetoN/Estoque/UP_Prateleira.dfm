inherited PPrateleira: TPPrateleira
  Caption = 'Listagem de Prateleiras'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_QTDMAXIMA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_CATEGORIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_BLOCO'
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
