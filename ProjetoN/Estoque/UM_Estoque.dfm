inherited MEstoque: TMEstoque
  Caption = 'Gerenciamento de Estoque'
  ClientHeight = 411
  ClientWidth = 726
  ExplicitWidth = 742
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 370
    Width = 726
    inherited sbCancelar: TSpeedButton
      Left = 629
    end
  end
  inherited gbInfos: TGroupBox
    Width = 726
    Height = 370
    ExplicitLeft = 83
    ExplicitTop = 8
    ExplicitWidth = 726
    ExplicitHeight = 370
    object GroupBox1: TGroupBox
      Left = 6
      Top = 17
      Width = 717
      Height = 348
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Empresa'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 59
        Width = 38
        Height = 13
        Caption = 'Produto'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 156
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 313
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Status'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 107
        Width = 18
        Height = 13
        Caption = 'Qtd'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 156
        Top = 107
        Width = 53
        Height = 13
        Caption = 'Qtd M'#237'nima'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 287
        Top = 107
        Width = 57
        Height = 13
        Caption = 'Qtd M'#225'xima'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 423
        Top = 107
        Width = 59
        Height = 13
        Caption = 'Custo M'#233'dio'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 16
        Top = 150
        Width = 46
        Height = 13
        Caption = 'Prateleira'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 287
        Top = 150
        Width = 47
        Height = 13
        Caption = 'Categoria'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 512
        Top = 150
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 599
        Top = 107
        Width = 62
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 16
        Top = 193
        Width = 24
        Height = 13
        Caption = 'Local'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 16
        Top = 236
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        DataField = 'ESTOQ_EMPRESA'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 75
        Width = 698
        Height = 21
        DataField = 'ESTOQ_PRODUTO'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 156
        Top = 32
        Width = 149
        Height = 21
        DataField = 'ESTOQ_CODIGO'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 313
        Top = 32
        Width = 128
        Height = 21
        DataField = 'ESTOQ_STATUS'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 123
        Width = 134
        Height = 21
        DataField = 'ESTOQ_QTD'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 156
        Top = 123
        Width = 125
        Height = 21
        DataField = 'ESTOQ_QTDMIN'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 287
        Top = 123
        Width = 130
        Height = 21
        DataField = 'ESTOQ_QTDMAX'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 423
        Top = 123
        Width = 170
        Height = 21
        DataField = 'ESTOQ_CUSTOMEDIO'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 16
        Top = 166
        Width = 265
        Height = 21
        DataField = 'ESTOQ_PRATELEIRA'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 287
        Top = 166
        Width = 218
        Height = 21
        DataField = 'ESTOQ_CATEGORIA'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 511
        Top = 166
        Width = 134
        Height = 21
        DataField = 'ESTOQ_TIPO'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 600
        Top = 123
        Width = 114
        Height = 21
        DataField = 'ESTOQ_DTCADASTRO'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 16
        Top = 209
        Width = 489
        Height = 21
        DataField = 'ESTOQ_LOCAL'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 12
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 22
    Top = 272
    Width = 696
    Height = 81
    TabOrder = 2
  end
end
