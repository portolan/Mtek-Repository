inherited M_FichaTecnica: TM_FichaTecnica
  Caption = 'Ficha T'#233'cnica'
  ClientHeight = 212
  ClientWidth = 731
  OnShow = FormShow
  ExplicitWidth = 747
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 171
    Width = 731
    ExplicitTop = 171
    ExplicitWidth = 731
    inherited sbCancelar: TSpeedButton
      Left = 634
      ExplicitLeft = 634
    end
  end
  inherited gbInfos: TGroupBox
    Width = 731
    Height = 171
    Caption = ''
    ExplicitWidth = 731
    ExplicitHeight = 171
    object TLabel
      Left = 24
      Top = 16
      Width = 36
      Height = 13
      Align = alCustom
      Caption = 'C'#243'digo '
      FocusControl = db_codigo
    end
    object Label3: TLabel
      Left = 160
      Top = 62
      Width = 39
      Height = 13
      Caption = 'Unidade'
      FocusControl = db_unidade
    end
    object Label4: TLabel
      Left = 300
      Top = 62
      Width = 68
      Height = 13
      Caption = 'Custo Unit'#225'rio'
      FocusControl = db_custo_unitario
    end
    object Label5: TLabel
      Left = 435
      Top = 62
      Width = 62
      Height = 13
      Caption = 'M'#227'o de Obra'
      FocusControl = db_mao_obra
    end
    object Label6: TLabel
      Left = 570
      Top = 62
      Width = 55
      Height = 13
      Caption = 'Custo Total'
      FocusControl = db_custototal
    end
    object Label7: TLabel
      Left = 24
      Top = 108
      Width = 95
      Height = 13
      Caption = 'Tempo de Producao'
      FocusControl = db_tempoproducao
    end
    object Label1: TLabel
      Left = 25
      Top = 63
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = db_produto
    end
    object db_codigo: TDBEdit
      Left = 24
      Top = 35
      Width = 38
      Height = 21
      DataField = 'FT_COD'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 0
    end
    object db_unidade: TDBEdit
      Left = 160
      Top = 81
      Width = 134
      Height = 21
      DataField = 'FT_UNIDADE'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 1
    end
    object db_custo_unitario: TDBEdit
      Left = 300
      Top = 81
      Width = 129
      Height = 21
      DataField = 'FT_CUSTO_UNITARIO'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 2
    end
    object db_mao_obra: TDBEdit
      Left = 435
      Top = 81
      Width = 129
      Height = 21
      DataField = 'FT_MAO_DE_OBRA'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 3
    end
    object db_custototal: TDBEdit
      Left = 570
      Top = 81
      Width = 137
      Height = 21
      DataField = 'FT_CUSTO_TOTAL'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 4
    end
    object db_tempoproducao: TDBEdit
      Left = 24
      Top = 124
      Width = 105
      Height = 21
      DataField = 'FT_TEMPO_PRODUCAO'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 5
    end
    inline frm_empresa: TfrmRelacionamento
      Left = 73
      Top = 16
      Width = 235
      Height = 60
      TabOrder = 6
      ExplicitLeft = 73
      ExplicitTop = 16
      ExplicitWidth = 235
      inherited pnlFrame: TPanel
        Width = 235
        ExplicitWidth = 235
        DesignSize = (
          235
          60)
        inherited lbTitulo: TLabel
          Top = 0
          ExplicitTop = 0
        end
        inherited DBE_CAMPO: TDBEdit
          Top = 19
          ExplicitTop = 19
        end
        inherited panelFundo: TPanel
          Top = 19
          Width = 150
          ExplicitTop = 19
          ExplicitWidth = 150
          DesignSize = (
            150
            21)
          inherited DBT_DESCRICAO: TDBText
            Width = 137
            ExplicitWidth = 137
          end
        end
      end
    end
    object db_produto: TDBEdit
      Left = 24
      Top = 81
      Width = 82
      Height = 21
      DataField = 'FT_PRODUTO'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 7
    end
  end
end
