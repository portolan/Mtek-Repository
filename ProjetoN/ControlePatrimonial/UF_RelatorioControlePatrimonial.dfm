object F_RelControlePAtrimonial: TF_RelControlePAtrimonial
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios Referente ao Controle Patrimonial'
  ClientHeight = 346
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 650
    Height = 305
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    object Label1: TLabel
      Left = 56
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Relat'#243'rios'
    end
    object Empresa: TLabel
      Left = 56
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Empresa'
      Visible = False
    end
    object lbDescricaoEmpresa: TLabel
      Left = 119
      Top = 118
      Width = 3
      Height = 13
      Visible = False
    end
    object Produto: TLabel
      Left = 56
      Top = 142
      Width = 38
      Height = 13
      Caption = 'Produto'
      Visible = False
    end
    object lbDescricaoProduto: TLabel
      Left = 119
      Top = 164
      Width = 3
      Height = 13
      Visible = False
    end
    object Fornecedor: TLabel
      Left = 56
      Top = 188
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
      Visible = False
    end
    object lbDescricaoFornecedor: TLabel
      Left = 119
      Top = 210
      Width = 3
      Height = 13
      Visible = False
    end
    object NumSerie: TLabel
      Left = 56
      Top = 234
      Width = 52
      Height = 13
      Caption = 'Num. Serie'
      Visible = False
    end
    object Tipo: TLabel
      Left = 320
      Top = 96
      Width = 20
      Height = 13
      Caption = 'Tipo'
      Visible = False
    end
    object lbDescricaoTipo: TLabel
      Left = 375
      Top = 118
      Width = 3
      Height = 13
    end
    object Localizacao: TLabel
      Left = 320
      Top = 142
      Width = 54
      Height = 13
      Caption = 'Localizacao'
      Visible = False
    end
    object lbdescricaolocalizacao: TLabel
      Left = 376
      Top = 168
      Width = 3
      Height = 13
    end
    object Estado_de_Conservacao: TLabel
      Left = 320
      Top = 188
      Width = 114
      Height = 13
      Caption = 'Estado de Conservacao'
      Visible = False
    end
    object lbEstadoDeConservacao: TLabel
      Left = 375
      Top = 210
      Width = 3
      Height = 13
    end
    object CBRelatorios: TComboBox
      Left = 56
      Top = 51
      Width = 145
      Height = 21
      TabOrder = 0
      OnChange = CBRelatoriosChange
      OnClick = CBRelatoriosClick
      Items.Strings = (
        'TIPO'
        'LOCALIZA'#199#195'O'
        'ESTADO DE CONSERVA'#199#195'O'
        'BEM IMOBILIZADO')
    end
    object cbAtivo: TCheckBox
      Left = 272
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Somente Ativos'
      TabOrder = 1
    end
    object EdEmpresa: TEdit
      Left = 56
      Top = 115
      Width = 57
      Height = 21
      TabOrder = 2
      Visible = False
      OnExit = EdEmpresaExit
    end
    object EdProduto: TEdit
      Left = 56
      Top = 161
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 3
      Visible = False
      OnExit = EdProdutoExit
    end
    object EdFornecedor: TEdit
      Left = 56
      Top = 207
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 4
      Visible = False
      OnExit = EdFornecedorExit
    end
    object EdNumeroSerie: TEdit
      Left = 56
      Top = 253
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
      Visible = False
    end
    object cbAnalitico: TCheckBox
      Left = 272
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Analitico'
      TabOrder = 6
      Visible = False
    end
    object EdTipo: TEdit
      Left = 320
      Top = 115
      Width = 49
      Height = 21
      TabOrder = 7
      Visible = False
      OnExit = EdTipoExit
    end
    object edlocalizacao: TEdit
      Left = 321
      Top = 161
      Width = 49
      Height = 21
      TabOrder = 8
      Visible = False
      OnExit = edlocalizacaoExit
    end
    object edEstadoDeConservacao: TEdit
      Left = 320
      Top = 207
      Width = 49
      Height = 21
      TabOrder = 9
      Visible = False
      OnExit = edEstadoDeConservacaoExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 305
    Width = 650
    Height = 41
    Align = alBottom
    TabOrder = 1
    object sbSair: TSpeedButton
      Left = 544
      Top = 1
      Width = 105
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
      ExplicitLeft = 520
      ExplicitTop = 6
    end
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 105
      Height = 39
      Align = alLeft
      Caption = 'Emitir'
      OnClick = SpeedButton1Click
      ExplicitLeft = 0
      ExplicitTop = 6
    end
  end
end
