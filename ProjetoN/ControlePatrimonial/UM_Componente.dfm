inherited MComponente: TMComponente
  Caption = 'Manuten'#231#227'o do Componente'
  ClientWidth = 486
  ExplicitWidth = 502
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Width = 486
    ExplicitWidth = 486
    inherited sbCancelar: TSpeedButton
      Left = 389
      ExplicitLeft = 389
    end
  end
  inherited gbInfos: TGroupBox
    Width = 486
    ExplicitWidth = 486
    object Label1: TLabel
      Left = 40
      Top = 37
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBCOM_EMPRESA
    end
    object Label2: TLabel
      Left = 103
      Top = 37
      Width = 59
      Height = 13
      Caption = 'Manuten'#231#227'o'
      FocusControl = DBCOM_MANUTENCAO
    end
    object Label3: TLabel
      Left = 40
      Top = 83
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBCOM_CODIGO
    end
    object Label5: TLabel
      Left = 103
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 351
      Top = 83
      Width = 88
      Height = 13
      Caption = 'Valor Componente'
      FocusControl = DBCOM_VLR_COMPONENTE
    end
    object DBCOM_EMPRESA: TDBEdit
      Left = 40
      Top = 56
      Width = 57
      Height = 21
      DataField = 'COM_EMPRESA'
      DataSource = DMControlePatrimonial.DComponente
      Enabled = False
      TabOrder = 0
    end
    object DBCOM_MANUTENCAO: TDBEdit
      Left = 103
      Top = 56
      Width = 134
      Height = 21
      DataField = 'COM_MANUTENCAO'
      DataSource = DMControlePatrimonial.DComponente
      Enabled = False
      TabOrder = 1
    end
    object DBCOM_CODIGO: TDBEdit
      Left = 40
      Top = 99
      Width = 57
      Height = 21
      DataField = 'COM_CODIGO'
      DataSource = DMControlePatrimonial.DComponente
      TabOrder = 2
      OnExit = DBCOM_CODIGOExit
    end
    object DBCOMDESCRICAO: TEdit
      Left = 103
      Top = 99
      Width = 242
      Height = 21
      TabOrder = 3
    end
    object DBCOM_VLR_COMPONENTE: TDBEdit
      Left = 351
      Top = 99
      Width = 109
      Height = 21
      DataField = 'COM_VLR_COMPONENTE'
      DataSource = DMControlePatrimonial.DComponente
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 129
      Width = 420
      Height = 105
      Caption = 'Observa'#231#227'o'
      TabOrder = 5
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 416
        Height = 88
        Align = alClient
        DataField = 'COM_OBSERVACAO'
        DataSource = DMControlePatrimonial.DComponente
        TabOrder = 0
      end
    end
  end
end