inherited PCategoria: TPCategoria
  Caption = 'PCategoria'
  OnCreate = FormCreate
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSCategoria
        Columns = <
          item
            Expanded = False
            FieldName = 'CAT_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_OBS'
            Visible = True
          end>
      end
    end
  end
end
