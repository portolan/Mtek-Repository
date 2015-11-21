inherited P_BensImobilizados: TP_BensImobilizados
  Caption = 'Pesquisa de Bens Imobilizados'
  ExplicitWidth = 880
  ExplicitHeight = 440
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
            FieldName = 'BNI_CODIGO'
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
            FieldName = 'BNI_MANUTENCAO'
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
          end>
      end
    end
  end
  inherited pnCabecalho: TPanel
    inherited gbFiltro: TGroupBox
      ExplicitWidth = 848
      inherited editPesquisa: TEdit
        ExplicitWidth = 454
      end
      inherited Pesquisar: TButton
        ExplicitLeft = 767
      end
    end
  end
end
