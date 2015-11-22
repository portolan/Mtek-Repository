inherited PPessoa: TPPessoa
  Caption = 'Pesquisa - Pessoas'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = dmPedCompra.DSPessoa
        Columns = <
          item
            Expanded = False
            FieldName = 'PESS_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_APELIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_CONTATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_TELCONTATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_TEL1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_TEL2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_TEL3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_RAMAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_INSCESTADUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_INSCMUNICIPAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_DTCADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_LOGRADOURO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_PAIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_FISICOJURIDICO'
            Visible = True
          end>
      end
    end
  end
end
