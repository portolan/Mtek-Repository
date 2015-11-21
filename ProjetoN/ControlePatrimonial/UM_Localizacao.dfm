inherited MLocalizacao: TMLocalizacao
  Caption = 'Manuten'#231#227'o da Localiza'#231#227'o'
  ClientHeight = 114
  ClientWidth = 525
  ExplicitWidth = 541
  ExplicitHeight = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 73
    Width = 525
    ExplicitTop = 82
    ExplicitWidth = 549
    inherited sbCancelar: TSpeedButton
      Left = 428
      ExplicitLeft = 452
    end
  end
  inherited gbInfos: TGroupBox
    Width = 525
    Height = 73
    ExplicitWidth = 549
    ExplicitHeight = 82
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 70
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 43
      Width = 40
      Height = 21
      Color = clScrollBar
      DataField = 'LOC_CODIGO'
      DataSource = DMControlePatrimonial.DLocalizacao
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 70
      Top = 43
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOC_DESCRICAO'
      DataSource = DMControlePatrimonial.DLocalizacao
      TabOrder = 1
    end
    object rdAtivo: TDBRadioGroup
      Left = 396
      Top = 24
      Width = 121
      Height = 40
      Caption = 'Ativo/ Inativo'
      Columns = 2
      DataField = 'LOC_STATUS'
      DataSource = DMControlePatrimonial.DLocalizacao
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 2
      Values.Strings = (
        'A'
        'I')
    end
  end
end
