inherited PProduto: TPProduto
  Caption = 'Listagem de Produtos'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSProdutos
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_DESCRICAO'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CATEGORIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRO_CODREF'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODBARRAS'
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DTCADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_MOEDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PESO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CUSTOMEDIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VALORIZACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRFRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCENCARG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRENCARG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCMARGLUCR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRMARGLUCR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_IMG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_UNID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CLASSFISCAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CSTCSOSN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NCMSH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_EXTIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_SITTRIB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CSTPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_ESTATUAL'
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
