inherited PBloco: TPBloco
  Caption = 'PBloco'
  OnCreate = FormCreate
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSBloco
        Columns = <
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
            FieldName = 'BLOC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOC_OBS'
            Visible = True
          end>
      end
    end
  end
end
