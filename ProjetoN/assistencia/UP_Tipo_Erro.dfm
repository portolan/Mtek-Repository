inherited P_Tipo_Erro: TP_Tipo_Erro
  Caption = 'Tipo de Erros'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
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
end
