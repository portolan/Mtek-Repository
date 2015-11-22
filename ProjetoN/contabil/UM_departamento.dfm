inherited M_departamento: TM_departamento
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o Departamentos - ProjetoNecessauro'
  ClientHeight = 263
  ClientWidth = 396
  OnShow = FormShow
  ExplicitWidth = 412
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 222
    Width = 396
    ExplicitTop = 222
    ExplicitWidth = 396
    inherited sbCancelar: TSpeedButton
      Left = 299
      ExplicitLeft = 299
    end
  end
  inherited gbInfos: TGroupBox
    Width = 396
    Height = 222
    ExplicitWidth = 396
    ExplicitHeight = 222
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 117
      Top = 24
      Width = 106
      Height = 13
      Caption = 'Empresa Relacionada:'
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 118
      Height = 13
      Caption = 'Nome do Departamento:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 134
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 43
      Width = 65
      Height = 21
      DataField = 'DEP_COD'
      DataSource = DM_contabil.Ddepartamento
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 99
      Width = 193
      Height = 21
      DataField = 'DEP_NOME'
      DataSource = DM_contabil.Ddepartamento
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 153
      Width = 329
      Height = 56
      AutoSize = False
      DataField = 'DEP_DESC'
      DataSource = DM_contabil.Ddepartamento
      TabOrder = 3
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 117
      Top = 43
      Width = 236
      Height = 21
      DataField = 'DEP_EMPRESAR'
      DataSource = DM_contabil.Ddepartamento
      KeyField = 'EMP_COD'
      ListField = 'EMP_RAZAO'
      ListSource = DM_contabil.Dempresa
      TabOrder = 1
    end
  end
end
