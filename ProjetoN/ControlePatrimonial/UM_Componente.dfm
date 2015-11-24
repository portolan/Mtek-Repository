inherited MComponente: TMComponente
  Caption = 'Manuten'#231#227'o do Componente'
  ClientWidth = 486
  ExplicitWidth = 502
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 486
    inherited sbCancelar: TSpeedButton
      Left = 389
    end
  end
  inherited gbInfos: TGroupBox
    Width = 486
    object Label1: TLabel
      Left = 40
      Top = 37
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 103
      Top = 37
      Width = 59
      Height = 13
      Caption = 'Manuten'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 40
      Top = 83
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit3
    end
    object Descrição: TLabel
      Left = 103
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 367
      Top = 83
      Width = 88
      Height = 13
      Caption = 'Valor Componente'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 56
      Width = 57
      Height = 21
      DataField = 'COM_EMPRESA'
      DataSource = DMControlePatrimonial.DComponente
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 103
      Top = 56
      Width = 134
      Height = 21
      DataField = 'COM_MANUTENCAO'
      DataSource = DMControlePatrimonial.DComponente
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 99
      Width = 57
      Height = 21
      DataField = 'COM_CODIGO'
      DataSource = DMControlePatrimonial.DComponente
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
    object Edit1: TEdit
      Left = 103
      Top = 99
      Width = 258
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object DBEdit4: TDBEdit
      Left = 367
      Top = 99
      Width = 93
      Height = 21
      DataField = 'COM_VLR_COMPONENTE'
      DataSource = DMControlePatrimonial.DComponente
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 40
      Top = 126
      Width = 420
      Height = 89
      DataField = 'COM_OBSERVACAO'
      DataSource = DMControlePatrimonial.DComponente
      TabOrder = 5
    end
  end
end
