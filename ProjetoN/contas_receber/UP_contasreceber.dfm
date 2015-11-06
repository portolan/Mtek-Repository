inherited P_contasreceber: TP_contasreceber
  Caption = 'Contas Receber'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TIT_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_TOTAL_BRUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_TOTAL_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_DATA_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_NUMERO_TITULO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_DATA_EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_DATA_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIT_DESCRICAO'
            Visible = True
          end>
      end
    end
  end
end
