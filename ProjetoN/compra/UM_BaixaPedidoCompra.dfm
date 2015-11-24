object MBaixaPedidoCompra: TMBaixaPedidoCompra
  Left = 0
  Top = 0
  Caption = 'Baixa - Pedido de Compra'
  ClientHeight = 397
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnRodape: TPanel
    Left = 0
    Top = 356
    Width = 892
    Height = 41
    Align = alBottom
    TabOrder = 0
    object sbBaixar: TSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 39
      Align = alLeft
      Caption = 'Baixar'
      Glyph.Data = {
        8A030000424D8A030000000000004A0100002800000017000000180000000100
        08000000000040020000232E0000232E00004500000000000000FFFFFF00F7FF
        F700F7F7F700EFF7EF00EFF7E600E6F7E600E6EFE600E6EFDE00DEEFDE00DEEF
        D600D6E6D600D6E6CE00CEE6CE00CEDECE00CEDEC500C5DEC500BDD6B500B5D6
        AD00B5CEB500B5CEAD00ADCEAD00ADCEA500ADC5A500A5C5A500A5C59C009CC5
        9C009CBD94009CBD8C0094BD8C0094BD84008CB5840084B57B0084B5730084AD
        7B0084AD73007BAD73007BAD6B0073AD6B007BAD630073A5730073A56B006BA5
        6B0073A563006BA563006BA55A006B9C6300639C63006B9C5A00639C5A005A9C
        5A006B9C5200639C52005A9C52006B9C4A00639C4A005A9C4A00639C42005A94
        52005A944A0052944A005A944200529442005A943A0052943A0052943100528C
        3A00528C31004A8C31004A8C29000000000000000008111A1E1F1E1A13080100
        00000000000000000000000F2B3D414242434242413D2B0F0000000000000000
        00011C3D42434343434343434343423D1C010000000000000122414343434343
        43434343434343433D210100000000001C414343434343434343434343434343
        43411C000000000F3D4243434343432A2A4343434343434343423D0F0000002B
        424343434343260202264343434343434343422B00000D3D4343434343240200
        00022643434343434343433D0D001B4142424242240201000000022443434243
        434343411C002A4141414122010000000000000224424343434343422A003A3D
        3F3F21010000000A1000000002224242424242423A003D3D3D3D2C0600000D3A
        3D10000000022241414141413D003A3A3A3B3D2F060F3A3D3D3C10000000011F
        3F3F3F413A002A3A3A3A3A3A303A3A3A3A3A3A0F000000011E3D3D3D2A001C39
        393939393A3A3A3A3A3A3A3A0F00000002303B3A1C000D3A3939393939393939
        39393939390F00011E3A3A3A0D00012B3030313134343139393939393934111E
        3939392B0000000F3A30303030303030303030313134343439393A0F00000000
        1C39303030303030303030303030303030391C00000000000121392D2E2E2E2E
        2E2E2E3030303030392101000000000000011C392D2D2D2D2D2D2D2D2E2E303A
        1C010000000000000000000F2B39302D2D2D2D2D30392B0F0000000000000000
        00000000000D1C2A343B342A1C0D000000000000000000000000000000000000
        0000000000000000000000000000}
      OnClick = sbBaixarClick
      ExplicitHeight = 40
    end
    object sbSair: TSpeedButton
      Left = 795
      Top = 1
      Width = 96
      Height = 39
      Align = alRight
      Caption = 'Sair'
      Glyph.Data = {
        0E070000424D0E0700000000000036040000280000001A0000001A0000000100
        080000000000D8020000232E0000232E00000001000000000000F6F1EB00F7F1
        E600F7F0E500F5EFE900F5EEE200F6EFE300F3EDE500F2EAE300F5ECDB00F3E9
        D900F5EAD400F3E8D600F0E3D000F2E2CA00F5E6CD00EFE6DD00FEFEFD00EEE5
        DB00EDE4D900EFE0CC00EFE1CE00F1DEC100EADED100E8DBCD00EFDDC200EBDB
        C600E7DACC00E7D9CA00E6D8C800E7D6C200E7D5C000F3DEBD00F2D9B400F4DC
        B600F4D8AC00F2D6A800F2D5A600F1D3A100ECD6BA00EDD5B300E6D4BF00E6D2
        BC00E7D1B500EFD6AD00ECD1A400E4CDB400E8CFAD00E2C5A200FCFAF800F0D0
        9B00EFD09D00E9CD9E00ECCE9E00EAC99200EECD9700E5C89B00E7C69900ECC9
        8D00EDC78900E9C68A00EAC48400E7C48A00E6C28C00E7C28200DECCBA00DCC9
        B400DAC6B100DBC7B300FDFBFA00DCC3AB00D9C5B000D6C0A900E2BC8500E2BB
        8100D2BAA200D1B9A100DDBF9900D4BA9F00D3B69800D0B79E00D8B58800D8B0
        8100CDB39800CFB69C00CFB59B00CCB19500CAAE9100CBAB8C00C9AB8E00CCA7
        8300CAA48000C7A98B00C5A68800C7A48100C5A58600C5A58700C5A28200C2A2
        8100C3A28300C2A18200C2A18100E9C27F00E9BF7800E8BC7400E5BE7B00E5BB
        7400E2BA7300E4B96E00E2B56900E1B36300DFB87800DDB57D00DBB47200DEB3
        6800DEB56C00D8AD7200FEFDFC00D4AD7C00D5AB7300FBF8F500D0A77300DBAF
        6100D1A86C00CDA37900CBA17600C6A17D00CDA06700DCAC5800DEAF5E00DAAC
        5A00DDAC5600DCA95000DAA95100D7A85600D9A54B00F7F2ED00D6A54D00D2A1
        4900D7A24500D09F6300C39E7C00C49E7900C09D7D00C39F7E00C19F7F00C79B
        6900C0956300D19F5500D09E4200FFFFFE00C8995B00C1935500CF9E4700CA96
        4C00C4934C00D8A03F00D59F3E00D49C3800D1983500D3993200D0953B00CB96
        3400CE953100CF952D00CF942A00CE922300C68D3A00CA8E2900C58F2800C38A
        2300C0862A00CC8F1D00FCF9F700C8891900C7881900C3861F00C7861600C284
        1600C3831200C3831100C1810E00C0810D00BF9C7C00BF9A7800BF9B7B00B994
        6E00B9936B00BE936200B6906500B48D6100BD905300BE8F5200BA8B4A00BB8A
        4600B5844000B5864700AF865200AE844F00BC853000B7812D00BE821B00BB80
        1900BF831400BE800C00B27C2300A97C3D00AA7D3B00AE7E3600AA7B3100A578
        3300AC792800A2732800A3742400B47B1300B2791600F8F3EE00BC7F0D00FFFE
        FE00FDFCFB00BD7F0B00B97D0F00F9F5F100BB7D0900B87C0800B97C0A00B479
        0E00B67B0F00B57A0A00B3780C00B0760E00AE751200AB741000FAF7F400A972
        1000A7741C00A4721A00AD750F00FFFFFF00AB730E00A8710C00A8710B00A56F
        0800A56E0700A56F0700A26D0500A26C0400A16D04009D6C14009C6B12009C6A
        0E009B6A0B009C6A05009C6904009F6B03009F6B02009A680700EDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED0000EDEDEDEDEDEDEDEDED44
        00121B1C1607E8D9EDEDEDEDEDEDEDED0000EDEDEDEDEDEDED771A546390B6B8
        B6905B420610EDEDEDEDEDED0000EDEDEDEDED100F558F8DBBC3CFD0CEC4B9B6
        6340E8EDEDEDEDED0000EDEDEDED741B627DBFCCE7F0F1F4FEFBF8D1BAB64FD7
        EDEDEDED0000EDEDEDD917647CC6E1E5ECE7EFF3F5FDFCFFF7C4B854DDEDEDED
        0000EDEDED075E7BAAE0E3E4D697C0E9F2F5FEFCFFF9C5B646DAEDED0000EDED
        304B5AA6DBDEDFE2961928BEE9F3F4FEFBFFF8BC9012EDED0000EDED11648BB1
        B5DBDEDC7E13041EBFE9F3F5FEFBFFD3B84BDAED0000ED104659A0B0B3B4DBDE
        C97814051EBEE9F1F4FEFCFABD6403ED0000EDAC56519FABAEB2B4DBDEC97814
        021EBEE9F3F5FEFBCDB617ED0000ED875E6F9B9FA5ADB2B5DBDEC9780C021DBE
        E9F2F5FED4B841950000ED066149838A9DA4ADB3B4DBDEC97509011DC1EFF3F6
        EBB747D90000ED06623E6D82869CA3ADB3B4DBC8750B0529C1EEF0F2EAB747D9
        0000ED875C38676C80848AA2AEB3AF760D082A9AE5ECEEF0D28E41950000EDAC
        562F3C666B6D7F869EA773180A2A9AE2E4E5ECEEC28E17ED0000ED10464E323A
        656971808148150E2E99DBDFE3E4E5E6926403ED0000EDED115F2731393C686A
        350D0A2793B1CBDEDFE3E4C78C4ADAED0000EDED304A4D202536393F340E156E
        89A2A9CAD8E0D5919011EDED0000EDEDED075C2D212431353B343D71818894A1
        A8A9968F4274EDED0000EDEDEDD9175F2D1F222536393F6872798589987A5D53
        DDEDEDED0000EDEDEDED741B5C4515212332353B686A727050604BD7EDEDEDED
        0000EDEDEDEDEDD90F52584526202B2C33374C575E40E8EDEDEDEDED0000EDED
        EDEDEDEDED771A535C5B58585B5E58430610EDEDEDEDEDED0000EDEDEDEDEDED
        EDEDED4400121A1C160777D9EDEDEDEDEDEDEDED0000EDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED0000}
      OnClick = sbSairClick
      ExplicitLeft = 670
      ExplicitHeight = 40
    end
  end
  object gbCabeca: TGroupBox
    Left = 0
    Top = 0
    Width = 892
    Height = 62
    Align = alTop
    Caption = 'Fornecedor'
    TabOrder = 1
    object lbNomeFornecedor: TLabel
      Left = 143
      Top = 27
      Width = 106
      Height = 13
      Caption = 'lbNomeFornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFornecedor: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'edFornecedor'
    end
  end
  object pnlCorpo: TPanel
    Left = 0
    Top = 62
    Width = 892
    Height = 294
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 892
      Height = 128
      Align = alClient
      Caption = 'Pedidos do Fornecedor'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 888
        Height = 111
        Align = alClient
        DataSource = dsPedidos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CDS_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_PEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_DESCPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_VLR_TOTAL'
            Width = 72
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 128
      Width = 892
      Height = 166
      Align = alBottom
      Caption = 'Pedidos selecionados para Baixa'
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 888
        Height = 108
        Align = alClient
        DataSource = dsPedidosSelecionados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CDS_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_PEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_DESCPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDS_VLR_TOTAL'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 123
        Width = 888
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 640
          Top = 9
          Width = 107
          Height = 21
          Caption = 'Valor da Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 350
          Top = 9
          Width = 134
          Height = 21
          Caption = 'Quantidade Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 14
          Top = 9
          Width = 68
          Height = 21
          Caption = 'Nr. Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edVlrNota: TEdit
          Left = 753
          Top = 9
          Width = 121
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 0
        end
        object edQtdTotal: TEdit
          Left = 489
          Top = 9
          Width = 121
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 1
        end
        object edNrNota: TEdit
          Left = 88
          Top = 9
          Width = 121
          Height = 21
          TabOrder = 2
          OnKeyPress = edNrNotaKeyPress
        end
      end
    end
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Filter = ' (BO_SELECIONADO = FALSE)'
    Filtered = True
    Params = <>
    AfterInsert = cdsPedidosAfterInsert
    Left = 56
    Top = 126
    object cdsPedidosCDS_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CDS_EMPRESA'
    end
    object cdsPedidosCDS_PEDIDO: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'CDS_PEDIDO'
    end
    object cdsPedidosCDS_PRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'CDS_PRODUTO'
      Size = 30
    end
    object cdsPedidosCDS_DESCPRODUTO: TStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'CDS_DESCPRODUTO'
      Size = 60
    end
    object cdsPedidosCDS_QTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'CDS_QTD'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidosCDS_VLR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'CDS_VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidosBO_SELECIONADO: TBooleanField
      FieldName = 'BO_SELECIONADO'
    end
  end
  object cdsPedidosSelecionados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 14
    object cdsPedidosSelecionadosCDS_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CDS_EMPRESA'
    end
    object cdsPedidosSelecionadosCDS_PEDIDO: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'CDS_PEDIDO'
    end
    object cdsPedidosSelecionadosCDS_PRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'CDS_PRODUTO'
      Size = 30
    end
    object cdsPedidosSelecionadosCDS_DESCPRODUTO: TStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'CDS_DESCPRODUTO'
      Size = 60
    end
    object cdsPedidosSelecionadosCDS_QTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'CDS_QTD'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidosSelecionadosCDS_VLR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'CDS_VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsPedidos: TDataSource
    AutoEdit = False
    DataSet = cdsPedidos
    Left = 120
    Top = 126
  end
  object dsPedidosSelecionados: TDataSource
    AutoEdit = False
    DataSet = cdsPedidosSelecionados
    OnDataChange = dsPedidosSelecionadosDataChange
    Left = 816
    Top = 14
  end
end
