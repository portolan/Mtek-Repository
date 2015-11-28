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
      Left = 190
      Top = 67
      Width = 39
      Height = 13
      Caption = 'Unidade'
      FocusControl = db_unidade
    end
    object Label4: TLabel
      Left = 335
      Top = 63
      Width = 68
      Height = 13
      Caption = 'Custo Unit'#225'rio'
      FocusControl = db_custo_unitario
    end
    object Label5: TLabel
      Left = 483
      Top = 63
      Width = 62
      Height = 13
      Caption = 'M'#227'o de Obra'
      FocusControl = db_mao_obra
    end
    object Label6: TLabel
      Left = 135
      Top = 117
      Width = 55
      Height = 13
      Caption = 'Custo Total'
      FocusControl = db_custototal
    end
    object Label7: TLabel
      Left = 24
      Top = 117
      Width = 95
      Height = 13
      Caption = 'Tempo de Producao'
      FocusControl = db_tempoproducao
    end
    object db_codigo: TDBEdit
      Left = 24
      Top = 35
      Width = 56
      Height = 21
      DataField = 'FT_COD'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 7
    end
    object db_unidade: TDBEdit
      Left = 181
      Top = 85
      Width = 134
      Height = 21
      DataField = 'FT_UNIDADE'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 0
    end
    object db_custo_unitario: TDBEdit
      Left = 335
      Top = 82
      Width = 121
      Height = 21
      DataField = 'FT_CUSTO_UNITARIO'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 1
    end
    object db_mao_obra: TDBEdit
      Left = 483
      Top = 82
      Width = 137
      Height = 21
      DataField = 'FT_MAO_DE_OBRA'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 2
    end
    object db_custototal: TDBEdit
      Left = 135
      Top = 133
      Width = 137
      Height = 21
      DataField = 'FT_CUSTO_TOTAL'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 5
    end
    object db_tempoproducao: TDBEdit
      Left = 24
      Top = 133
      Width = 105
      Height = 21
      DataField = 'FT_TEMPO_PRODUCAO'
      DataSource = DM_PCP.DS_Ficha_Tecnica
      TabOrder = 4
    end
    inline frm_empresa: TfrmRelacionamento
      Left = 76
      Top = 16
      Width = 241
      Height = 63
      TabOrder = 3
      ExplicitLeft = 76
      ExplicitTop = 16
      ExplicitWidth = 241
      ExplicitHeight = 63
      inherited pnlFrame: TPanel
        Width = 241
        Height = 63
        ExplicitWidth = 241
        ExplicitHeight = 63
        DesignSize = (
          241
          63)
        inherited lbTitulo: TLabel
          Top = 0
          ExplicitTop = 0
        end
        inherited DBE_CAMPO: TDBEdit
          Top = 19
          TabOrder = 1
          ExplicitTop = 19
        end
        inherited panelFundo: TPanel
          Top = 19
          Width = 156
          TabOrder = 0
          ExplicitTop = 19
          ExplicitWidth = 156
          DesignSize = (
            156
            21)
          inherited DBT_DESCRICAO: TDBText
            Left = 22
            Top = 4
            Width = 148
            ExplicitLeft = 22
            ExplicitTop = 4
            ExplicitWidth = 143
          end
        end
      end
    end
    inline frm_produto: TfrmRelacionamento
      Left = 9
      Top = 62
      Width = 166
      Height = 56
      TabOrder = 6
      ExplicitLeft = 9
      ExplicitTop = 62
      ExplicitWidth = 166
      ExplicitHeight = 56
      inherited pnlFrame: TPanel
        Width = 166
        Height = 56
        ExplicitWidth = 166
        ExplicitHeight = 56
        inherited lbTitulo: TLabel
          Left = 15
          ExplicitLeft = 15
        end
        inherited DBE_CAMPO: TDBEdit
          Left = 15
          Top = 23
          Width = 52
          ExplicitLeft = 15
          ExplicitTop = 23
          ExplicitWidth = 52
        end
        inherited panelFundo: TPanel
          Width = 80
          ExplicitWidth = 80
          inherited DBT_DESCRICAO: TDBText
            Width = 72
            ExplicitWidth = 75
          end
        end
      end
    end
  end
end
