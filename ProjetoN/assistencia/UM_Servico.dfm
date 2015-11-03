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
    ExplicitTop = 362
    ExplicitWidth = 709
    inherited sbCancelar: TSpeedButton
      Left = 612
      ExplicitLeft = 612
    end
  end
  inherited gbInfos: TGroupBox
    Width = 709
    Height = 402
    ExplicitLeft = 1
    ExplicitTop = -5
    ExplicitWidth = 709
    ExplicitHeight = 334
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 176
      Top = 62
      Width = 69
      Height = 13
      Caption = 'Departamento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 107
      Width = 55
      Height = 13
      Caption = 'Funcionario'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 176
      Top = 107
      Width = 56
      Height = 13
      Caption = 'Proprietario'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 150
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 396
      Top = 62
      Width = 48
      Height = 13
      Caption = 'Prioridade'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 396
      Top = 107
      Width = 31
      Height = 13
      Caption = 'Status'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 396
      Top = 150
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 556
      Top = 150
      Width = 67
      Height = 13
      Caption = 'Data de Saida'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 16
      Top = 237
      Width = 86
      Height = 13
      Caption = 'Produtos Utilizado'
      FocusControl = DBEdit11
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 134
      Height = 21
      DataField = 'CHA_CODIGO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 80
      Width = 134
      Height = 21
      DataField = 'CHA_EMPRESA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 176
      Top = 80
      Width = 134
      Height = 21
      DataField = 'CHA_DEPARTAMENTO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 123
      Width = 134
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 176
      Top = 123
      Width = 142
      Height = 21
      DataField = 'CHA_PROPRIETARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 166
      Width = 302
      Height = 51
      DataField = 'CHA_DESCRICAO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 396
      Top = 81
      Width = 134
      Height = 21
      DataField = 'CHA_PRIORIDADE'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 396
      Top = 123
      Width = 134
      Height = 21
      DataField = 'CHA_STATUS'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 396
      Top = 169
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_ENTRADA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 556
      Top = 166
      Width = 134
      Height = 21
      DataField = 'CHA_DATA_SAIDA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 134
      Top = 229
      Width = 134
      Height = 21
      DataField = 'CHA_PRODUTOS_UTILIZADOS'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 10
      Visible = False
    end
    object DB_Lista_Produtos_Utilizado: TDBGrid
      Left = 16
      Top = 256
      Width = 681
      Height = 141
      DataSource = DM_Servico.DS_Produto_Utilizado
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRU_PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRU_QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRU_VL_UNITARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRU_VL_TOTAL'
          Visible = True
        end>
    end
  end
end
