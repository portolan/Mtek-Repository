object P_contasbancarias: TP_contasbancarias
  Left = 0
  Top = 0
  Caption = 'Contas Bancarias'
  ClientHeight = 402
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCorpo: TPanel
    Left = 0
    Top = 53
    Width = 864
    Height = 307
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object gbDados: TGroupBox
      Left = 1
      Top = 1
      Width = 858
      Height = 301
      Align = alClient
      Caption = 'Dados:'
      TabOrder = 0
      object DBGDados: TDBGrid
        Left = 2
        Top = 15
        Width = 854
        Height = 284
        Align = alClient
        DataSource = DM_financeiro.D_contasbancarias
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGDadosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TTR_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_EMP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PES_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CTB_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_CON_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_BAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DT_CANCELAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_TITULO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_ORIGINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_PAGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_VL_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MR_DIARIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_MT_ATRASO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTR_TP_MULTA'
            Visible = True
          end>
      end
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 360
    Width = 864
    Height = 42
    Align = alBottom
    BevelOuter = bvSpace
    TabOrder = 1
    object sbRemover: TSpeedButton
      Left = 193
      Top = 1
      Width = 96
      Height = 40
      Align = alLeft
      Caption = 'Remover'
      Glyph.Data = {
        76030000424D76030000000000004E0100002800000017000000170000000100
        08000000000028020000232E0000232E00004600000000000000FFFFFF00F7F7
        FF00F7EFFF00EFEFFF00E6E6FF00DEE6FF00DEDEFF00D6DEFF00D6D6FF00CED6
        FF00CECEFF00C5CEFF00C5C5FF00BDC5F700BDBDF700B5BDF700B5B5F700ADB5
        F700ADADF700A5ADF700A5A5F7009CA5F70094A5F7009C9CF7008C9CF7009494
        F7008C94F7008494F7008C8CF700848CF7007B8CF7008484F7007B84F7007384
        F7007B7BF700737BF7007B7BEF00737BEF006B7BEF007373F7006B73F7007373
        EF006B73EF006373EF00736BF7005A73EF00636BF7006B6BEF00636BEF005A6B
        EF00526BEF005A63F7006B63EF006363EF005A63EF005263EF004A63EF005A5A
        EF00525AEF004A5AEF005252EF004A52EF004252EF004A4AEF00424AEF003A4A
        EF004242EF003A42EF00423AEF003A3AEF00000000000000000C1D3944454439
        1F0C010000000000000000000000000E3C4545454545454545453C0E00000000
        0000000000011F454545454545454545454545451F01000000000000012C4545
        454545454545454545454545452C0100000000001F4545454545454545454545
        4545454545451F000000000E45454545421F45454545454545253F454545450E
        0000003C454545420F001245454545451D00083F4545453C00000C4545454542
        0E0000134545451D0000073F454545450C001D4543454545420E010013451D00
        00073D45454545451F0039434243434343420D00000B0000083F454545454545
        39004240404040404042400D000000073D434343434343454400454040404040
        404040180000001140424242424343434500423E3E3E3E3E3E3E180000010000
        13404040404040404200393E3E3E3E3E3E18000007370B0000133E4040404040
        39001F403B3B3B3B16000007373E3B0B0000133E3E3E3E401F000C433B3B3B37
        070007373B3B3B3B0B00012B3E3E3E450C00013C3B383838310F2D3B3B3B3B3B
        370B1A3B3B3B3E3C0000000E42373737373737383838383838383B3B3B3B430E
        000000001F40323237373737373737373737373738401F0000000000012C4032
        323232323232323232373737402C01000000000000011F423731313132323232
        323237421F010000000000000000000E39403A312D2D2D323B42390E00000000
        0000000000000000000C1F39424442391F0C0000000000000000}
      OnClick = sbRemoverClick
      ExplicitLeft = 145
    end
    object sbAlterar: TSpeedButton
      Left = 97
      Top = 1
      Width = 96
      Height = 40
      Align = alLeft
      Caption = 'Alterar'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000232E0000232E00000001000000000000E5D9D500E3D8
        D500E2D5D000F8F6F500E0D4D000FCFBFB00DCCECA00DCCEC900DCCDC800DCCB
        C500DAC9C200D9C9C300D7C8C300D7C7C300D0BEB800CCBDBA00C9BAB800CFBB
        B400CEB9B200C9B8B500C6B4B000C3B3B000CDB5AC00CBB1A800EAE2DF00C7B2
        AC00C9A8A200C6AFA900EBE4E100C5AFA800C2ADA900C5ADA400C5A8A200C4A9
        A000C3ACA500C2AAA400C3AAA100C1A8A000C6A7A000C9A69E00C7AA9E00C7A5
        9D00C3A49E00C2A49800C2A49900C0A59B00C2A39D00C2A09900C3A09700C49F
        9600C09F9700C39F9700C09B9200ECE4E100BDABA700ECE4E200BEA7A100BFA7
        A000BCA19C00BDA19900BBA49F00BBA39B00BBA19A00BBA19900BC9F9800BE9E
        9700BE9D9500BC999200BC989000B99D9500BB9B9600BA9B9300B7979000BC9A
        8D00C0988D00BD978E00BC958D00B9968D00B8968F00B8928500B8918100B695
        8E00B1918A00B5918500B0918700B3908300B48F8500B38E8400AF8F8400AF8D
        8600AD8E8400AE8E8300B88C7E00B5897B00B38A7900B4867800AD887A00AF89
        7A00AD877E00AA867E00AB857C00A9857C00A9827900A9817200A7857B00A684
        7A00A6817800AE806C00A67F7500A57D7400A67F7300A37D7400A37D7200A27E
        7300AF7E6D00A9786800A9766000A57C6E00A47B6D00A7786800A5766800A275
        6800A6776400A5766400A7746300A7776300A3776700A1766700A1736200A570
        5B00A7715A00A6705B00A3715D00A46F58009D756C009F766B009C766B009D73
        68009E7466009C7165009F7061009F7363009D71610099726700987165009870
        65009D6F61009A6D6000966C6200966D6200FDFDFD00966C61009E6D5A00986C
        5F009B6B5A009E665100F6F2F100EAE1DE0095695B00946B5E0094685C009167
        5A00936456009E644C008F6154009C5F44009B5F4400985C4300965D4600955D
        4600935C4600925B4700905843008D5F5300FEFDFD008A5C5000895847008757
        4700FEFEFE0085564700845447008354460083524400F5F2F000815042009856
        390095593F0097593F0095573C0096563B0097543500FFFFFF00975334009752
        320097513100975030009650300095513200F5F2F10095503100905036009451
        3400935135009350330094503100914F3400934F3300934F31008F553E008D52
        3C008E5139008A513C008F513700894F39008E4E34008B4D3400894D3500894B
        3400874F3C00854F3C00854C3800874D3800834E3C00834C3800824B3900814B
        3800864C3600864B3400874B3400844B3600844A3400854A3400834A36008249
        340080483400F6F2F0007F4E40007C4B3C007E4A39007D4939007A483A007A48
        39007A4739007A4738007A4638007C4737007E4735007E4734007C4634007A45
        3400794536007945370079453500784435007744350077433400BFBFBFBFBFBF
        BFBF05B718000018B705BFBFBFBFBFBFBFBFBFBFBFBFBFBF372497B8F3FDFDF3
        B8972437BFBFBFBFBFBFBFBFBFBF0511ADFDFFFFFFFFFFFFFFFFFDAD1105BFBF
        BFBFBFBFBF0348EDFFFFFFFFFFFFFFFFFFFFFFFFED4803BFBFBFBFBF0548F1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF14705BFBFBFBF11EDFDFDEDB8B8B8B8B8B8B8
        B8EDFFFFFFFFED11BFBFBF37A4F9F9B80E0D0D0D0D0D0D0D0D23F3FDFDFDFDA4
        B7BFBF23F8F8F8B00A8B8B8B8BA4B8B8A20DEDF9F9F9F9F923BF9695F7F7F7B0
        041711111166F6F8B00DDBF8F8F8F8F8950537B6EAEAEAAB0957534752635757
        600DDEF7F7F7F7F7B63701E1E9E9E9AB084F4D4D480D194D5C0DDBEAEAEAEAEA
        EE0408EAE6E6E6AB041A1616110F0F23310DDAE9E9E9E9E9EA0C08E9E4E4E4A9
        09737676766D0D0C620DD3E7E7E7E7E7EA0C01DCD9D9D9A8020E0A0A0A0A0D06
        0F0DD1E4E4E4E4E4DF0437B6D7D7D7A809737C7C7C7C7C59040FACD9D9D9D9D9
        B6370593D7D6D6BC1A0E0E0E0E0E0E0E19063FD0D7D7D7D99305BF23D9CDCDCD
        C8CAC9CACACACACACA6E0D54D4D6D6E323BFBF37A2D6CECECECECECDCDCDCDCD
        CDCA6A54CACDD6A2B7BFBFBF11D3CCC5CCCCCCCCCCCCCCCCCECCC9C9CECED311
        BFBFBFBF0547D2C4C2C2C2C4C4C4C4C4C4C4C4C4C7D54705BFBFBFBFBF0347D1
        C4C2C2C2C2C2C2C2C2C2C2C4D14703BFBFBFBFBFBFBF0511A2CDC3C2C2C2C2C2
        C2C3CDA21105BFBFBFBFBFBFBFBFBFBF37248ED0C8CDCDC8D08E2337BFBFBFBF
        BFBFBFBFBFBFBFBFBFBF039D0D12120D9D03BFBFBFBFBFBFBFBF}
      OnClick = sbAlterarClick
      ExplicitLeft = 73
    end
    object sbNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 40
      Align = alLeft
      Caption = 'Novo'
      Glyph.Data = {
        9E030000424D9E03000000000000760100002800000017000000170000000100
        08000000000028020000232E0000232E00005000000000000000FFFFFF00F7FF
        F700F7F7F700EFF7EF00E6F7E600DEEFDE00DEEFD600DEE6D600D6E6D600D6E6
        CE00CEDECE00CEDEC500C5DEC500C5DEBD00C5D6BD00BDD6BD00C5D6B500BDD6
        B500B5D6B500BDD6AD00B5D6AD00B5CEB500B5CEAD00B5CEA500ADCEA500ADCE
        9C00ADC5A500A5C5A500A5C59C009CC59C00A5C594009CC594009CBD94009CBD
        8C0094BD8C0094BD84008CB58C008CB584008CB57B0084B57B008CB5730084B5
        730084AD7B0084AD73007BAD730073AD73007BAD6B0073AD6B007BAD630073A5
        730073A56B006BA56B007BA5630073A563006BA5630073A55A006BA55A006BA5
        52006B9C6300639C63006B9C5A00639C5A005A9C5A006B9C5200639C52005A9C
        52006B9C4A00639C4A005A9C4A005A9452005A944A0052944A005A9442005294
        42005A943A0052943A00528C3A00528C31004A8C31004A8C2900000000000000
        000A213546494635220A010000000000000000000000000C36494C4D4D4E4D4D
        4C49360C0000000000000000000122494D4E4E4E4E4E4E4E4E4E4D4922010000
        00000000012B4C4E4E4E4E4E4E4E4E4E4E4E4E4E492A010000000000224C4E4E
        4E4E4E4E3726344E4E4E4E4E4E4C22000000000C494D4E4E4E4E4E4E11000D4E
        4E4E4E4E4E4D490C000000364D4E4E4E4E4E4E4E11000D4E4E4E4E4E4E4E4D36
        000009494E4E4E4E4E4E4E4E11000D4E4E4E4E4E4E4E4E490A001D4C4D4D4D4D
        4D4E4D4E11000D4E4E4E4D4E4E4E4E4C22002E4C4C4C4C4D4D4D4D4D11000D4D
        4D4D4E4E4E4E4E4D35003D494B4B35080808090903000309090909164D4D4D4D
        4600464949492B000000000000000000000000094C4C4C4C49003D4646473518
        1818181805000518181818214B4B4B4C46002E4646464646464646460F000C49
        494949494949494935001F4545454545464646460E000C464646464646464746
        2200094645454545454545450E000C4546464646464646460A0001363D3D3E3E
        41413E450E000B4545454145454545360000000C463D3D3D3D3D3D3D2015203E
        3E4141414545460C0000000022453D3D3D3D3D3D3D3D3D3D3D3D3D3D3D452200
        00000000012A453A3B3B3B3B3B3B3B3D3D3D3D3D452A01000000000000012245
        3A3A3A3A3A3A3A3A3B3B3D4622010000000000000000000C36453D3A3A3A3A3A
        3D45360C000000000000000000000000000A223541474135220A000000000000
        0000}
      OnClick = sbNovoClick
      ExplicitLeft = -5
      ExplicitTop = 3
    end
    object sbSair: TSpeedButton
      Left = 767
      Top = 1
      Width = 96
      Height = 40
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
    end
  end
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object gbStatus: TGroupBox
      Left = 703
      Top = 0
      Width = 161
      Height = 53
      Align = alRight
      Caption = 'Status'
      TabOrder = 0
    end
    object gbFiltro: TGroupBox
      Left = 0
      Top = 0
      Width = 703
      Height = 53
      Align = alClient
      Caption = 'Filtros'
      TabOrder = 1
      DesignSize = (
        703
        53)
      object cbContent: TComboBox
        Left = 156
        Top = 17
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 1
        Text = 'Cont'#233'm'
        Items.Strings = (
          #201' igual'
          #201' diferente'
          'Cont'#233'm')
      end
      object cBoxFiltro: TComboBox
        Left = 5
        Top = 17
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 0
      end
      object editPesquisa: TEdit
        Left = 307
        Top = 17
        Width = 309
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        OnChange = editPesquisaChange
      end
      object Pesquisar: TButton
        Left = 622
        Top = 15
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Pesquisar'
        TabOrder = 3
        OnClick = PesquisarClick
      end
    end
  end
end
