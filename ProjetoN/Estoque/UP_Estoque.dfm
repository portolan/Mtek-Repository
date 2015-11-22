inherited PEstoque: TPEstoque
  Caption = 'Listagem de Estoque'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSEstoque
        Columns = <
          item
            Expanded = False
            FieldName = 'ESTOQ_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 322
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_BLOCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BLOC_DESCRICAO'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_PRATELEIRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRAT_DESCRICAO'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTDMIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_QTDMAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CUSTOMEDIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CATEGORIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CAT_DESCRICAO'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_DTCADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQ_CHAVE'
            Visible = True
          end>
      end
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
