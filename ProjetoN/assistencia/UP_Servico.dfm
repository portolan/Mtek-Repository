inherited P_Servico: TP_Servico
  Caption = 'Servi'#231'o'
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
            FieldName = 'EMP_RAZAO'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DEPARTAMENTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 156
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
            Width = 96
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
            Width = 162
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
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_ENTRADA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_TIPO_ERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_DATA_SAIDA'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end
