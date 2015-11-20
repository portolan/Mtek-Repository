inherited M_Tipo_Erro: TM_Tipo_Erro
  Caption = 'Cadastro Tipo de Erro'
  ClientHeight = 169
  ClientWidth = 267
  ExplicitWidth = 283
  ExplicitHeight = 208
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 128
    Width = 267
    inherited sbCancelar: TSpeedButton
      Left = 170
    end
  end
  inherited gbInfos: TGroupBox
    Width = 267
    Height = 128
    ExplicitLeft = 1
    ExplicitTop = -5
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 78
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 51
      Width = 33
      Height = 21
      DataField = 'TER_CODIGO'
      DataSource = DM_Servico.DS_Tipo_Erro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 94
      Width = 113
      Height = 21
      DataField = 'TER_DESCRICAO'
      DataSource = DM_Servico.DS_Tipo_Erro
      TabOrder = 1
    end
  end
end
