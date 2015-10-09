inherited PPedido: TPPedido
  Caption = 'Pesquisa de Pedido'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = dmPedido.DPedido
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VL_BRUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VL_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VL_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CONDICAO_PGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DT_ALTERACAO'
            Visible = True
          end>
      end
    end
  end
end
