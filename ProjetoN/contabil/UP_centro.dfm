inherited P_centro: TP_centro
  Caption = 'Pesquisar Centro de Custo - ProjetoDesnecessauro'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Dcentro
        Columns = <
          item
            Expanded = False
            FieldName = 'CEC_COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEC_NUM_CC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEC_DESC_CC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEC_ANALITICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEC_COD_GRUPO'
            Visible = True
          end>
      end
    end
  end
end
