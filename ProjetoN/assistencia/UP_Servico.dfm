inherited P_Servico: TP_Servico
  Caption = 'Servi'#231'o'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
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
            FieldName = 'CHA_DEPARTAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_FUNCIONARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PROPRIETARIO'
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
            FieldName = 'CHA_DATA_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_TIPO_ERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DESCRICAO'
            Visible = True
          end>
      end
    end
  end
end
