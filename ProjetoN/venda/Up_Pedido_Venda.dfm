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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DEPOSITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCRICAO'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QUANTIDADE'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QTD_DISPONIVEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRUNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_REAJUSTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPRAZOENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_ORDEMVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
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
      OnClick = bt_Gera_RelatorioClick
    end
  end
end
