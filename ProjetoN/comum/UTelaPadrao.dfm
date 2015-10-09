object xPesqPadrao: TxPesqPadrao
  Left = 0
  Top = 0
  Caption = 'xPesqPadrao'
  ClientHeight = 402
  ClientWidth = 783
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
    Top = 61
    Width = 783
    Height = 299
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    ExplicitTop = 330
    ExplicitWidth = 756
    ExplicitHeight = 41
    object gbDados: TGroupBox
      Left = 1
      Top = 1
      Width = 777
      Height = 293
      Align = alClient
      Caption = 'Dados:'
      TabOrder = 0
      ExplicitTop = 48
      ExplicitWidth = 750
      ExplicitHeight = 228
      object DBGDados: TDBGrid
        Left = 2
        Top = 15
        Width = 773
        Height = 276
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
    Width = 783
    Height = 42
    Align = alBottom
    BevelOuter = bvSpace
    TabOrder = 1
    ExplicitTop = 304
    ExplicitWidth = 756
    object sbRemover: TSpeedButton
      Left = 193
      Top = 1
      Width = 96
      Height = 40
      Align = alLeft
      Caption = 'Remover'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
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
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        330033333333333333003300000000033300330FFFFFFF033300330F00000F03
        3300330FFFFFFF033300330F00000F033300330FFFFFFF033300330F000FFF03
        3300330FFFFF00033300330F00FF0F033300330FFFFF00333300330000000333
        33003333333333333300}
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
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = sbNovoClick
    end
    object sbSair: TSpeedButton
      Left = 686
      Top = 1
      Width = 96
      Height = 40
      Align = alRight
      Caption = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
      OnClick = sbSairClick
      ExplicitLeft = 670
    end
  end
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object gbStatus: TGroupBox
      Left = 622
      Top = 0
      Width = 161
      Height = 61
      Align = alRight
      Caption = 'Status'
      TabOrder = 0
    end
    object gbFiltro: TGroupBox
      Left = 0
      Top = 0
      Width = 622
      Height = 61
      Align = alClient
      Caption = 'Filtros'
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitWidth = 377
    end
  end
end
