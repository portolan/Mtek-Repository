inherited P_caixa: TP_caixa
  Caption = 'Controle de Caixa'
  Menu = MainMenu1
  ExplicitWidth = 880
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CX_CODEMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_IDCAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_DATAINICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_DATAFINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOANTERIOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_TOTALSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CX_SALDOTOTAL'
            Visible = True
          end>
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 761
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
