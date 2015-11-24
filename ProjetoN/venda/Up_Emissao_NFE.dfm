inherited Up_NFE: TUp_NFE
  Caption = 'Pesquisa Nota Fiscal '
  OnActivate = nil
  OnShow = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_VENDA.DS_EmissaoNFE
        Columns = <
          item
            Expanded = False
            FieldName = 'EMI_NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_NOTAFISCAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_TIPOMOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_DTEMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_DTSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_PESSOA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Visible = True
          end>
      end
    end
  end
end
