inherited P_PRODUCAO: TP_PRODUCAO
  Caption = 'Producao'
  ClientWidth = 872
  Position = poDesigned
  ExplicitTop = -44
  ExplicitWidth = 888
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 872
    ExplicitWidth = 872
    inherited gbDados: TGroupBox
      Width = 866
      ExplicitWidth = 866
      inherited DBGDados: TDBGrid
        Width = 862
        DataSource = DM_PCP.DS_Producao
        ParentShowHint = False
        Columns = <
          item
            Expanded = False
            FieldName = 'PROD_COD'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_ORDEM'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_EMPRESA'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_DESCRICAO'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_TIPO'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_DT_INICIO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_DT_TERMINO'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_QTD_PRODUZIDA'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROD_PRODUTO'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 872
    ExplicitWidth = 872
    inherited sbRemover: TSpeedButton
      Width = 128
      Caption = 'Cancelar Producao'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ExplicitLeft = 193
      ExplicitWidth = 128
    end
    inherited sbAlterar: TSpeedButton
      Left = 1
      ExplicitLeft = 0
      ExplicitTop = 3
    end
    inherited sbNovo: TSpeedButton
      Left = 321
      Enabled = False
      Visible = False
      ExplicitLeft = 313
    end
    inherited sbSair: TSpeedButton
      Left = 775
      ExplicitLeft = 775
    end
    object SpeedButton1: TSpeedButton
      Left = 97
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
    end
  end
  inherited pnCabecalho: TPanel
    Width = 872
    ExplicitWidth = 872
    inherited gbStatus: TGroupBox
      Left = 856
      ExplicitLeft = 856
    end
    inherited gbFiltro: TGroupBox
      Width = 856
      ExplicitWidth = 856
      inherited editPesquisa: TEdit
        Width = 462
        ExplicitWidth = 462
      end
      inherited Pesquisar: TButton
        Left = 775
        ExplicitLeft = 775
      end
    end
  end
end
