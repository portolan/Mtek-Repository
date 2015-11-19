inherited P_PRODUCAO: TP_PRODUCAO
  Caption = 'Producao'
  ClientWidth = 872
  Position = poDesigned
  ExplicitWidth = 888
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 872
    inherited gbDados: TGroupBox
      Width = 866
      inherited DBGDados: TDBGrid
        Width = 862
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
  inherited pnRodape: TPanel
    Width = 872
    inherited sbSair: TSpeedButton
      Left = 775
    end
  end
  inherited pnCabecalho: TPanel
    Width = 872
    inherited gbStatus: TGroupBox
      Left = 856
      ExplicitLeft = 745
      ExplicitTop = -3
    end
    inherited gbFiltro: TGroupBox
      Width = 856
      ExplicitWidth = 848
      inherited editPesquisa: TEdit
        Width = 462
        ExplicitWidth = 454
      end
      inherited Pesquisar: TButton
        Left = 775
        ExplicitLeft = 767
      end
    end
  end
end
