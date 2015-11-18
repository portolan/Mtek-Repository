inherited M_Servico: TM_Servico
  Caption = 'Abertura de Chamado'
  ClientHeight = 443
  ClientWidth = 709
  OnShow = FormShow
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
    end
    object Label8: TLabel
      Left = 432
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Prioridade'
    end
    object Label9: TLabel
      Left = 432
      Top = 128
      Width = 31
      Height = 13
      Caption = 'Status'
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
    object DBEdit4: TDBEdit
      Left = 24
      Top = 144
      Width = 134
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 216
      Top = 144
      Width = 134
      Height = 21
      DataField = 'CHA_PROPRIETARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 200
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_ENTRADA'
      DataSource = DM_Servico.DS_Chamado
      Enabled = False
      MaxLength = 8
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 24
      Top = 250
      Width = 665
      Height = 135
      DataField = 'CHA_DESCRICAO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 432
      Top = 200
      Width = 95
      Height = 21
      DataField = 'CHA_TIPO_ERRO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 5
      OnClick = DBEdit10Click
    end
    object DBComboBox1: TDBComboBox
      Left = 432
      Top = 88
      Width = 145
      Height = 21
      DataField = 'CHA_PRIORIDADE'
      DataSource = DM_Servico.DS_Chamado
      Items.Strings = (
        'Baixa'
        'Normal'
        'Alta')
      TabOrder = 6
    end
    object DBComboBox2: TDBComboBox
      Left = 432
      Top = 144
      Width = 145
      Height = 21
      DataField = 'CHA_STATUS'
      DataSource = DM_Servico.DS_Chamado
      Items.Strings = (
        'Analise'
        'Manunte'#231#227'o'
        'Concluido')
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 216
      Top = 200
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_SAIDA'
      DataSource = DM_Servico.DS_Chamado
      MaxLength = 8
      TabOrder = 8
    end
    inline frmEmpresa: TfrmRelacionamento
      Left = 19
      Top = 66
      Width = 315
      Height = 44
      TabOrder = 9
      ExplicitLeft = 19
      ExplicitTop = 66
      ExplicitWidth = 315
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 315
        Height = 44
        ExplicitWidth = 315
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Left = 5
          ExplicitLeft = 5
        end
        inherited DBE_CAMPO: TDBEdit
          Left = 5
          DataField = 'CHA_EMPRESA'
          DataSource = DM_Servico.DS_Chamado
          ExplicitLeft = 5
        end
        inherited panelFundo: TPanel
          Width = 108
          ExplicitWidth = 230
          inherited DBT_DESCRICAO: TDBText
            Left = 0
            Top = -2
            Width = 95
            DataField = 'EMP_RAZAO'
            DataSource = DM_Servico.DS_Chamado
            ExplicitLeft = 0
            ExplicitTop = -2
            ExplicitWidth = 217
          end
        end
      end
    end
  end
end
