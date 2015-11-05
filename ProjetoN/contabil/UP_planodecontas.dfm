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
            FieldName = 'PLN_COD_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLN_CONTA'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLN_DESC_CONTA'
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLN_ANALITICA'
            Width = 50
            Visible = True
          end>
      end
    end
  end
end
