inherited P_planodecontas: TP_planodecontas
  Caption = 'Pesquisar Plano de Contas - ProjetoDesnecessauro'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Dplanodecontas
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_CONTA'
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANALITICA'
            Width = 60
            Visible = True
          end>
      end
    end
  end
end
