inherited PMovimentoEstoque: TPMovimentoEstoque
  Caption = 'Movimenta'#231#245'es de Estoque'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSMovimentoEstoque
        Columns = <
          item
            Expanded = False
            FieldName = 'EM_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_BLOCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BLOC_DESCRICAO'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PRATELEIRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRAT_DESCRICAO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_TIPO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_QTD'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_DATA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_OBS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_VALOR_FINANCEIRO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_PEDIDOCOMPRAORIGEM'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    inherited sbRemover: TSpeedButton
      Caption = 'Estornar'
    end
  end
end
