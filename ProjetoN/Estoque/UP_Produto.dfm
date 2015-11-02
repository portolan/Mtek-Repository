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
            FieldName = 'PRO_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODREF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODBARRAS'
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
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_UNID'
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
            FieldName = 'PRO_CATEGORIA'
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
          end>
      end
    end
  end
end
