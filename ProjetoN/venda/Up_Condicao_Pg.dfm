inherited UP_COND_PG: TUP_COND_PG
  Caption = 'Pesquisa Condi'#231#227'o de Pagamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_VENDA.DS_CondicaoPG
        Columns = <
          item
            Expanded = False
            FieldName = 'CDP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDP_DESCRICAO'
            Visible = True
          end>
      end
    end
  end
end
