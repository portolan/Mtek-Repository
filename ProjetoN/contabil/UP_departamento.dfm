inherited P_departamento: TP_departamento
  Caption = 'Pesquisar Departamentos - ProjetoDesnecessauro'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Ddepartamento
        Columns = <
          item
            Expanded = False
            FieldName = 'DEP_COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_EMPRESAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_DESC'
            Width = 457
            Visible = True
          end>
      end
    end
  end
end
