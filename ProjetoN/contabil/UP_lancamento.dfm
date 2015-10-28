inherited P_lancamento: TP_lancamento
  Caption = 'Pesquisar Lan'#231'amentos - ProjetoDesnecessauro'
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    object Ntotal: TLabel [0]
      Left = 24
      Top = 264
      Width = 34
      Height = 16
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Ncredito: TLabel [1]
      Left = 160
      Top = 264
      Width = 49
      Height = 20
      Caption = 'Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Ndebito: TLabel [2]
      Left = 280
      Top = 264
      Width = 41
      Height = 16
      Caption = 'D'#233'bito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited gbDados: TGroupBox
      Height = 257
      Align = alTop
      ExplicitHeight = 257
      inherited DBGDados: TDBGrid
        Height = 240
        DataSource = DM_contabil.Dlancamento
        Columns = <
          item
            Expanded = False
            FieldName = 'NR_LOTE'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_LANCAMENTO'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_LANCAMENTO'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBITO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENTRODECUSTO_DB'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDITO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENTRODECUSTO_CR'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAR_HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
    end
    object pnInfo: TPanel
      Left = 3
      Top = 259
      Width = 771
      Height = 33
      TabOrder = 1
    end
  end
  inherited pnCabecalho: TPanel
    inherited gbFiltro: TGroupBox
      ExplicitLeft = -6
      ExplicitTop = -3
    end
  end
end
