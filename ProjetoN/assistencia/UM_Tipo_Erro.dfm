inherited M_Tipo_Erro: TM_Tipo_Erro
  Caption = 'Cadastro Tipo de Erro'
  ClientHeight = 152
  ClientWidth = 248
  ExplicitWidth = 264
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 111
    Width = 248
    ExplicitTop = 128
    ExplicitWidth = 267
    inherited sbCancelar: TSpeedButton
      Left = 151
      ExplicitLeft = 170
    end
  end
  inherited gbInfos: TGroupBox
    Width = 248
    Height = 111
    ExplicitWidth = 267
    ExplicitHeight = 128
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 65
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 38
      Width = 33
      Height = 21
      DataField = 'TER_CODIGO'
      DataSource = DM_Servico.DS_Tipo_Erro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 81
      Width = 113
      Height = 21
      DataField = 'TER_DESCRICAO'
      DataSource = DM_Servico.DS_Tipo_Erro
      TabOrder = 1
    end
  end
end
