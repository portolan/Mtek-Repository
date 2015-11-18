inherited P_FichaTecnica: TP_FichaTecnica
  Caption = 'Ficha T'#233'cnica'
  ClientHeight = 403
  ExplicitWidth = 880
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Height = 308
    ExplicitHeight = 308
    inherited gbDados: TGroupBox
      Height = 302
      ExplicitHeight = 302
      inherited DBGDados: TDBGrid
        Height = 285
        DataSource = DM_PCP.DS_Ficha_Tecnica
        Columns = <
          item
            Expanded = False
            FieldName = 'C'#243'digo da Ficha'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'M'#227'o de Obra'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Custo Unit'#225'rio'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Custo Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tempo de Producao'
            Width = 104
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 361
    ExplicitTop = 361
  end
end
