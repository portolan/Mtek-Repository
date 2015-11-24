inherited P_historico: TP_historico
  Caption = 'Pesquisar Historicos - ProjetoNecessauro'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Dhistorico
        Columns = <
          item
            Expanded = False
            FieldName = 'HIST_COD'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HIST_NOME'
            Width = 543
            Visible = True
          end>
      end
    end
  end
end
