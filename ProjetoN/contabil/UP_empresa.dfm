inherited P_empresa: TP_empresa
  Caption = 'Pesquisar Empresas - ProjetoDesnessauro'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Dempresa
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_EMPRESA'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_EMPRESA'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_NOMEF'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_ENDERECO'
            Width = 158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_END_NUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CIDADE'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_UF'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_FONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_TITULAR'
            Visible = True
          end>
      end
    end
  end
end
