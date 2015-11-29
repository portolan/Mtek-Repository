inherited P_TipoBens: TP_TipoBens
  Caption = 'Pesquisa de Tipo de Bens'
  ExplicitWidth = 880
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DMControlePatrimonial.DTipoBens
        Columns = <
          item
            Expanded = False
            FieldName = 'TPB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPB_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPB_STATUS'
            Visible = True
          end>
      end
    end
  end
end
