inherited P_planodecontas: TP_planodecontas
  Caption = 'Pesquisar Plano de Contas - ProjetoNecessauro'
  ClientHeight = 310
  ClientWidth = 560
  ExplicitWidth = 576
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 560
    Height = 215
    ExplicitWidth = 560
    ExplicitHeight = 215
    inherited gbDados: TGroupBox
      Width = 554
      Height = 209
      ExplicitWidth = 554
      ExplicitHeight = 209
      inherited DBGDados: TDBGrid
        Width = 550
        Height = 192
        DataSource = DM_contabil.Dplanodecontas
        Columns = <
          item
            Expanded = False
            FieldName = 'PLN_COD_CONTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PLN_CONTA'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLN_DESC_CONTA'
            Width = 385
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLN_ANALITICA'
            Width = 55
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 268
    Width = 560
    ExplicitTop = 268
    ExplicitWidth = 560
    inherited sbSair: TSpeedButton
      Left = 463
      ExplicitLeft = 560
    end
  end
  inherited pnCabecalho: TPanel
    Width = 560
    ExplicitWidth = 560
    inherited gbStatus: TGroupBox
      Left = 544
      ExplicitLeft = 544
    end
    inherited gbFiltro: TGroupBox
      Width = 544
      ExplicitWidth = 544
      inherited cbContent: TComboBox
        Left = 103
        Width = 114
        ExplicitLeft = 103
        ExplicitWidth = 114
      end
      inherited cBoxFiltro: TComboBox
        Width = 92
        ExplicitWidth = 92
      end
      inherited editPesquisa: TEdit
        Left = 223
        Width = 89
        ExplicitLeft = 223
        ExplicitWidth = 89
      end
      inherited Pesquisar: TButton
        Left = 318
        ExplicitLeft = 318
      end
    end
  end
end
