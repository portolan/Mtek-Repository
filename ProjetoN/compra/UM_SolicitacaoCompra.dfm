inherited MSolicitacaoCompra: TMSolicitacaoCompra
  ActiveControl = frmEmpresa.DBE_CAMPO
  Caption = 'Manuten'#231#227'o - Solicita'#231#227'o de Compra'
  ClientHeight = 295
  ClientWidth = 795
  OnShow = FormShow
  ExplicitWidth = 811
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 254
    Width = 795
    ExplicitTop = 254
    ExplicitWidth = 795
    inherited sbCancelar: TSpeedButton
      Left = 698
      ExplicitLeft = 698
    end
  end
  inherited gbInfos: TGroupBox
    Width = 795
    Height = 131
    Align = alTop
    ExplicitWidth = 795
    ExplicitHeight = 131
    object Label2: TLabel
      Left = 19
      Top = 18
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBE_SOL_CODIGO
    end
    object Label5: TLabel
      Left = 398
      Top = 71
      Width = 22
      Height = 13
      Caption = 'Qtd.'
      FocusControl = DBE_SOL_QTD
    end
    object Label1: TLabel
      Left = 707
      Top = 18
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBE_SOL_DATA
    end
    object Label3: TLabel
      Left = 707
      Top = 71
      Width = 53
      Height = 13
      Caption = 'Data Limite'
      FocusControl = DBE_SOL_DATA_URGENCIA
    end
    object DBE_SOL_CODIGO: TDBEdit
      Left = 19
      Top = 34
      Width = 56
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'SOL_CODIGO'
      DataSource = dmPedCompra.DSolicitacaoCompra
      ReadOnly = True
      TabOrder = 0
    end
    object DBE_SOL_QTD: TDBEdit
      Left = 398
      Top = 87
      Width = 73
      Height = 21
      DataField = 'SOL_QTD'
      DataSource = dmPedCompra.DSolicitacaoCompra
      TabOrder = 1
    end
    inline frmEmpresa: TfrmRelacionamento
      Left = 76
      Top = 13
      Width = 316
      Height = 44
      TabOrder = 2
      ExplicitLeft = 76
      ExplicitTop = 13
      ExplicitWidth = 316
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 316
        Height = 44
        ExplicitWidth = 316
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Width = 41
          Caption = 'Empresa'
          ExplicitWidth = 41
        end
        inherited DBE_CAMPO: TDBEdit
          OnExit = frmEmpresaDBE_CAMPOExit
        end
        inherited panelFundo: TPanel
          Width = 231
          ExplicitWidth = 231
          inherited DBT_DESCRICAO: TDBText
            Width = 219
            ExplicitWidth = 219
          end
        end
      end
    end
    inline frmDepartamento: TfrmRelacionamento
      Left = 389
      Top = 13
      Width = 312
      Height = 44
      TabOrder = 3
      ExplicitLeft = 389
      ExplicitTop = 13
      ExplicitWidth = 312
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 312
        Height = 44
        ExplicitWidth = 312
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Width = 27
          Caption = 'Dpto.'
          ExplicitWidth = 27
        end
        inherited panelFundo: TPanel
          Width = 227
          ExplicitWidth = 227
          inherited DBT_DESCRICAO: TDBText
            Width = 214
            ExplicitWidth = 334
          end
        end
      end
    end
    inline frmProduto: TfrmRelacionamento
      Left = 8
      Top = 66
      Width = 384
      Height = 44
      TabOrder = 4
      ExplicitLeft = 8
      ExplicitTop = 66
      ExplicitWidth = 384
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 384
        Height = 44
        ExplicitWidth = 384
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Width = 38
          Caption = 'Produto'
          ExplicitWidth = 38
        end
        inherited panelFundo: TPanel
          Width = 299
          ExplicitWidth = 299
          inherited DBT_DESCRICAO: TDBText
            Width = 286
            ExplicitWidth = 286
          end
        end
      end
    end
    object DBE_SOL_DATA: TDBEdit
      Left = 707
      Top = 34
      Width = 73
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'SOL_DATA'
      DataSource = dmPedCompra.DSolicitacaoCompra
      ReadOnly = True
      TabOrder = 5
    end
    object DBE_SOL_DATA_URGENCIA: TDBEdit
      Left = 707
      Top = 87
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = 'SOL_DATA_URGENCIA'
      DataSource = dmPedCompra.DSolicitacaoCompra
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 131
    Width = 795
    Height = 123
    Align = alClient
    Caption = 'Observa'#231#245'es'
    TabOrder = 2
    object DBM_SOL_OBS: TDBMemo
      Left = 2
      Top = 15
      Width = 791
      Height = 106
      Align = alClient
      DataField = 'SOL_OBS'
      DataSource = dmPedCompra.DSolicitacaoCompra
      TabOrder = 0
    end
  end
end
