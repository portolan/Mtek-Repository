inherited m_condicaopag: Tm_condicaopag
  Caption = 'Condicao de pagamento'
  ClientHeight = 217
  ClientWidth = 360
  ExplicitWidth = 376
  ExplicitHeight = 256
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 176
    Width = 360
    ExplicitTop = 176
    ExplicitWidth = 360
    inherited sbCancelar: TSpeedButton
      Left = 263
      ExplicitLeft = 263
    end
  end
  inherited gbInfos: TGroupBox
    Width = 360
    Height = 176
    Caption = ''
    ExplicitWidth = 360
    ExplicitHeight = 176
    object codigo: TLabel
      Left = 16
      Top = 13
      Width = 41
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = cod
    end
    object descricao: TLabel
      Left = 16
      Top = 59
      Width = 59
      Height = 13
      Caption = 'DESCRI'#199#195'O'
      FocusControl = desc
    end
    object parcelas: TLabel
      Left = 16
      Top = 105
      Width = 113
      Height = 13
      Caption = 'NUMERO DE PARCELAS'
      FocusControl = parc
    end
    object vencimento: TLabel
      Left = 208
      Top = 105
      Width = 122
      Height = 13
      Caption = 'DIAS PARA VENCIMENTO'
      FocusControl = venc
    end
    object cod: TDBEdit
      Left = 16
      Top = 32
      Width = 85
      Height = 21
      DataField = 'CDP_CODIGO'
      DataSource = DataSourceCondicao
      ReadOnly = True
      TabOrder = 0
    end
    object desc: TDBEdit
      Left = 16
      Top = 78
      Width = 313
      Height = 21
      DataField = 'CDP_DESCRICAO'
      DataSource = DataSourceCondicao
      TabOrder = 1
    end
    object parc: TDBEdit
      Left = 16
      Top = 124
      Width = 113
      Height = 21
      DataField = 'CDP_PARCELAS'
      DataSource = DataSourceCondicao
      TabOrder = 2
    end
    object venc: TDBEdit
      Left = 208
      Top = 124
      Width = 121
      Height = 21
      DataField = 'CDP_DIAS_VENCIMENTO'
      DataSource = DataSourceCondicao
      TabOrder = 3
    end
  end
  object DataSourceCondicao: TDataSource
    DataSet = dm_contaspagar.condicaoPag
    Left = 280
    Top = 8
  end
end
