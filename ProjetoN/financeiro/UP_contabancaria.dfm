inherited P_contasbancarias: TP_contasbancarias
  Caption = 'P_contasbancarias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_financeiro.D_contasbancarias
        Columns = <
          item
            Expanded = False
            FieldName = 'CTB_AGENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_BAN_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_EMP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_PESSOA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_SALDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTB_STATUS'
            Visible = True
          end>
      end
    end
  end
end
