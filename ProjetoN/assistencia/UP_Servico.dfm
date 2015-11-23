inherited P_Servico: TP_Servico
  Caption = 'Servi'#231'o'
  ClientWidth = 741
  ExplicitWidth = 757
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 741
    inherited gbDados: TGroupBox
      Width = 735
      inherited DBGDados: TDBGrid
        Width = 731
        DataSource = DM_Servico.DS_Chamado
        Columns = <
          item
            Expanded = False
            FieldName = 'CHA_CODIGO'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CHA_DEPARTAMENTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_FUNCIONARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME1'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PROPRIETARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CHA_DESCRICAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PRIORIDADE'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_STATUS'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_ENTRADA'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TER_DESCRICAO'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_TIPO_ERRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_SAIDA'
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 741
    inherited sbSair: TSpeedButton
      Left = 644
    end
  end
  inherited pnCabecalho: TPanel
    Width = 741
    inherited gbStatus: TGroupBox
      Left = 725
    end
    inherited gbFiltro: TGroupBox
      Width = 725
      inherited editPesquisa: TEdit
        Width = 331
      end
      inherited Pesquisar: TButton
        Left = 644
      end
    end
  end
end
