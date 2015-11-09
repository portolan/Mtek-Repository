inherited P_OP: TP_OP
  ActiveControl = DBGDados
  Caption = 'Ordem Producao'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 848
        Height = 278
        DataSource = DM_PCP.DS_OrdemProducao
        ParentShowHint = False
        ShowHint = True
        Columns = <
          item
            Expanded = False
            FieldName = 'C'#243'digo da venda'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C'#243'digo da Ordem'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data orcamento'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data entrega'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Custo da Producao'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo da Producao'
            Width = 89
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'Status'
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    ExplicitTop = 363
    inherited sbNovo: TSpeedButton
      ParentShowHint = False
      ExplicitLeft = 25
      ExplicitTop = 33
    end
  end
end
