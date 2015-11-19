inherited P_FichaTecnica: TP_FichaTecnica
  Caption = 'Ficha T'#233'cnica'
  ClientHeight = 403
  ExplicitLeft = -56
  ExplicitWidth = 880
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Height = 308
    ExplicitHeight = 308
    inherited gbDados: TGroupBox
      Height = 302
      ExplicitHeight = 302
      inherited DBGDados: TDBGrid
        Height = 285
        DataSource = DM_PCP.DS_Ficha_Tecnica
        Columns = <
          item
            Expanded = False
            FieldName = 'FT_COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_PRODUTO'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_UNIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_CUSTO_UNITARIO'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_MAO_DE_OBRA'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_CUSTO_TOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FT_TEMPO_PRODUCAO'
            Width = 101
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 361
    ExplicitTop = 361
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
