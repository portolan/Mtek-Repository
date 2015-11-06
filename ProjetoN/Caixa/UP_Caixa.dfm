inherited P_caixa: TP_caixa
  Caption = 'Controle de Caixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_caixa.DCaixa
        Columns = <
          item
            Expanded = False
            FieldName = 'CX_CODEMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_IDCAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_DATAINICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_DATAFINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOANTERIOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOTOTAL'
            Width = 153
            Visible = True
          end>
      end
    end
  end
end
