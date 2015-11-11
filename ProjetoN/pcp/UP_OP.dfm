inherited P_OP: TP_OP
  ActiveControl = DBGDados
  Caption = 'Ordem Producao'
  ClientWidth = 872
  OnCreate = FormCreate
  ExplicitTop = -44
  ExplicitWidth = 888
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 872
    inherited gbDados: TGroupBox
      Width = 866
      ExplicitLeft = -2
      ExplicitTop = -1
      inherited DBGDados: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 856
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
    Width = 872
    inherited sbNovo: TSpeedButton
      ParentShowHint = False
      ExplicitLeft = 25
      ExplicitTop = 33
    end
    inherited sbSair: TSpeedButton
      Left = 775
    end
  end
  inherited pnCabecalho: TPanel
    Width = 872
    inherited gbStatus: TGroupBox
      Left = 711
    end
    inherited gbFiltro: TGroupBox
      Width = 711
      inherited editPesquisa: TEdit
        Width = 317
      end
      inherited Pesquisar: TButton
        Left = 630
      end
    end
  end
end
