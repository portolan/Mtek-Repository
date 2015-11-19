inherited P_contasreceber: TP_contasreceber
  Caption = 'Contas Receber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contasreceber.D_contasreceber
        Columns = <
          item
            Expanded = False
            FieldName = 'TTR_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_EMP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PES_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CTB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CON_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_BAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_CANCELAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_TITULO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_ORIGINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_PAGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MR_DIARIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MT_ATRASO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MULTA'
            Visible = True
          end>
      end
    end
  end
end
