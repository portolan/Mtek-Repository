inherited P_EstadoConservacao: TP_EstadoConservacao
  Caption = 'Pesquisa de Estado de Conserva'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DMControlePatrimonial.DEstadoCOnservacao
        Columns = <
          item
            Expanded = False
            FieldName = 'EDC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDC_STATUS'
            Visible = True
          end>
      end
    end
  end
end
