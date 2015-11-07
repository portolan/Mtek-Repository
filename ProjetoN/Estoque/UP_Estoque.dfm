inherited PEstoque: TPEstoque
  Caption = 'PEstoque'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
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
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_BLOCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BLOC_DESCRICAO'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_PRATELEIRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRAT_DESCRICAO'
            Width = 151
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
          end>
      end
    end
  end
end
