inherited M_empresa: TM_empresa
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Empresas - ProjetoNecessauro'
  ClientHeight = 283
  ClientWidth = 500
  ExplicitWidth = 516
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 242
    Width = 500
    ExplicitTop = 242
    ExplicitWidth = 500
    inherited sbCancelar: TSpeedButton
      Left = 403
      ExplicitLeft = 403
    end
  end
  inherited gbInfos: TGroupBox
    Width = 500
    Height = 242
    ExplicitWidth = 500
    ExplicitHeight = 242
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Codigo:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 167
      Top = 24
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Raz'#227'o Social:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 278
      Top = 48
      Width = 75
      Height = 13
      Caption = 'Nome Fantasia:'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 24
      Top = 94
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 218
      Top = 94
      Width = 41
      Height = 13
      Caption = 'Numero:'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 278
      Top = 94
      Width = 32
      Height = 13
      Caption = 'Bairro:'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 24
      Top = 140
      Width = 37
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 167
      Top = 140
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit9
    end
    object Label12: TLabel
      Left = 24
      Top = 186
      Width = 98
      Height = 13
      Caption = 'Titular Responsavel:'
      FocusControl = DBEdit12
    end
    object Label10: TLabel
      Left = 278
      Top = 140
      Width = 23
      Height = 13
      Caption = 'CEP:'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 392
      Top = 94
      Width = 46
      Height = 13
      Caption = 'Telefone:'
      FocusControl = DBEdit11
    end
    object DBEdit1: TDBEdit
      Left = 63
      Top = 21
      Width = 50
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      DataField = 'EMP_COD'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 67
      Width = 231
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_RAZAO'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 278
      Top = 67
      Width = 203
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_NOMEF'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 113
      Width = 188
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_ENDERECO'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 218
      Top = 113
      Width = 37
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_END_NUM'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 278
      Top = 113
      Width = 108
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_BAIRRO'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 24
      Top = 159
      Width = 121
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_CIDADE'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 166
      Top = 159
      Width = 30
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_UF'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 8
    end
    object DBEdit12: TDBEdit
      Left = 24
      Top = 205
      Width = 379
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_TITULAR'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 11
    end
    object DBEdit2: TDBEdit
      Left = 202
      Top = 21
      Width = 151
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'EMP_CNPJ'
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 278
      Top = 159
      Width = 108
      Height = 21
      DataField = 'EMP_CEP'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 392
      Top = 113
      Width = 89
      Height = 21
      DataField = 'EMP_FONE'
      DataSource = DataSource1
      TabOrder = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_contabil.empresa
    Left = 448
    Top = 16
  end
end
