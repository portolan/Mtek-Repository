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
            FieldName = 'EMP_COD'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CNPJ'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_NOMEF'
            Width = 174
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_END_NUM'
            Width = 78
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_UF'
            Width = 43
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
