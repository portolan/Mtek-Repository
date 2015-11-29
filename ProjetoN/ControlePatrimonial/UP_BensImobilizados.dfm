inherited P_BensImobilizados: TP_BensImobilizados
  Caption = 'Pesquisa de Bens Imobilizados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DMControlePatrimonial.DBenImobilizado
        Columns = <
          item
            Expanded = False
            FieldName = 'BNI_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_NUM_SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_NR_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_FORNECEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_LOCALIZACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_ESTADO_CONSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_DATA_AQUISICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_VLR_AQUISICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_VLR_AGREGADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_VLR_ATUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_VLR_RESIDUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_DEPRECIACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_OBSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_TEMPO_DEPRECIACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BNI_TEMPO_RESIDUAL'
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    inherited sbAlterar: TSpeedButton
      ExplicitLeft = 91
      ExplicitTop = 3
    end
  end
end
