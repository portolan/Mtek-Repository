object xPesqPadrao: TxPesqPadrao
  Left = 0
  Top = 0
  Caption = 'xPesqPadrao'
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
  Position = poDesktopCenter
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
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        2A070000424D2A0700000000000036040000280000001B0000001B0000000100
        080000000000F4020000232E0000232E00000001000000000000F5F6FD00F6F7
        FD00F6F7FB00F2F2FC00F1F2FA00F1F2F700F5F5F700E9EAFB00EEEFFD00ECED
        FD00FBFBFB00EDEDFB00E8EAFC00EEEEF800EDEEF300EBECF200E7E9FB00E5E5
        FC00E3E5FC00E2E3FC00FBFBFC00E0E1FC00E3E3F800E1E1F900E3E4F300E5E6
        F700E5E6F200E2E2F500E5E6EE00DEE1FB00DEE0F300FAFAFD00DFE0EC00D8D9
        FB00DDDFFB00DADDFB00DBDBF400DDDDF600DDDEF300DADAF600FCFCFE00D6D9
        FB00D0D1FA00D4D7FA00D3D6FA00D8DAEA00D9DBED00D3D5E600D5D6E600CFD1
        E800CFD1E400CACCFA00CCCDF300CDCDF500C8C7F200C3C6F900C1C2F900C6C6
        F000CCCDEE00FDFDFE00CECFE300CCCDE500CBCDE100C1C2EA00C4C6E600BBC0
        F800BEC0E600B9BBF800BDBEF900BBBEF900BDBDF200B7B8F200B6BBF600B4B6
        F800B3B5F400BCBEEB00B8BBE500B5B8E500B1B1EE00B2B2EB00FFFFFF00AEB1
        F700B0B1E700A8A8F000ADAEF700A9AFF600A5AAF600A2A4F600A5A6F600ACAC
        EC00AAAAE700A4A4EF00B6B8D900B4B6DA00B2B4D700ADB0DC00A6A7DE00A2A5
        D300A09FEC009CA2F4009EA1D8009EA1D200989DF4009E9DF5009999F5009997
        F400FAFAFE009292F2009797F5009696F2009296F5009292F4009B9BEB009D9E
        E3009493EB009696EC009192ED009394E7008F90F4008F90EA008E90E3008D8E
        F3008E8DF400898BF4008B8BF4008B8AF2008887F300FEFEFF008586F3008786
        F3008484F300F8F8FA00F9F9FD008F8FED008D8EEA008A8AED008B8BEA008A8C
        E5008383EE008686EA008486E0009D9FD0009798DE009698D3009092DD009395
        DA009093D2009699CE008D90DB008E91D7008F92CD008B8CD4008385DA008385
        D4008B8CCD008180F300807FE200F9F9FA007F7FF2007D7FF3007A7EF2007B7B
        F2007877F200777BF2007475F1007170F1007C7CED007979EA007D7CE5007378
        EE007375ED007676EA007171EB006E72F0006E6EF1006D6DF1006969F1006668
        F0006566F1006061F0006C6CEB006A6EEF006967E4006264EC006567EA006162
        EE006262E5007D7DDD00797BD7007274D8007777D700787BCB007476C800706F
        DD006E70C8006F6DDB006B6DD5006160D4006E6FCD006568C7006365C7005F60
        EB005E60CD00F7F8FC005E5FEF00595BED005C5BE6005759EC005555EB005253
        EE005555E6004A4AED004E4EEE00494BEB004A4AE4004844E0004748EA004543
        E8004646ED004646EA004142EA004241E6004242E2005C5BDF00FEFEFE005958
        D7005252D3005B5BCC005151CC00504FCF004F50DF004D4ADB004A4BD4004B4A
        D2004946DB00FDFDFD004848D2004542D700403EE500413FD3003E3EE9003B3A
        E9003B3AE7003D39E1003936E8003833E3003935E6003934E5003935E1003833
        E6003833E5003C3ADA003C39DE00FCFCFC003834DD003A36DA00505050505050
        5050505050505050505050505050505050505050500050505050505050505050
        EB83050E0E0506FD5050505050505050500050505050505050500A205E9AC0C7
        C2BF613E1C835050505050505000505050505050E01892E4EFFFFFFFFFFFEFE4
        BF3E0EEB50505050500050505050503B42E3FFFEF5F5F5F5F5FAFAFEEFE48D1C
        FD5050505000505050503B4DECFFF5F5F5F5F5FAF9F9F9F4F4FFEF961CEB5050
        50005050505039ECFEF5F5F5FAFAF9F9F9F4F4F1F1F0DEEF8D0E505050005050
        500BC5FEF5F5D580F0F9F9F4F4F1DB6ECDDAD3EDE43E8350500050505071FFF5
        FAD5388456DCF4F1F1D5546A2AB2D4D1EFBF1A505000505003E1F5F9F97B84E0
        6A56DADCD3556AE06A63CFCDD2E43EFD5000505036FBF9F9F9DC566AE06A55CF
        556AE06A49B3CCB3B3EC61065000505062FEF4F4F4F1D8556AE06A236AE06A48
        B2B3B2B2B0E4BF055000505089F8F4F1F0DCDAD4516AE0E0E06A43B0B2B2B0AF
        A5C5C20E5000507F9CF2F0DCDADAD3D4B322E0E0E015A4B0B0AEA5A4A2B6C70E
        5000505089EEDADAD3D4D1CC496AE0E0E02841A4A5A4A2A19EC4C20550005050
        5BDED3D4D1D1B3496AE0281328E028389EA19E9B82C59A835000505035EAD1D0
        CDB2436AE028389F3828E028377E807B7CE45DEB5000505003BAD0CCB3566AE0
        2838A1A49B3728E028437A768BE4205050005050505BE6B2B29F2328379FA1A1
        9B7B332815676F6DCA960A50500050505008B6C9AFA57E499BA19B82817C6F38
        576C689CC820505050005050505035DFB4A2A19F9B827E7C7A6F6C6C686786E3
        42E050505000505050507F46DFAC9B827E7C7A6F6C6C68676789E35DEB505050
        500050505050507F35B6BA8A7A6F6C6C68676773C4C8403B5050505050005050
        5050505050085BC5DFACA88B9CBEC5CA710D5050505050505000505050505050
        5050500334628998947134047F50505050505050500050505050505050505050
        5050507F50505050505050505050505050005050505050505050505050505050
        5050505050505050505050505000}
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
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000232E0000232E00000001000000000000F2F6EE00F0F5
        EF00F1F5ED00EDF3ED00ECF2EA00E9F1E900E8F0E700E6F1E700E8EFE500E6EF
        E500F6F8F600E3EFE300E3ECE100E4EDDE00E4ECDD00E1EBDE00E2EBDF00E1EA
        DD00E2EBDA00E2EADA00DDEDDF00DBEBDC00DDE7D800DAE6D100DBE7D300DAE5
        D100D8E4CF00FFFFFF00D5E2CC00D1E1CA00D1DFC900CEDCC500CEDDC200CDDD
        C100CDDCC000CCDBC200CBDCC000C9DAC000CADBBE00CADABE00C7D8BD00C5D6
        B900C4D5B800C3D4B700B9DBBB00BDD2B100BFD3B300B8D5B000B7DAB800BCD2
        AD00BDD1AF00BBD1AE00FCFDFB00BAD0AA00B6D2AD00B3D0AA00BACFAD00B9CF
        A800B8CEA700B4CEA500B2CEA700F8FAF800B3CAA100B2CAA100B1CBA100ADD5
        AD00ADD3AB00A9CDA100A7CFA300A3CFA300ADC79900F5F8F400ADC69B00ABC7
        9900A9C69600A5CA9B00A5C49500A6C29400A6C29200A7C29300A7C29200FDFD
        FD00A4C19000A4C09000A3C49500A0C29100A4C28F00A4C18F00F9FAF9009ECD
        9D009DCB9C009EC999009BCC9A009ACA99009EC696009EC291009AC5940096CA
        960096C7920092C791009DC18E009BC18E0094C18C008FC79000F2F6EF008DC6
        8D008FC18A008BC58C0089C48A008BC38B008BC0870087C3870083C1840082C1
        8200A2BE8D00A0BC8A00A0C08C009ABF8C00F3F7F3009DBC870096BE890094BD
        860097BC820097B9820093BD860091B9800096B7800089BF850081BE800096B6
        7F0092B379008ABA7F008EB176008EB0730089B2730086B97D0081BB7D0081B5
        750080B06E008CAF71008AAC6C00F4F7F40087AC6C0080AD6A0082A8640081A7
        620080A55E007EBF7E007CBD7D0078B5720075BA750077BB770071B8710073B7
        71007FB26E007DB16F0078B2670076B66F0071B069007EA663007DA662007DA5
        600072AE68006FB66D006DB66D006AB56A006DB166006BB0660067B265006DAE
        610078A95D007FA55D007CA35B007AA65F0079A35D00FAFBFA0078A25A007AA3
        570079A1550076A0580076A1590061B05F00F6F8F3006BAB5B006BA5580062AD
        5B0062AA5B0060A653006AA24900759F5100719B4B006D9845006B9A43006A97
        420066994200639B4300669543006595430064944000659441005EAE5B005AAA
        54005DA44E0057A74F0054A4480054A244005B9D410065943D00FDFEFD006694
        3B006492390060933B005D983B005F903A00549E3C00579A3800529F3E005097
        31005A912A0051962D00529024005F8E3100FBFCFB005A8C31005D8D2E00588A
        2D00578A2C00F6F9F30056892B0056892A00558A2500FEFEFE00538D25005588
        24005487230053872400528621005386220052862300518520004E9125004F8D
        20004E8B210050841E004E821A004E8218004E8219004D8318004C8617004C84
        15004D8316004C8116004C8115004B8013004B8012004B8011001B1B1B1B1B1B
        1B1B8D1A314646311A761B1B1B1B1B1B1B1B1B1B1B1B1B1B0D77BEBFB8B8B8B8
        BFBE770D1B1B1B1B1B1B1B1B1B1B3D46C1B4BEDFF3FBFBF3DFBEB4C1463D1B1B
        1B1B1B1B1B688CB8BEF3FEFEFEFEFEFEFEFEF3BEB88C681B1B1B1B1B0A8CB3D5
        FDFEFEFED5BEBEC4FBFEFEFDD5B38C0A1B1B1B1B4AB8DFFEFEFEFEFD54AFAF16
        ECFEFEFEFEDFB84A1B1B1B0EBFC4FEFEFEFEFEFD4BE7E711ECFEFEFEFEFEC4BF
        0E1B1B77B4F4FEFEFEFEFEFD4BE7E711ECFEFEFEFEFEF4B4771B00BEBCF9FFFF
        FEFEFEFD4BE7E711ECFEFEFEFEFEFEC4BE681CBDD7F8F9E5E1E1E1E140E7E70C
        D5E1E1E1E1F6FEE5BE1C35A2D6F0DC1F040404040AE7E7DE0404040408BFFEF6
        B33546A2CCD6D615E7E7E7E7E7E7E7E7E7E7E7E758BEFEFCB446469BC9CCCC15
        E7E7E7E7E7E7E7E7E7E7E7E758BEFEFCB446359BA5C8C95A42444B541CE7E701
        4C5555555FDFFEF6B3351CB470A3A8C8CBCDD6F14BE7E711ECFEFEFEFEFEFEE5
        BE1C68BD617196A5B5C9CCD842E7E711ECFEFEFEFEFEFEC4BE681B7783616F94
        98A8B9CB41E7E711ECFEFEFEFEFEF4B4771B1B0EBE445C697097A4B530E7E70C
        DBF8FEFEFEFEC4BF0E1B1B1B4A9F4159616C939642181A2CCCD9F0F8F9D5B84A
        1B1B1B1B0A8C8630445C676F9498A8C8CBCDD6DBC3B48C0A1B1B1B1B1B688B9F
        2F414561697197A5B5C9CB9EB88C681B1B1B1B1B1B1B3D46BF7D414159616C71
        9388A2BF463D1B1B1B1B1B1B1B1B1B1B0D77BEB38A87868FBDBE770D1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B761A314646311A761B1B1B1B1B1B1B1B}
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
      object cbContent: TComboBox
        Left = 156
        Top = 17
        Width = 145
        Height = 21
        TabOrder = 1
        Text = 'Selecione...'
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
        TabOrder = 0
        Text = 'Selecione...'
      end
      object editPesquisa: TEdit
        Left = 307
        Top = 17
        Width = 309
        Height = 21
        TabOrder = 2
      end
      object Pesquisar: TButton
        Left = 622
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 3
        OnClick = PesquisarClick
      end
    end
  end
end
