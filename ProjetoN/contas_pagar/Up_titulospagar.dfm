inherited p_titulospagar: Tp_titulospagar
  Caption = 'TITULOS A PAGAR'
  ClientHeight = 382
  ClientWidth = 809
  Menu = MainMenu1
  ExplicitWidth = 825
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 809
    Height = 287
    ExplicitWidth = 809
    ExplicitHeight = 287
    inherited gbDados: TGroupBox
      Width = 803
      Height = 281
      ExplicitWidth = 803
      ExplicitHeight = 281
      object Label1: TLabel [0]
        Left = 112
        Top = 64
        Width = 61
        Height = 13
        Caption = 'EMP_RAZAO'
      end
      object Label2: TLabel [1]
        Left = 112
        Top = 136
        Width = 89
        Height = 13
        Caption = 'PESS_DESCRICAO'
      end
      inherited DBGDados: TDBGrid
        Width = 799
        Height = 264
        DataSource = dm_contaspagar.Dtitulospagar
        Columns = <
          item
            Expanded = False
            FieldName = 'TTP_CODIGO'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_EMP_CODIGO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_PES_CODIGO'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_CTB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_CON_CODIGO'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DESCRICAO'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_EMISSAO'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_VENCIMENTO'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_PAGAMENTO'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_BAIXA'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DT_CANCELAMENTO'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_TP_TITULO'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_DESCONTO'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_PARCELA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_ORIGINAL'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_PAGO'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_VL_TOTAL'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_MR_DIARIA'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTP_MT_ATRASO'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 340
    Width = 809
    ExplicitTop = 340
    ExplicitWidth = 809
    inherited sbSair: TSpeedButton
      Left = 712
      ExplicitLeft = 712
    end
  end
  inherited pnCabecalho: TPanel
    Width = 809
    ExplicitWidth = 809
    inherited gbStatus: TGroupBox
      Left = 703
      Width = 106
      ExplicitLeft = 703
      ExplicitWidth = 106
    end
    inherited gbFiltro: TGroupBox
      Width = 703
      ExplicitWidth = 703
    end
  end
  object MainMenu1: TMainMenu
    Left = 716
    Top = 248
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object titulosapagar1: TMenuItem
        Caption = 'Titulos a pagar'
        OnClick = titulosapagar1Click
      end
    end
  end
end
