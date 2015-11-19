inherited PPedCompra: TPPedCompra
  Caption = 'Pesquisa - Pedido de Compra'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = dmPedCompra.DPedidoCompra
        Columns = <
          item
            Expanded = False
            FieldName = 'PDC_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_PRODUTO'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_FORNECEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_PREV_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_FRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_BRUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DEPARTAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_QTD_TOTAL'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DATA_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_UNMEDIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_COTACAO_ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_SOLICITICAO_ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_CONDICAO_PGTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN_DESCRICAO'
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
  inherited pnRodape: TPanel
    inherited sbNovo: TSpeedButton
      Visible = False
    end
  end
  inherited pnCabecalho: TPanel
    inherited gbFiltro: TGroupBox
      ExplicitWidth = 848
      inherited editPesquisa: TEdit
        ExplicitWidth = 454
      end
      inherited Pesquisar: TButton
        ExplicitLeft = 767
      end
    end
  end
end
