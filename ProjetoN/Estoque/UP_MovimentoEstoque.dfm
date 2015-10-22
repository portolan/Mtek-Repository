inherited PMovimentoEstoque: TPMovimentoEstoque
  Caption = 'PMovimentoEstoque'
  OnCreate = FormCreate
  ExplicitWidth = 799
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
            FieldName = 'EM_ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PRODUTO'
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
          end>
      end
    end
  end
end
