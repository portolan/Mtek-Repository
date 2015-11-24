inherited P_empresa: TP_empresa
  Caption = 'Pesquisar Empresas - ProjetoNessauro'
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
            Width = 177
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
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_END_NUM'
            Width = 45
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
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_UF'
            Width = 25
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
            Width = 217
            Visible = True
          end>
      end
    end
  end
end
