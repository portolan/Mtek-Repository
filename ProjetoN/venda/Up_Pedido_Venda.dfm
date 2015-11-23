inherited UP_VENDA: TUP_VENDA
  Caption = 'Altera Pedido de Venda'
  OnActivate = nil
  OnKeyDown = nil
  OnShow = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    ExplicitLeft = -1
    ExplicitTop = 48
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
  inherited pnCabecalho: TPanel
    inherited gbFiltro: TGroupBox
      inherited editPesquisa: TEdit
        ExplicitWidth = 454
      end
      inherited Pesquisar: TButton
        ExplicitLeft = 767
      end
    end
  end
end
