inherited P_caixa: TP_caixa
  Caption = 'Controle de Caixa'
  ClientHeight = 322
  Menu = MainMenu1
  ExplicitWidth = 880
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Height = 227
    ExplicitHeight = 227
    inherited gbDados: TGroupBox
      Height = 221
      ExplicitHeight = 221
      inherited DBGDados: TDBGrid
        Height = 204
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
    Top = 280
    ExplicitTop = 280
    inherited sbRemover: TSpeedButton
      Visible = False
    end
    object lb_saldoanterior: TLabel
      Left = 320
      Top = 6
      Width = 82
      Height = 16
      Caption = 'Saldo Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_saldototal: TLabel
      Left = 551
      Top = 6
      Width = 65
      Height = 16
      Caption = 'Saldo Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edit_saldoant: TEdit
      Left = 408
      Top = 6
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object edit_saldototal: TEdit
      Left = 622
      Top = 6
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 1
    end
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
      object BalanoPerodo1: TMenuItem
        Caption = 'Balan'#231'o por Per'#237'odo'
        OnClick = BalanoPerodo1Click
      end
      object PrevisodeContasReceberPagar1: TMenuItem
        Caption = 'Previs'#227'o de Contas Receber/Pagar'
        OnClick = PrevisodeContasReceberPagar1Click
      end
      object PrevisodeVendasCompras1: TMenuItem
        Caption = 'Previs'#227'o de Vendas/Compras'
        OnClick = PrevisodeVendasCompras1Click
      end
    end
  end
end
