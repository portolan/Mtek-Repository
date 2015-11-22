inherited PNotaEntrada: TPNotaEntrada
  Caption = 'Pesquisa - Notas de Entrada'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      Height = 167
      inherited DBGDados: TDBGrid
        Height = 150
        DataSource = dmPedCompra.DNotaEntrada
        Columns = <
          item
            Expanded = False
            FieldName = 'NTE_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NTE_NR_NOTA'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NTE_PESSOA'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NTE_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NTE_VLR_FRETE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NTE_VLR_PIS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NTE_VLR_ICMS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NTE_VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = False
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 168
      Width = 858
      Height = 134
      Align = alBottom
      Caption = 'Items da Nota'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 854
        Height = 117
        Align = alClient
        DataSource = dmPedCompra.DItemNotaEntrada
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'INE_EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'INE_NR_NOTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'INE_PESSOA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'INE_PRODUTO'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_QTD'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_UNITARIO'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_BRUTO'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_DESC'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_LIQUIDO'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_PIS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_ICMS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'INE_VLR_TOTAL'
            Width = 71
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    inherited sbRemover: TSpeedButton
      Visible = False
    end
    inherited sbAlterar: TSpeedButton
      Visible = False
    end
    inherited sbNovo: TSpeedButton
      Visible = False
    end
  end
  object dsNota: TDataSource
    DataSet = dmPedCompra.NotaEntrada
    OnDataChange = dsNotaDataChange
    Left = 385
    Top = 142
  end
end
