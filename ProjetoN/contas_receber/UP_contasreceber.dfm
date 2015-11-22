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
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PES_CODIGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CTB_CODIGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CON_CODIGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCRICAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_EMISSAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_VENCIMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_PAGAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_BAIXA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_CANCELAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_TITULO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCONTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PARCELA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_ORIGINAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_PAGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_TOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MR_DIARIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MT_ATRASO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_SITUACAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MORA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MULTA'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end
