inherited p_condicaopag: Tp_condicaopag
  Caption = 'CONDI'#199#195'O DE PAGAMENTO'
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 739
    inherited gbDados: TGroupBox
      Width = 733
      Caption = ''
      ExplicitLeft = 3
      ExplicitTop = 4
      ExplicitWidth = 733
      inherited DBGDados: TDBGrid
        Width = 729
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRI'#199#195'O'
            Width = 414
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELAS'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO EM DIAS'
            Width = 123
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 739
    inherited sbSair: TSpeedButton
      Left = 642
    end
  end
  inherited pnCabecalho: TPanel
    Width = 739
    inherited gbStatus: TGroupBox
      Left = 723
    end
    inherited gbFiltro: TGroupBox
      Width = 723
      inherited cbContent: TComboBox
        Left = 135
        Width = 114
        ExplicitLeft = 135
        ExplicitWidth = 114
      end
      inherited cBoxFiltro: TComboBox
        Width = 124
        ExplicitWidth = 124
      end
      inherited editPesquisa: TEdit
        Left = 255
        Width = 381
        ExplicitLeft = 255
        ExplicitWidth = 327
      end
      inherited Pesquisar: TButton
        Left = 642
      end
    end
  end
end
