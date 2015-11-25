inherited P_lancamento: TP_lancamento
  Caption = 'Pesquisar Lan'#231'amentos - ProjetoNecessauro'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    object Ntotal: TLabel [0]
      Left = 24
      Top = 272
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
      Left = 162
      Top = 272
      Width = 46
      Height = 16
      Caption = 'Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Ndebito: TLabel [2]
      Left = 320
      Top = 272
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
    object Rtotal: TLabel [3]
      Left = 64
      Top = 272
      Width = 3
      Height = 13
    end
    object Rcredito: TLabel [4]
      Left = 217
      Top = 272
      Width = 3
      Height = 13
    end
    object Rdebito: TLabel [5]
      Left = 370
      Top = 272
      Width = 3
      Height = 13
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
            FieldName = 'LANC_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_NR_LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_NR_LANCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_DT_LANCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_TIPO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_DEBITO'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_CENTRODECUSTO_DB'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_CREDITO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_CENTRODECUSTO_CR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_HISTORICO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_VAR_HISTORICO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANC_VALOR'
            Width = 64
            Visible = True
          end>
      end
    end
    object pnInfo: TPanel
      Left = 3
      Top = 259
      Width = 852
      Height = 41
      TabOrder = 1
    end
  end
end
