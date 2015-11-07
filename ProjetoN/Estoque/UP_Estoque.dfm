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
          end>
      end
    end
  end
end
