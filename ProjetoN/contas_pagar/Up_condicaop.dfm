inherited p_condicaopag: Tp_condicaopag
  Caption = 'CONDI'#199#195'O DE PAGAMENTO'
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 739
    ExplicitWidth = 739
    inherited gbDados: TGroupBox
      Width = 733
      Caption = ''
      ExplicitWidth = 733
      inherited DBGDados: TDBGrid
        Width = 729
        DataSource = dm_contaspagar.Dcondicao
        Columns = <
          item
            Expanded = False
            FieldName = 'CDP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDP_DESCRICAO'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDP_PARCELAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDP_DIAS_VENCIMENTO'
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 739
    ExplicitWidth = 739
    inherited sbSair: TSpeedButton
      Left = 642
      ExplicitLeft = 642
    end
  end
  inherited pnCabecalho: TPanel
    Width = 739
    ExplicitWidth = 739
    inherited gbStatus: TGroupBox
      Left = 723
      ExplicitLeft = 723
    end
    inherited gbFiltro: TGroupBox
      Width = 723
      ExplicitWidth = 723
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
        ExplicitWidth = 381
      end
      inherited Pesquisar: TButton
        Left = 642
        ExplicitLeft = 642
      end
    end
  end
end
