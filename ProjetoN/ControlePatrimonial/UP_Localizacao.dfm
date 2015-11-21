inherited PLocalizacao: TPLocalizacao
  Caption = 'Pesquisas de Localiza'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DMControlePatrimonial.DLocalizacao
        Columns = <
          item
            Expanded = False
            FieldName = 'LOC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOC_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOC_STATUS'
            Visible = True
          end>
      end
    end
  end
end
