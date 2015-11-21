inherited MEstadoConservacao: TMEstadoConservacao
  Caption = 'Manuten'#231#227'o de Estado de Conserva'#231#227'o'
  ClientHeight = 119
  ClientWidth = 523
  ExplicitWidth = 539
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 78
    Width = 523
    ExplicitTop = 78
    ExplicitWidth = 551
    inherited sbCancelar: TSpeedButton
      Left = 426
      ExplicitLeft = 454
    end
  end
  inherited gbInfos: TGroupBox
    Width = 523
    Height = 78
    ExplicitWidth = 551
    ExplicitHeight = 78
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 71
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 40
      Height = 21
      Color = clScrollBar
      DataField = 'EDC_CODIGO'
      DataSource = DMControlePatrimonial.DEstadoCOnservacao
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 70
      Top = 40
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EDC_DESCRICAO'
      DataSource = DMControlePatrimonial.DEstadoCOnservacao
      TabOrder = 1
    end
    object rdAtivo: TDBRadioGroup
      Left = 396
      Top = 20
      Width = 121
      Height = 41
      Caption = 'Ativo/ Inativo'
      Columns = 2
      DataField = 'EDC_STATUS'
      DataSource = DMControlePatrimonial.DEstadoCOnservacao
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
