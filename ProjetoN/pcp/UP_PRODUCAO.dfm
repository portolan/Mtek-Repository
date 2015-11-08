inherited P_PRODUCAO: TP_PRODUCAO
  Caption = 'Producao'
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_PCP.DS_Producao
        ParentShowHint = False
        Columns = <
          item
            Expanded = False
            FieldName = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C'#243'digo da Ordem'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data Inicial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data Prevista'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Produzida'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Width = 61
            Visible = True
          end>
      end
    end
  end
end
