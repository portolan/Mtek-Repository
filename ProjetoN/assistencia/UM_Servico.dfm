inherited M_Servico: TM_Servico
  Caption = 'Abertura de Chamado'
  ClientHeight = 403
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 362
    Width = 709
    inherited sbCancelar: TSpeedButton
      Left = 612
    end
  end
  inherited gbInfos: TGroupBox
    Width = 709
    Height = 362
    ExplicitLeft = -8
    ExplicitTop = -32
    ExplicitWidth = 744
    ExplicitHeight = 467
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
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 184
      Top = 80
      Width = 108
      Height = 13
      Caption = 'CHA_DEPARTAMENTO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 99
      Height = 13
      Caption = 'CHA_FUNCIONARIO'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 182
      Width = 86
      Height = 13
      Caption = 'CHA_DESCRICAO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 184
      Top = 136
      Width = 90
      Height = 13
      Caption = 'CHA_PRIORIDADE'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 16
      Top = 228
      Width = 65
      Height = 13
      Caption = 'CHA_STATUS'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 144
      Top = 228
      Width = 107
      Height = 13
      Caption = 'CHA_DATA_ENTRADA'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 304
      Top = 228
      Width = 91
      Height = 13
      Caption = 'CHA_DATA_SAIDA'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 16
      Top = 288
      Width = 136
      Height = 13
      Caption = 'CHA_PRODUTO_UTILIZADO'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 43
      Width = 134
      Height = 21
      DataField = 'CHA_COD'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 99
      Width = 134
      Height = 21
      DataField = 'CHA_EMPRESA'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 184
      Top = 99
      Width = 134
      Height = 21
      DataField = 'CHA_DEPARTAMENTO'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 155
      Width = 134
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 201
      Width = 441
      Height = 21
      DataField = 'CHA_DESCRICAO'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 184
      Top = 155
      Width = 100
      Height = 21
      DataField = 'CHA_PRIORIDADE'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 247
      Width = 100
      Height = 21
      DataField = 'CHA_STATUS'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 144
      Top = 247
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_ENTRADA'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 304
      Top = 247
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_SAIDA'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 16
      Top = 307
      Width = 625
      Height = 21
      DataField = 'CHA_PRODUTO_UTILIZADO'
      DataSource = DM_Servico.DS_Servico
      TabOrder = 9
    end
  end
end
