inherited P_Tipo_Erro: TP_Tipo_Erro
  Caption = 'Tipo de Erros'
  ClientWidth = 776
  ExplicitWidth = 792
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 776
    inherited gbDados: TGroupBox
      Width = 770
      inherited DBGDados: TDBGrid
        Width = 766
        DataSource = DM_Servico.DS_Tipo_Erro
        Columns = <
          item
            Expanded = False
            FieldName = 'TER_CODIGO'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TER_DESCRICAO'
            Width = 719
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 776
    inherited sbSair: TSpeedButton
      Left = 679
    end
  end
  inherited pnCabecalho: TPanel
    Width = 776
    inherited gbStatus: TGroupBox
      Left = 760
    end
    inherited gbFiltro: TGroupBox
      Width = 760
      inherited editPesquisa: TEdit
        Width = 366
      end
      inherited Pesquisar: TButton
        Left = 679
      end
    end
  end
end
