inherited MEstoque: TMEstoque
  Caption = 'Gerenciamento de Estoque'
  ClientHeight = 363
  ClientWidth = 726
  ExplicitWidth = 742
  ExplicitHeight = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 322
    Width = 726
    ExplicitTop = 322
    ExplicitWidth = 726
    inherited sbGravar: TSpeedButton
      ExplicitLeft = 152
      ExplicitTop = 6
      ExplicitHeight = 39
    end
    inherited sbCancelar: TSpeedButton
      Left = 629
      ExplicitLeft = 629
    end
  end
  inherited gbInfos: TGroupBox
    Width = 726
    Height = 322
    ExplicitWidth = 726
    ExplicitHeight = 322
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 722
      Height = 305
      Align = alClient
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 59
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label4: TLabel
        Left = 16
        Top = 150
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object Label5: TLabel
        Left = 16
        Top = 107
        Width = 18
        Height = 13
        Caption = 'Qtd'
      end
      object Label6: TLabel
        Left = 156
        Top = 107
        Width = 53
        Height = 13
        Caption = 'Qtd M'#237'nima'
      end
      object Label7: TLabel
        Left = 287
        Top = 107
        Width = 57
        Height = 13
        Caption = 'Qtd M'#225'xima'
      end
      object Label8: TLabel
        Left = 423
        Top = 107
        Width = 59
        Height = 13
        Caption = 'Custo M'#233'dio'
      end
      object Label12: TLabel
        Left = 599
        Top = 107
        Width = 62
        Height = 13
        Caption = 'Dt. Cadastro'
      end
      object Label14: TLabel
        Left = 16
        Top = 193
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object SpeedButton1: TSpeedButton
        Left = 434
        Top = 31
        Width = 32
        Height = 23
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D0020000C40E0000C40E00000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F3F3F4E3DCCA9460458D4F2E946045E3DCCAF3F3F4F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F6F9FA9B6A4F8C51318D
          4F2E8E5130A47C67F6F8F9F2F2F2F2F2F2F2F2F2F2F2F2000000F0F0F0F0F0F0
          F0F0F0F2F2F2F6F8FAA6754D94592B955B2D925728B78C6CF5F7F9F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F5F8FAAD7E4D9E672B9F
          682D9D6528BB956BF5F7F9F2F2F2F2F2F2F2F2F2F2F2F2000000F2F2F3F4F5F8
          F4F5F8F4F6F8F7FBFFB78C4EA8742BA9752DA87228C4A170F6FAFFF4F6F8F4F5
          F8F4F5F8F2F2F2000000F5F0E5CDAE7BCCAD77CCAD77CDAE79B58638AF7E2BB0
          7F2CAF7E2AB88B41CDB07BCCAD77CCAD76CEB07EF9F5EE000000CEB072B38222
          B48425B48425B38425B6862AB6872BB6872BB6872BB58629B38425B48425B484
          25B28221D8BF8D000000CFB169BC8F28BC9029BC9029BC9029BC9029BC9029BC
          9029BC9029BC9029BC9029BC9029BC9029BB8F27DAC186000000D1B462BE9520
          BF9623BF9623BF9623BF9622C09726C09726C09726BF9622BF9623BF9623BF96
          23BE951FDAC280000000EFE4C5CCAB4BCCAC4DCCAA4DCCAB4EC7A43DC19C20C1
          9C22C19C21C9A642CCAC4ECCAA4DCCAB4DCBAB4CF3EDD7000000F0F1F2F5F4F2
          F5F4F2F6F6F3F7F8F9D1B559C3A01CC4A120C29F1DD9C277F6F6F8F4F4F1F4F3
          F1F5F4F3F0F0F1000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD2B757C5A518C5
          A51CC4A418DAC373F0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F0F0F0F2F2F2F4F5FAD3BA54C7AA15C8AB19C6A914DBC672F0F1F5EFEFEFEFEF
          EFEFEFEFEFEFEF000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD5BD52C8B011C9
          B115C8AF11DBC86FF0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F2F2F2F2F2F2F1F2F4EEE7BAD2BC3FD3BD3ED4BD45F4EFD3EFEFF1EFEFEFEFEF
          EFEFEFEFEFEFEF000000}
        OnClick = SpeedButton1Click
      end
      object SpeedButton3: TSpeedButton
        Left = 682
        Top = 74
        Width = 32
        Height = 23
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D0020000C40E0000C40E00000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F3F3F4E3DCCA9460458D4F2E946045E3DCCAF3F3F4F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F6F9FA9B6A4F8C51318D
          4F2E8E5130A47C67F6F8F9F2F2F2F2F2F2F2F2F2F2F2F2000000F0F0F0F0F0F0
          F0F0F0F2F2F2F6F8FAA6754D94592B955B2D925728B78C6CF5F7F9F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F5F8FAAD7E4D9E672B9F
          682D9D6528BB956BF5F7F9F2F2F2F2F2F2F2F2F2F2F2F2000000F2F2F3F4F5F8
          F4F5F8F4F6F8F7FBFFB78C4EA8742BA9752DA87228C4A170F6FAFFF4F6F8F4F5
          F8F4F5F8F2F2F2000000F5F0E5CDAE7BCCAD77CCAD77CDAE79B58638AF7E2BB0
          7F2CAF7E2AB88B41CDB07BCCAD77CCAD76CEB07EF9F5EE000000CEB072B38222
          B48425B48425B38425B6862AB6872BB6872BB6872BB58629B38425B48425B484
          25B28221D8BF8D000000CFB169BC8F28BC9029BC9029BC9029BC9029BC9029BC
          9029BC9029BC9029BC9029BC9029BC9029BB8F27DAC186000000D1B462BE9520
          BF9623BF9623BF9623BF9622C09726C09726C09726BF9622BF9623BF9623BF96
          23BE951FDAC280000000EFE4C5CCAB4BCCAC4DCCAA4DCCAB4EC7A43DC19C20C1
          9C22C19C21C9A642CCAC4ECCAA4DCCAB4DCBAB4CF3EDD7000000F0F1F2F5F4F2
          F5F4F2F6F6F3F7F8F9D1B559C3A01CC4A120C29F1DD9C277F6F6F8F4F4F1F4F3
          F1F5F4F3F0F0F1000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD2B757C5A518C5
          A51CC4A418DAC373F0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F0F0F0F2F2F2F4F5FAD3BA54C7AA15C8AB19C6A914DBC672F0F1F5EFEFEFEFEF
          EFEFEFEFEFEFEF000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD5BD52C8B011C9
          B115C8AF11DBC86FF0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F2F2F2F2F2F2F1F2F4EEE7BAD2BC3FD3BD3ED4BD45F4EFD3EFEFF1EFEFEFEFEF
          EFEFEFEFEFEFEF000000}
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 374
        Top = 163
        Width = 32
        Height = 23
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D0020000C40E0000C40E00000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F3F3F4E3DCCA9460458D4F2E946045E3DCCAF3F3F4F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F6F9FA9B6A4F8C51318D
          4F2E8E5130A47C67F6F8F9F2F2F2F2F2F2F2F2F2F2F2F2000000F0F0F0F0F0F0
          F0F0F0F2F2F2F6F8FAA6754D94592B955B2D925728B78C6CF5F7F9F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F5F8FAAD7E4D9E672B9F
          682D9D6528BB956BF5F7F9F2F2F2F2F2F2F2F2F2F2F2F2000000F2F2F3F4F5F8
          F4F5F8F4F6F8F7FBFFB78C4EA8742BA9752DA87228C4A170F6FAFFF4F6F8F4F5
          F8F4F5F8F2F2F2000000F5F0E5CDAE7BCCAD77CCAD77CDAE79B58638AF7E2BB0
          7F2CAF7E2AB88B41CDB07BCCAD77CCAD76CEB07EF9F5EE000000CEB072B38222
          B48425B48425B38425B6862AB6872BB6872BB6872BB58629B38425B48425B484
          25B28221D8BF8D000000CFB169BC8F28BC9029BC9029BC9029BC9029BC9029BC
          9029BC9029BC9029BC9029BC9029BC9029BB8F27DAC186000000D1B462BE9520
          BF9623BF9623BF9623BF9622C09726C09726C09726BF9622BF9623BF9623BF96
          23BE951FDAC280000000EFE4C5CCAB4BCCAC4DCCAA4DCCAB4EC7A43DC19C20C1
          9C22C19C21C9A642CCAC4ECCAA4DCCAB4DCBAB4CF3EDD7000000F0F1F2F5F4F2
          F5F4F2F6F6F3F7F8F9D1B559C3A01CC4A120C29F1DD9C277F6F6F8F4F4F1F4F3
          F1F5F4F3F0F0F1000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD2B757C5A518C5
          A51CC4A418DAC373F0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F0F0F0F2F2F2F4F5FAD3BA54C7AA15C8AB19C6A914DBC672F0F1F5EFEFEFEFEF
          EFEFEFEFEFEFEF000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD5BD52C8B011C9
          B115C8AF11DBC86FF0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F2F2F2F2F2F2F1F2F4EEE7BAD2BC3FD3BD3ED4BD45F4EFD3EFEFF1EFEFEFEFEF
          EFEFEFEFEFEFEF000000}
        OnClick = SpeedButton4Click
      end
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label17: TLabel
        Left = 156
        Top = 16
        Width = 92
        Height = 13
        Caption = 'C'#243'digo em Estoque'
      end
      object Label1: TLabel
        Left = 412
        Top = 148
        Width = 31
        Height = 13
        Caption = 'Chave'
      end
      object Label16: TLabel
        Left = 296
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Bloco'
      end
      object Label15: TLabel
        Left = 471
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Prateleira'
      end
      object SpeedButton2: TSpeedButton
        Left = 611
        Top = 31
        Width = 32
        Height = 23
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D0020000C40E0000C40E00000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F3F3F4E3DCCA9460458D4F2E946045E3DCCAF3F3F4F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F6F9FA9B6A4F8C51318D
          4F2E8E5130A47C67F6F8F9F2F2F2F2F2F2F2F2F2F2F2F2000000F0F0F0F0F0F0
          F0F0F0F2F2F2F6F8FAA6754D94592B955B2D925728B78C6CF5F7F9F2F2F2F2F2
          F2F2F2F2F2F2F2000000F2F2F2F2F2F2F2F2F2F2F2F2F5F8FAAD7E4D9E672B9F
          682D9D6528BB956BF5F7F9F2F2F2F2F2F2F2F2F2F2F2F2000000F2F2F3F4F5F8
          F4F5F8F4F6F8F7FBFFB78C4EA8742BA9752DA87228C4A170F6FAFFF4F6F8F4F5
          F8F4F5F8F2F2F2000000F5F0E5CDAE7BCCAD77CCAD77CDAE79B58638AF7E2BB0
          7F2CAF7E2AB88B41CDB07BCCAD77CCAD76CEB07EF9F5EE000000CEB072B38222
          B48425B48425B38425B6862AB6872BB6872BB6872BB58629B38425B48425B484
          25B28221D8BF8D000000CFB169BC8F28BC9029BC9029BC9029BC9029BC9029BC
          9029BC9029BC9029BC9029BC9029BC9029BB8F27DAC186000000D1B462BE9520
          BF9623BF9623BF9623BF9622C09726C09726C09726BF9622BF9623BF9623BF96
          23BE951FDAC280000000EFE4C5CCAB4BCCAC4DCCAA4DCCAB4EC7A43DC19C20C1
          9C22C19C21C9A642CCAC4ECCAA4DCCAB4DCBAB4CF3EDD7000000F0F1F2F5F4F2
          F5F4F2F6F6F3F7F8F9D1B559C3A01CC4A120C29F1DD9C277F6F6F8F4F4F1F4F3
          F1F5F4F3F0F0F1000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD2B757C5A518C5
          A51CC4A418DAC373F0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F0F0F0F2F2F2F4F5FAD3BA54C7AA15C8AB19C6A914DBC672F0F1F5EFEFEFEFEF
          EFEFEFEFEFEFEF000000EFEFEFEFEFEFF0F0F0F2F2F2F4F5FAD5BD52C8B011C9
          B115C8AF11DBC86FF0F1F5EFEFEFEFEFEFEFEFEFEFEFEF000000EFEFEFEFEFEF
          F2F2F2F2F2F2F1F2F4EEE7BAD2BC3FD3BD3ED4BD45F4EFD3EFEFF1EFEFEFEFEF
          EFEFEFEFEFEFEF000000}
        OnClick = SpeedButton2Click
      end
      object Label9: TLabel
        Left = 150
        Top = 148
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        TabStop = False
        DataField = 'ESTOQ_EMPRESA'
        DataSource = DM_Estoque.DSEstoque
        ParentColor = True
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 156
        Top = 32
        Width = 134
        Height = 21
        TabStop = False
        DataField = 'ESTOQ_CODIGO'
        DataSource = DM_Estoque.DSEstoque
        ParentColor = True
        ReadOnly = True
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 296
        Top = 32
        Width = 134
        Height = 21
        DataField = 'ESTOQ_BLOCO'
        DataSource = DM_Estoque.DSEstoque
        KeyField = 'BLOC_CODIGO'
        ListField = 'BLOC_DESCRICAO'
        ListFieldIndex = 1
        ListSource = DM_Estoque.DSBloco
        TabOrder = 3
        OnEnter = DBLookupComboBox1Enter
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 472
        Top = 32
        Width = 134
        Height = 21
        DataField = 'ESTOQ_PRATELEIRA'
        DataSource = DM_Estoque.DSEstoque
        KeyField = 'PRAT_CODIGO'
        ListField = 'PRAT_DESCRICAO'
        ListFieldIndex = 1
        ListSource = DM_Estoque.DSPrateleira
        TabOrder = 4
        OnEnter = DBLookupComboBox2Enter
      end
      object editProduto: TEdit
        Left = 16
        Top = 75
        Width = 665
        Height = 21
        ReadOnly = True
        TabOrder = 0
        OnEnter = editProdutoEnter
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 123
        Width = 134
        Height = 21
        DataField = 'ESTOQ_QTD'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 156
        Top = 123
        Width = 125
        Height = 21
        DataField = 'ESTOQ_QTDMIN'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 287
        Top = 123
        Width = 130
        Height = 21
        DataField = 'ESTOQ_QTDMAX'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 423
        Top = 123
        Width = 170
        Height = 21
        TabStop = False
        Color = clSkyBlue
        DataField = 'ESTOQ_CUSTOMEDIO'
        DataSource = DM_Estoque.DSEstoque
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 600
        Top = 123
        Width = 114
        Height = 21
        TabStop = False
        DataField = 'ESTOQ_DTCADASTRO'
        DataSource = DM_Estoque.DSEstoque
        ParentColor = True
        ReadOnly = True
        TabOrder = 9
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 164
        Width = 128
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 10
        Text = 'Ativo'
        OnExit = ComboBox1Exit
        Items.Strings = (
          'Ativo'
          'Inativo')
      end
      object DBEdit2: TDBEdit
        Left = 412
        Top = 164
        Width = 134
        Height = 21
        DataField = 'ESTOQ_CHAVE'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 11
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 208
        Width = 698
        Height = 85
        DataField = 'ESTOQ_OBS'
        DataSource = DM_Estoque.DSEstoque
        TabOrder = 12
      end
      object editCategoria: TEdit
        Left = 150
        Top = 164
        Width = 218
        Height = 21
        TabStop = False
        ParentColor = True
        ReadOnly = True
        TabOrder = 13
      end
    end
  end
end
