inherited P_caixa: TP_caixa
  Caption = 'Controle de Caixa'
  ClientHeight = 362
  Menu = MainMenu1
  ExplicitWidth = 880
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Height = 267
    ExplicitHeight = 267
    inherited gbDados: TGroupBox
      Height = 261
      ExplicitHeight = 261
      inherited DBGDados: TDBGrid
        Height = 244
        DataSource = DM_Caixa.DS_Caixa
        Columns = <
          item
            Expanded = False
            FieldName = 'CX_CODEMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_IDCAIXA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_DATAINICIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_DATAFINAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOANTERIOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALENTRADA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALSAIDA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOTOTAL'
            Visible = False
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 320
    ExplicitTop = 320
  end
  object MainMenu1: TMainMenu
    Left = 769
    Top = 278
    object Caixa1: TMenuItem
      Caption = 'Caixa'
      object AbrirCaixa1: TMenuItem
        Caption = 'Abrir Caixa'
        OnClick = AbrirCaixa1Click
      end
      object FecharCaixa1: TMenuItem
        Caption = 'Fechar Caixa'
        OnClick = FecharCaixa1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object FechamentoCaixa1: TMenuItem
        Caption = 'Fechamento Caixa'
        OnClick = FechamentoCaixa1Click
      end
    end
  end
end
