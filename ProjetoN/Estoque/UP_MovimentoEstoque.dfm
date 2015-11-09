inherited PMovimentoEstoque: TPMovimentoEstoque
  Caption = 'PMovimentoEstoque'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSMovimentoEstoque
        Columns = <
          item
            Expanded = False
            FieldName = 'EM_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_BLOCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PRATELEIRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_VALOR_FINANCEIRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PEDIDOCOMPRAORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
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
          end>
      end
    end
  end
end
