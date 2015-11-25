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
      Left = 263
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
      Left = 263
      Top = 110
      Width = 56
      Height = 13
      Caption = 'Proprietario'
      FocusControl = DBEdit5
    end
    object SpeedButton1: TSpeedButton
      Left = 71
      Top = 82
      Width = 23
      Height = 22
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 318
      Top = 82
      Width = 23
      Height = 22
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 318
      Top = 125
      Width = 23
      Height = 22
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 71
      Top = 125
      Width = 23
      Height = 22
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 471
      Top = 173
      Width = 23
      Height = 22
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      OnClick = SpeedButton5Click
    end
    object Label6: TLabel
      Left = 382
      Top = 158
      Width = 58
      Height = 13
      Caption = 'Tipo de Erro'
      FocusControl = DBEdit10
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
      TabOrder = 2
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
        'Manutencao'
        'Concluido')
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 83
      Width = 41
      Height = 21
      DataField = 'CHA_EMPRESA'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 4
      OnClick = DBEdit2Click
    end
    object DBEdit3: TDBEdit
      Left = 263
      Top = 83
      Width = 49
      Height = 21
      DataField = 'CHA_DEPARTAMENTO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 5
      OnClick = DBEdit3Click
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 126
      Width = 41
      Height = 21
      DataField = 'CHA_FUNCIONARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 6
      OnClick = DBEdit4Click
    end
    object DBEdit5: TDBEdit
      Left = 263
      Top = 126
      Width = 49
      Height = 21
      DataField = 'CHA_PROPRIETARIO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 7
      OnClick = DBEdit5Click
    end
    object DBEdit6: TEdit
      Left = 100
      Top = 83
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object DBEdit8: TEdit
      Left = 347
      Top = 83
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object DBEdit7: TEdit
      Left = 100
      Top = 126
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object DBEdit9: TEdit
      Left = 347
      Top = 126
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object DBEdit11: TEdit
      Left = 506
      Top = 174
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 382
      Top = 174
      Width = 86
      Height = 21
      DataField = 'CHA_TIPO_ERRO'
      DataSource = DM_Servico.DS_Chamado
      TabOrder = 13
      OnClick = DBEdit10Click
    end
  end
end
