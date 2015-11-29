inherited Up_NFE: TUp_NFE
  Caption = 'Pesquisa Pedido para Gerar Nota Fiscal '
  ClientHeight = 420
  OnActivate = nil
  OnShow = nil
  ExplicitWidth = 880
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Height = 325
    ExplicitHeight = 325
    inherited gbDados: TGroupBox
      Height = 319
      ExplicitHeight = 319
      object Label8: TLabel [0]
        Left = 24
        Top = 258
        Width = 79
        Height = 13
        Caption = 'Data da Emiss'#227'o'
        FocusControl = DBEdit8
      end
      object Label9: TLabel [1]
        Left = 286
        Top = 258
        Width = 67
        Height = 13
        Caption = 'Data de Sa'#237'da'
        FocusControl = DBEdit9
      end
      object Label2: TLabel [2]
        Left = 538
        Top = 258
        Width = 52
        Height = 13
        Caption = 'Nota Fiscal'
      end
      inherited DBGDados: TDBGrid
        Left = -15
        Top = 3
        Height = 227
        Align = alCustom
        DataSource = DM_VENDA.DS_Venda
        OnDblClick = nil
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_PESSOA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DEPOSITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_UNIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_QTD_DISPONIVEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRUNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLRTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_REAJUSTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTPRAZOENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_ORDEMVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_TIPOMOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_TIPODESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_LISTA_PRECO'
            Visible = True
          end>
      end
      object DBEdit8: TDBEdit
        Left = 128
        Top = 253
        Width = 134
        Height = 21
        DataField = 'PED_DTPEDIDO'
        DataSource = DM_VENDA.DS_Venda
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 369
        Top = 254
        Width = 134
        Height = 21
        DataField = 'PED_DTPRAZOENTREGA'
        DataSource = DM_VENDA.DS_Venda
        TabOrder = 2
        OnChange = DBEdit9Change
      end
      object DBEdit21: TDBEdit
        Left = 602
        Top = 255
        Width = 134
        Height = 21
        DataField = 'PED_ORDEMVENDA'
        DataSource = DataSource1
        TabOrder = 3
      end
    end
  end
  inherited pnRodape: TPanel
    Top = 378
    ExplicitTop = 378
    object Button1: TButton
      Left = 288
      Top = 1
      Width = 94
      Height = 40
      Caption = 'Emitir NFE'
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_VENDA.IB_Venda
    Left = 761
    Top = 310
  end
end
