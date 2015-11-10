inherited M_Tipo_Erro: TM_Tipo_Erro
  Caption = 'Cadastro Tipo de Erro'
  ExplicitWidth = 597
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbInfos: TGroupBox
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 112
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 33
      Height = 21
      DataField = 'TER_CODIGO'
      DataSource = DM_Servico.DS_Tipo_Erro
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 128
      Width = 129
      Height = 21
      DataField = 'TER_DESCRICAO'
      DataSource = DM_Servico.DS_Tipo_Erro
      TabOrder = 1
    end
  end
end
