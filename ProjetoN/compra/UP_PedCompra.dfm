inherited PPedCompra: TPPedCompra
  Caption = 'Pesquisa - Pedido de Compra'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = dmPedCompra.DPedidoCompra
        Columns = <
          item
            Expanded = False
            FieldName = 'PDC_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_PRODUTO'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_FORNECEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESS_NOME'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_PREV_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_FRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_BRUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DEPARTAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_QTD_TOTAL'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_DATA_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_UNMEDIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_COTACAO_ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_SOLICITICAO_ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDC_CONDICAO_PGTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMP_RAZAO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DEP_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN_DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDP_DESCRICAO'
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    inherited sbNovo: TSpeedButton
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 289
      Top = 1
      Width = 136
      Height = 40
      Align = alLeft
      Caption = 'Baixar Pedidos'
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
      OnClick = SpeedButton1Click
    end
  end
end
