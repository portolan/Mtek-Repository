inherited P_Servico: TP_Servico
  Caption = 'Servi'#231'o'
  OnCreate = FormCreate
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
            FieldName = 'CHA_DESCRICAO'
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
            FieldName = 'CHA_DATA_SAIDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PRIORIDADE'
            Width = 64
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
            FieldName = 'CHA_TIPO_ERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHA_PRODUTO_UTILIZADO'
            Visible = False
          end>
      end
    end
  end
end
