inherited p_titulospagar: Tp_titulospagar
  Caption = 'TITULOS A PAGAR'
  ClientWidth = 809
  OnCreate = FormCreate
  ExplicitWidth = 825
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 809
    ExplicitWidth = 809
    inherited gbDados: TGroupBox
      Width = 803
      ExplicitWidth = 803
      inherited DBGDados: TDBGrid
        Width = 799
        DataSource = dm_contaspagar.Dtitulospagar
        Columns = <
          item
            Expanded = False
            FieldName = 'TTP_CODIGO'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_EMP_CODIGO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_PES_CODIGO'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_CTB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_CON_CODIGO'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DESCRICAO'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_EMISSAO'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_VENCIMENTO'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_PAGAMENTO'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_BAIXA'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_CANCELAMENTO'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_TP_TITULO'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DESCONTO'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_PARCELA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_ORIGINAL'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_PAGO'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_TOTAL'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_MR_DIARIA'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_MT_ATRASO'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 809
    ExplicitWidth = 809
    inherited sbSair: TSpeedButton
      Left = 712
      ExplicitLeft = 712
    end
  end
  inherited pnCabecalho: TPanel
    Width = 809
    ExplicitWidth = 809
    inherited gbStatus: TGroupBox
      Width = 106
      ExplicitWidth = 106
    end
  end
end
