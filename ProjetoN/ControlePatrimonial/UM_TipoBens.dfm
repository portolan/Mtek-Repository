inherited MTipoBens: TMTipoBens
  Caption = 'Manuten'#231#227'o Tipo de Bens'
  ClientHeight = 114
  ClientWidth = 534
  ExplicitWidth = 550
  ExplicitHeight = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 73
    Width = 534
    ExplicitTop = 73
    ExplicitWidth = 534
    inherited sbCancelar: TSpeedButton
      Left = 437
      ExplicitLeft = 469
    end
  end
  inherited gbInfos: TGroupBox
    Width = 534
    Height = 73
    ExplicitWidth = 534
    ExplicitHeight = 73
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
      DataField = 'TPB_CODIGO'
      DataSource = DMControlePatrimonial.DTipoBens
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 70
      Top = 43
      Width = 322
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TPB_DESCRICAO'
      DataSource = DMControlePatrimonial.DTipoBens
      TabOrder = 1
    end
    object rdAtivo: TDBRadioGroup
      Left = 398
      Top = 22
      Width = 130
      Height = 42
      Caption = 'Status'
      Columns = 2
      DataField = 'TPB_STATUS'
      DataSource = DMControlePatrimonial.DTipoBens
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
