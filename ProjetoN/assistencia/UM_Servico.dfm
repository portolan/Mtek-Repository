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
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 216
      Top = 72
      Width = 69
      Height = 13
      Caption = 'Departamento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 128
      Width = 55
      Height = 13
      Caption = 'Funcionario'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 216
      Top = 128
      Width = 56
      Height = 13
      Caption = 'Proprietario'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 24
      Top = 181
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 216
      Top = 181
      Width = 67
      Height = 13
      Caption = 'Data de Saida'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 432
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Prioridade'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 432
      Top = 128
      Width = 31
      Height = 13
      Caption = 'Status'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 432
      Top = 181
      Width = 58
      Height = 13
      Caption = 'Tipo de Erro'
    end
    object Label11: TLabel
      Left = 24
      Top = 227
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
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
    object DBEdit2: TDBEdit
      Left = 24
      Top = 88
      Width = 134
      Height = 21
      DataField = 'CHA_EMPRESA'
      DataSource = DM_Servico.DS_Chamado
      ReadOnly = True
      TabOrder = 1
      OnClick = DBEdit2Click
    end
    object DBEdit3: TDBEdit
      Left = 216
      Top = 88
      Width = 134
      Height = 21
      DataField = 'CHA_DEPARTAMENTO'
      DataSource = DM_Servico.DS_Chamado
      ReadOnly = True
      TabOrder = 2
      OnClick = DBEdit3Click
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 144
      Width = 134
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Chamado
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 216
      Top = 144
      Width = 134
      Height = 21
      DataField = 'CHA_PROPRIETARIO'
      DataSource = DM_Servico.DS_Chamado
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 200
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_ENTRADA'
      DataSource = DM_Servico.DS_Chamado
      Enabled = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 216
      Top = 200
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_SAIDA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 432
      Top = 88
      Width = 97
      Height = 21
      DataField = 'CHA_PRIORIDADE'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 432
      Top = 144
      Width = 97
      Height = 21
      DataField = 'CHA_STATUS'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 8
    end
    object DBMemo1: TDBMemo
      Left = 24
      Top = 250
      Width = 665
      Height = 135
      DataField = 'CHA_DESCRICAO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 432
      Top = 200
      Width = 137
      Height = 21
      DataField = 'CHA_TIPO_ERRO'
      DataSource = DM_Servico.DS_Chamado
      KeyField = 'TER_CODIGO'
      ListField = 'TER_DESCRICAO'
      ListSource = DM_Servico.DS_Tipo_Erro
      TabOrder = 10
    end
  end
end
