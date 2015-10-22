inherited PProduto: TPProduto
  Caption = 'Produtos'
  OnCreate = FormCreate
  ExplicitWidth = 799
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
            FieldName = 'PRO_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODREF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODBARRAS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_STATUS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DTCADASTRO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CLASSFISCAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CSTCSOSN'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NCMSH'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_EXTIPI'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_SITTRIB'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_UNID'
            Width = 64
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
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CATEGORIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PIS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COFINS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CSTPIS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_ESTATUAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PESO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRCUSTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCFRETE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRFRETE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCENCARG'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRENCARG'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCMARGLUCR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRMARGLUCR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRVENDA1'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCVLRVENDA2'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRVENDA2'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PERCVLRVENDA3'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLRVENDA3'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_OBS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_IMG'
            Visible = True
          end>
      end
    end
  end
end
