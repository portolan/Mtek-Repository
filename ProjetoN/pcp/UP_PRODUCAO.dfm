inherited P_PRODUCAO: TP_PRODUCAO
  Caption = 'Producao'
  Position = poDesigned
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_PCP.DS_Producao
        ParentShowHint = False
        Columns = <
          item
            Expanded = False
            FieldName = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C'#243'digo da Ordem'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data Inicial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data Prevista'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Produzida'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Width = 61
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
