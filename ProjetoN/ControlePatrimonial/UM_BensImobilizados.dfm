﻿inherited MBensImobilizados: TMBensImobilizados
  Caption = 'Manuten'#231#227'o de Bens Imobilizados'
  ClientHeight = 533
  ClientWidth = 974
  ExplicitWidth = 990
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 492
    Width = 974
    ExplicitTop = 492
    ExplicitWidth = 974
    inherited sbCancelar: TSpeedButton
      Left = 877
      ExplicitLeft = 514
      ExplicitHeight = 39
    end
  end
  inherited gbInfos: TGroupBox
    Width = 974
    Height = 492
    ExplicitWidth = 974
    ExplicitHeight = 492
    object BensImobilizados: TPageControl
      Left = 2
      Top = 15
      Width = 970
      Height = 475
      ActivePage = C_BensImobilizados
      Align = alClient
      TabOrder = 0
      object C_BensImobilizados: TTabSheet
        Caption = 'Bens Imobilizados'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 962
          Height = 447
          Align = alClient
          TabOrder = 0
          object Label1: TLabel
            Left = 24
            Top = 24
            Width = 41
            Height = 13
            Caption = 'Empresa'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 79
            Top = 24
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 24
            Top = 67
            Width = 55
            Height = 13
            Caption = 'Fornecedor'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 143
            Top = 24
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit6
          end
          object Label9: TLabel
            Left = 527
            Top = 67
            Width = 114
            Height = 13
            Caption = 'Estado de Conserva'#231#227'o'
            FocusControl = DBEdit9
          end
          object Label11: TLabel
            Left = 25
            Top = 168
            Width = 87
            Height = 13
            Caption = 'Valor de Aquisi'#231#227'o'
            FocusControl = DBEdit11
          end
          object Label12: TLabel
            Left = 248
            Top = 168
            Width = 74
            Height = 13
            Caption = 'Valor Agregado'
            FocusControl = DBEdit12
          end
          object Label13: TLabel
            Left = 352
            Top = 168
            Width = 52
            Height = 13
            Caption = 'Valor Atual'
            FocusControl = DBEdit13
          end
          object Label14: TLabel
            Left = 464
            Top = 168
            Width = 87
            Height = 13
            Caption = 'Perc. Deprecia'#231#227'o'
            FocusControl = DBEdit14
          end
          object Label4: TLabel
            Left = 24
            Top = 113
            Width = 82
            Height = 13
            Caption = 'Nr. Nota Entrada'
            FocusControl = DBEdit4
          end
          object Label10: TLabel
            Left = 128
            Top = 113
            Width = 86
            Height = 13
            Caption = 'Data de Aquisi'#231#227'o'
            FocusControl = DBEdit10
          end
          object Label3: TLabel
            Left = 262
            Top = 113
            Width = 79
            Height = 13
            Caption = 'Numero de Serie'
            FocusControl = DBEdit3
          end
          object Label7: TLabel
            Left = 402
            Top = 113
            Width = 20
            Height = 13
            Caption = 'Tipo'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 640
            Top = 113
            Width = 54
            Height = 13
            Caption = 'Localiza'#231#227'o'
            FocusControl = DBEdit8
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 40
            Width = 49
            Height = 21
            DataField = 'BNI_EMPRESA'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 79
            Top = 40
            Width = 58
            Height = 21
            DataField = 'BNI_CODIGO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 24
            Top = 86
            Width = 88
            Height = 21
            DataField = 'BNI_FORNECEDOR'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 143
            Top = 40
            Width = 671
            Height = 21
            DataField = 'BNI_DESCRICAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 118
            Top = 86
            Width = 403
            Height = 21
            TabOrder = 4
            Text = 'Edit1'
          end
          object DBEdit9: TDBEdit
            Left = 527
            Top = 86
            Width = 39
            Height = 21
            DataField = 'BNI_ESTADO_CONSERVACAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 5
          end
          object Edit4: TEdit
            Left = 572
            Top = 86
            Width = 178
            Height = 21
            TabOrder = 6
            Text = 'Edit2'
          end
          object DBEdit11: TDBEdit
            Left = 25
            Top = 184
            Width = 87
            Height = 21
            DataField = 'BNI_VLR_AQUISICAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 7
          end
          object DBEdit12: TDBEdit
            Left = 248
            Top = 184
            Width = 87
            Height = 21
            DataField = 'BNI_VLR_AGREGADO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 8
          end
          object DBEdit13: TDBEdit
            Left = 352
            Top = 184
            Width = 87
            Height = 21
            DataField = 'BNI_VLR_ATUAL'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 9
          end
          object DBEdit14: TDBEdit
            Left = 464
            Top = 184
            Width = 87
            Height = 21
            DataField = 'BNI_DEPRECIACAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 10
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 829
            Top = 24
            Width = 113
            Height = 37
            Caption = 'Status'
            Columns = 2
            DataField = 'BNI_STATUS'
            DataSource = DMControlePatrimonial.DBenImobilizado
            Enabled = False
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 11
            Values.Strings = (
              'A'
              'I')
          end
          object DBMemo1: TDBMemo
            Left = 29
            Top = 232
            Width = 913
            Height = 193
            DataField = 'BNI_OBSERVACAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 12
          end
          object DBEdit4: TDBEdit
            Left = 24
            Top = 129
            Width = 88
            Height = 21
            DataField = 'BNI_NR_NOTA'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 13
          end
          object DBEdit10: TDBEdit
            Left = 128
            Top = 129
            Width = 113
            Height = 21
            DataField = 'BNI_DATA_AQUISICAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 14
          end
          object DBEdit3: TDBEdit
            Left = 262
            Top = 129
            Width = 134
            Height = 21
            DataField = 'BNI_NUM_SERIE'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 15
          end
          object DBEdit7: TDBEdit
            Left = 402
            Top = 129
            Width = 39
            Height = 21
            DataField = 'BNI_TIPO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 16
          end
          object Edit2: TEdit
            Left = 447
            Top = 129
            Width = 178
            Height = 21
            TabOrder = 17
            Text = 'Edit2'
          end
          object DBEdit8: TDBEdit
            Left = 639
            Top = 129
            Width = 39
            Height = 21
            DataField = 'BNI_LOCALIZACAO'
            DataSource = DMControlePatrimonial.DBenImobilizado
            TabOrder = 18
          end
          object Edit3: TEdit
            Left = 684
            Top = 129
            Width = 178
            Height = 21
            TabOrder = 19
            Text = 'Edit2'
          end
        end
      end
      object Manutencão: TTabSheet
        Caption = 'Manutenc'#227'o'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 962
          Height = 406
          Align = alClient
          DataSource = DMControlePatrimonial.DManutencao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MAN_EMPRESA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_BEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_OBSERVACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_VLR_COMPONENTE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_VLR_MANUTENCAO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_VLR_TOTAL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_AGREGA_CUSTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_NUM_SERIE'
              Width = 64
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 406
          Width = 962
          Height = 41
          Align = alBottom
          TabOrder = 1
          object sbRemover: TSpeedButton
            Left = 865
            Top = 1
            Width = 96
            Height = 39
            Align = alRight
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
            ExplicitLeft = 9
            ExplicitTop = 2
          end
          object sbAlterar: TSpeedButton
            Left = 769
            Top = 1
            Width = 96
            Height = 39
            Align = alRight
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
            ExplicitLeft = 73
            ExplicitHeight = 40
          end
          object sbNovo: TSpeedButton
            Left = 673
            Top = 1
            Width = 96
            Height = 39
            Align = alRight
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
            ExplicitLeft = 9
            ExplicitTop = 2
          end
        end
      end
    end
  end
end
