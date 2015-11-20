inherited M_Servico: TM_Servico
  Caption = 'Abertura de Chamado'
  ClientHeight = 443
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 402
    Width = 709
    ExplicitTop = 402
    ExplicitWidth = 709
    inherited sbCancelar: TSpeedButton
      Left = 612
      ExplicitLeft = 612
    end
  end
  inherited gbInfos: TGroupBox
    Width = 709
    Height = 402
    ExplicitWidth = 709
    ExplicitHeight = 402
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 196
      Top = 158
      Width = 48
      Height = 13
      Caption = 'Prioridade'
    end
    object Label9: TLabel
      Left = 23
      Top = 158
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label10: TLabel
      Left = 380
      Top = 158
      Width = 58
      Height = 13
      Caption = 'Tipo de Erro'
    end
    object Label11: TLabel
      Left = 24
      Top = 209
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 24
      Top = 67
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 196
      Top = 67
      Width = 69
      Height = 13
      Caption = 'Departamento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 110
      Width = 55
      Height = 13
      Caption = 'Funcionario'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 196
      Top = 110
      Width = 56
      Height = 13
      Caption = 'Proprietario'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 33
      Height = 21
      DataField = 'CHA_CODIGO'
      DataSource = DM_Servico.DS_Chamado
      Enabled = False
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 23
      Top = 228
      Width = 667
      Height = 169
      DataField = 'CHA_DESCRICAO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 380
      Top = 174
      Width = 95
      Height = 21
      DataField = 'CHA_TIPO_ERRO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 2
      OnClick = DBEdit10Click
    end
    object DBComboBox1: TDBComboBox
      Left = 196
      Top = 174
      Width = 145
      Height = 21
      DataField = 'CHA_PRIORIDADE'
      DataSource = DM_Servico.DS_Chamado
      Items.Strings = (
        'Baixa'
        'Normal'
        'Alta')
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 23
      Top = 174
      Width = 145
      Height = 21
      DataField = 'CHA_STATUS'
      DataSource = DM_Servico.DS_Chamado
      Items.Strings = (
        'Analise'
        'Manunte'#231#227'o'
        'Concluido')
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 83
      Width = 134
      Height = 21
      DataField = 'CHA_EMPRESA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 5
      OnClick = DBEdit2Click
    end
    object DBEdit3: TDBEdit
      Left = 196
      Top = 83
      Width = 134
      Height = 21
      DataField = 'CHA_DEPARTAMENTO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 6
      OnClick = DBEdit3Click
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 126
      Width = 134
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 7
      OnClick = DBEdit4Click
    end
    object DBEdit5: TDBEdit
      Left = 196
      Top = 126
      Width = 134
      Height = 21
      DataField = 'CHA_PROPRIETARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 8
      OnClick = DBEdit5Click
    end
  end
end
