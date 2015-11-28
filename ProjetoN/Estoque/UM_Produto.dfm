inherited MProduto: TMProduto
  Caption = 'Manuten'#231#227'o de Produto'
  ClientHeight = 656
  ClientWidth = 717
  OnActivate = FormActivate
  ExplicitWidth = 733
  ExplicitHeight = 695
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 615
    Width = 717
    ExplicitTop = 615
    ExplicitWidth = 717
    inherited sbCancelar: TSpeedButton
      Left = 620
      ExplicitLeft = 620
    end
  end
  inherited gbInfos: TGroupBox
    Width = 717
    Height = 615
    ExplicitWidth = 717
    ExplicitHeight = 615
    object Label30: TLabel
      Left = 10
      Top = 503
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 713
      Height = 193
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 6
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label2: TLabel
        Left = 149
        Top = 9
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 9
        Top = 52
        Width = 78
        Height = 13
        Caption = 'C'#243'd. Refer'#234'ncia'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 184
        Top = 52
        Width = 57
        Height = 13
        Caption = 'C'#243'd. Barras'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 327
        Top = 9
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object Label6: TLabel
        Left = 446
        Top = 9
        Width = 62
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 9
        Top = 91
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label8: TLabel
        Left = 446
        Top = 52
        Width = 54
        Height = 13
        Caption = 'Un. Medida'
      end
      object Label9: TLabel
        Left = 192
        Top = 140
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object Label10: TLabel
        Left = 586
        Top = 9
        Width = 32
        Height = 13
        Caption = 'Moeda'
      end
      object Label11: TLabel
        Left = 10
        Top = 140
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object SpeedButton1: TSpeedButton
        Left = 151
        Top = 154
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
      object SpeedButton2: TSpeedButton
        Left = 516
        Top = 66
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
      object DBEdit2: TDBEdit
        Left = 149
        Top = 25
        Width = 172
        Height = 19
        Cursor = crNo
        BevelInner = bvNone
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PRO_CODIGO'
        DataSource = DM_Estoque.DSProdutos
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 9
        Top = 68
        Width = 169
        Height = 21
        DataField = 'PRO_CODREF'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 68
        Width = 256
        Height = 21
        DataField = 'PRO_CODBARRAS'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 446
        Top = 25
        Width = 134
        Height = 19
        Cursor = crNo
        TabStop = False
        Ctl3D = False
        DataField = 'PRO_DTCADASTRO'
        DataSource = DM_Estoque.DSProdutos
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 10
        Top = 155
        Width = 137
        Height = 21
        DataField = 'PRO_CATEGORIA'
        DataSource = DM_Estoque.DSProdutos
        KeyField = 'CAT_CODIGO'
        ListField = 'CAT_DESCRICAO'
        ListSource = DM_Estoque.DSCategoria
        ParentShowHint = False
        ShowHint = False
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 9
        Top = 106
        Width = 693
        Height = 21
        DataField = 'PRO_DESCRICAO'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 8
      end
      object cbStatus: TComboBox
        Left = 326
        Top = 25
        Width = 113
        Height = 21
        TabOrder = 2
        Text = 'Selecione...'
        OnExit = cbStatusExit
        Items.Strings = (
          'Ativo'
          'Inativo')
      end
      object DBComboBox1: TDBComboBox
        Left = 586
        Top = 25
        Width = 114
        Height = 21
        DataField = 'PRO_MOEDA'
        DataSource = DM_Estoque.DSProdutos
        Items.Strings = (
          'R$ (REAL)'
          'US$'
          'C$')
        TabOrder = 4
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 446
        Top = 68
        Width = 64
        Height = 21
        DataField = 'PRO_UNID'
        DataSource = DM_Estoque.DSProdutos
        KeyField = 'UN_CODIGO'
        ListField = 'UN_DESCRICAO'
        ListSource = DM_Estoque.DSUnidade
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
      end
      object Grupo: TRadioGroup
        Left = 396
        Top = 131
        Width = 312
        Height = 57
        Caption = 'Grupo'
        Items.Strings = (
          'Bem Imobilizado'
          'Produto Acabado'
          'Mat'#233'ria Prima')
        TabOrder = 10
        OnClick = GrupoClick
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 192
        Top = 155
        Width = 194
        Height = 21
        DataField = 'PRO_MARCA'
        DataSource = DM_Estoque.DSProdutos
        KeyField = 'MARC_CODIGO'
        ListField = 'MARC_DESCRICAO'
        ListSource = DM_Estoque.DSMarcas
        TabOrder = 11
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 9
        Top = 25
        Width = 130
        Height = 21
        DataField = 'PRO_EMPRESA'
        DataSource = DM_Estoque.DSProdutos
        KeyField = 'EMP_COD'
        ListField = 'EMP_RAZAO'
        ListSource = DM_contabil.Dempresa
        TabOrder = 0
        OnExit = DBLookupComboBox4Exit
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 215
      Width = 714
      Height = 114
      Caption = 'Fiscal'
      TabOrder = 3
      object Label12: TLabel
        Left = 13
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Class. Fiscal'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 206
        Top = 16
        Width = 53
        Height = 13
        Caption = 'CSTCSOSN'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 431
        Top = 16
        Width = 39
        Height = 13
        Caption = 'NCM/SH'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 13
        Top = 59
        Width = 35
        Height = 13
        Caption = 'Ex. Tipi'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 221
        Top = 59
        Width = 65
        Height = 13
        Caption = 'Sit. Tribut'#225'ria'
      end
      object DBEdit12: TDBEdit
        Left = 13
        Top = 32
        Width = 187
        Height = 19
        Cursor = crNo
        TabStop = False
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = 'PRO_CLASSFISCAL'
        DataSource = DM_Estoque.DSProdutos
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 206
        Top = 32
        Width = 219
        Height = 19
        Cursor = crNo
        TabStop = False
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = 'PRO_CSTCSOSN'
        DataSource = DM_Estoque.DSProdutos
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 431
        Top = 32
        Width = 274
        Height = 19
        Cursor = crNo
        TabStop = False
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = 'PRO_NCMSH'
        DataSource = DM_Estoque.DSProdutos
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 13
        Top = 75
        Width = 202
        Height = 19
        Cursor = crNo
        TabStop = False
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = 'PRO_EXTIPI'
        DataSource = DM_Estoque.DSProdutos
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 221
        Top = 75
        Width = 204
        Height = 19
        Cursor = crNo
        TabStop = False
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = 'PRO_SITTRIB'
        DataSource = DM_Estoque.DSProdutos
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
    end
    object TPanel
      Left = 519
      Top = 335
      Width = 195
      Height = 178
      TabOrder = 1
      object DBImage1: TDBImage
        Left = 2
        Top = 0
        Width = 193
        Height = 178
        DataField = 'PRO_IMG'
        DataSource = DM_Estoque.DSProdutos
        Stretch = True
        TabOrder = 0
        OnDblClick = DBImage1DblClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 335
      Width = 510
      Height = 162
      TabOrder = 2
      object Label17: TLabel
        Left = 15
        Top = 21
        Width = 23
        Height = 13
        Caption = 'Peso'
      end
      object Label20: TLabel
        Left = 390
        Top = 21
        Width = 35
        Height = 13
        Caption = '$ Frete'
      end
      object Label21: TLabel
        Left = 15
        Top = 67
        Width = 58
        Height = 13
        Caption = '% Encargos'
      end
      object Label22: TLabel
        Left = 149
        Top = 67
        Width = 53
        Height = 13
        Caption = '$ Encargos'
      end
      object Label23: TLabel
        Left = 272
        Top = 67
        Width = 81
        Height = 13
        Caption = '% Margem Lucro'
      end
      object Label24: TLabel
        Left = 390
        Top = 67
        Width = 76
        Height = 13
        Caption = '$ Margem Lucro'
      end
      object Label34: TLabel
        Left = 202
        Top = 110
        Width = 54
        Height = 13
        Caption = 'Valoriza'#231#227'o'
      end
      object Label18: TLabel
        Left = 148
        Top = 21
        Width = 59
        Height = 13
        Caption = 'Custo M'#233'dio'
      end
      object Label19: TLabel
        Left = 15
        Top = 110
        Width = 45
        Height = 13
        Caption = 'Vlr Venda'
      end
      object DBEdit17: TDBEdit
        Left = 15
        Top = 37
        Width = 128
        Height = 21
        DataField = 'PRO_PESO'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 149
        Top = 37
        Width = 235
        Height = 19
        Cursor = crNo
        TabStop = False
        Ctl3D = False
        DataField = 'PRO_CUSTOMEDIO'
        DataSource = DM_Estoque.DSProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit20: TDBEdit
        Left = 390
        Top = 37
        Width = 112
        Height = 21
        DataField = 'PRO_VLRFRETE'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 2
      end
      object DBEdit21: TDBEdit
        Left = 15
        Top = 83
        Width = 128
        Height = 21
        DataField = 'PRO_PERCENCARG'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 3
      end
      object DBEdit22: TDBEdit
        Left = 149
        Top = 83
        Width = 117
        Height = 21
        DataField = 'PRO_VLRENCARG'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 4
      end
      object DBEdit23: TDBEdit
        Left = 272
        Top = 83
        Width = 112
        Height = 21
        DataField = 'PRO_PERCMARGLUCR'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 5
      end
      object DBEdit24: TDBEdit
        Left = 390
        Top = 83
        Width = 112
        Height = 21
        DataField = 'PRO_VLRMARGLUCR'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 15
        Top = 126
        Width = 181
        Height = 21
        DataField = 'PRO_VLRVENDA'
        DataSource = DM_Estoque.DSProdutos
        TabOrder = 7
      end
      object DBEdit33: TDBEdit
        Left = 202
        Top = 126
        Width = 182
        Height = 19
        Cursor = crNo
        TabStop = False
        Ctl3D = False
        DataField = 'PRO_VALORIZACAO'
        DataSource = DM_Estoque.DSProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 519
      Width = 693
      Height = 82
      DataField = 'PRO_OBS'
      DataSource = DM_Estoque.DSProdutos
      TabOrder = 4
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 656
    Top = 456
  end
end
