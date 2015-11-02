inherited PPrateleira: TPPrateleira
  Caption = 'PPrateleira'
  OnCreate = FormCreate
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSPrateleira
        Columns = <
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
            FieldName = 'PRAT_DESCRICAO'
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
