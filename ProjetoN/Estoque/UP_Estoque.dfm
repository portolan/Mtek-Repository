inherited PEstoque: TPEstoque
  Caption = 'PEstoque'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSEstoque
        Columns = <
          item
            Expanded = False
            FieldName = 'ESTOQ_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_BLOCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_PRATELEIRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTDMIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTDMAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CUSTOMEDIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CATEGORIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_DTCADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAT_DESCRICAO'
            Visible = True
          end
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
          end
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
            FieldName = 'BLOC_OBS'
            Visible = True
          end
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
            FieldName = 'PRAT_OBS'
            Visible = True
          end>
      end
    end
  end
end
