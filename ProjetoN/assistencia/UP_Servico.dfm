inherited P_Servico: TP_Servico
  Caption = 'Servi'#231'o'
  ClientWidth = 741
  ExplicitWidth = 757
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 741
    ExplicitWidth = 741
    inherited gbDados: TGroupBox
      Width = 735
      ExplicitWidth = 735
      inherited DBGDados: TDBGrid
        Width = 731
        DataSource = DM_Servico.DS_Chamado
        Columns = <
          item
            Expanded = False
            FieldName = 'CHA_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DEPARTAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_FUNCIONARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PROPRIETARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME1'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DESCRICAO'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PRIORIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_ENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_TIPO_ERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TER_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_SAIDA'
            Visible = False
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 741
    ExplicitWidth = 741
    inherited sbSair: TSpeedButton
      Left = 644
      ExplicitLeft = 644
    end
  end
  inherited pnCabecalho: TPanel
    Width = 741
    ExplicitWidth = 741
    inherited gbStatus: TGroupBox
      Left = 725
      ExplicitLeft = 725
    end
    inherited gbFiltro: TGroupBox
      Width = 725
      ExplicitWidth = 725
      inherited editPesquisa: TEdit
        Width = 331
        ExplicitWidth = 331
      end
      inherited Pesquisar: TButton
        Left = 644
        ExplicitLeft = 644
      end
    end
  end
end
