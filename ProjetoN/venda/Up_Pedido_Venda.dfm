inherited UP_VENDA: TUP_VENDA
  Caption = 'Pedido de Venda'
  OnActivate = nil
  OnKeyDown = nil
  OnShow = nil
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_VENDA.DS_Venda
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_PESSOA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SEQUENCIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SITUACAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_EMPRESA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DEPOSITO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_PRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCRICAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_TIPOMOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_TIPODESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_UNIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QUANTIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_LISTA_PRECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCONTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QTD_DISPONIVEL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRUNITARIO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRTOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_REAJUSTE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPEDIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTENTRADA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPRAZOENTREGA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_ORDEMVENDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    object bt_Gera_Relatorio: TButton
      Left = 288
      Top = 1
      Width = 115
      Height = 40
      Caption = 'Gera Relat'#243'rio'
      TabOrder = 0
    end
  end
end
