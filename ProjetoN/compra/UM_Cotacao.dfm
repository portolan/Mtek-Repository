inherited MCotacao: TMCotacao
  ActiveControl = DBE_COT_DESCRICAO
  Caption = 'Manuten'#231#227'o - Cota'#231#227'o de Pre'#231'o'
  ClientHeight = 374
  ClientWidth = 750
  OnShow = FormShow
  ExplicitWidth = 766
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 333
    Width = 750
    ExplicitTop = 333
    ExplicitWidth = 750
    inherited sbCancelar: TSpeedButton
      Left = 653
      ExplicitLeft = 653
    end
  end
  inherited gbInfos: TGroupBox
    Width = 750
    Height = 185
    Align = alTop
    ExplicitWidth = 750
    ExplicitHeight = 185
    object Label1: TLabel
      Left = 14
      Top = 19
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBE_COT_CODIGO
    end
    object Label2: TLabel
      Left = 14
      Top = 123
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBE_COT_DESCRICAO
    end
    object Label3: TLabel
      Left = 664
      Top = 73
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBE_COT_DATA
    end
    object Label4: TLabel
      Left = 395
      Top = 73
      Width = 22
      Height = 13
      Caption = 'Qtd.'
      FocusControl = DBE_COT_QTD
    end
    object DBE_COT_CODIGO: TDBEdit
      Left = 14
      Top = 35
      Width = 83
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'COT_CODIGO'
      DataSource = dmPedCompra.DCotacao
      ReadOnly = True
      TabOrder = 0
    end
    object DBE_COT_DESCRICAO: TDBEdit
      Left = 14
      Top = 139
      Width = 726
      Height = 21
      DataField = 'COT_DESCRICAO'
      DataSource = dmPedCompra.DCotacao
      TabOrder = 1
    end
    object DBE_COT_DATA: TDBEdit
      Left = 664
      Top = 89
      Width = 76
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'COT_DATA'
      DataSource = dmPedCompra.DCotacao
      ReadOnly = True
      TabOrder = 2
    end
    object DBE_COT_QTD: TDBEdit
      Left = 394
      Top = 89
      Width = 86
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'COT_QTD'
      DataSource = dmPedCompra.DCotacao
      ReadOnly = True
      TabOrder = 3
    end
    inline frmEmpresa: TfrmRelacionamento
      Left = 103
      Top = 14
      Width = 316
      Height = 44
      TabOrder = 4
      ExplicitLeft = 103
      ExplicitTop = 14
      ExplicitWidth = 316
      inherited pnlFrame: TPanel
        Width = 316
        ExplicitWidth = 316
        inherited lbTitulo: TLabel
          Width = 41
          Caption = 'Empresa'
          ExplicitWidth = 41
        end
        inherited DBE_CAMPO: TDBEdit
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          OnExit = frmEmpresaDBE_CAMPOExit
        end
        inherited panelFundo: TPanel
          Width = 231
          ExplicitWidth = 231
          DesignSize = (
            231
            21)
          inherited DBT_DESCRICAO: TDBText
            Width = 218
            ExplicitWidth = 218
          end
        end
      end
    end
    inline frmDepartamento: TfrmRelacionamento
      Left = 413
      Top = 14
      Width = 327
      Height = 44
      TabOrder = 5
      ExplicitLeft = 413
      ExplicitTop = 14
      ExplicitWidth = 327
      inherited pnlFrame: TPanel
        Width = 327
        ExplicitWidth = 327
        inherited lbTitulo: TLabel
          Width = 27
          Caption = 'Dpto.'
          ExplicitWidth = 27
        end
        inherited DBE_CAMPO: TDBEdit
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
        end
        inherited panelFundo: TPanel
          Width = 242
          ExplicitWidth = 242
          inherited DBT_DESCRICAO: TDBText
            Width = 229
            ExplicitWidth = 334
          end
        end
      end
    end
    inline frmProduto: TfrmRelacionamento
      Left = 4
      Top = 68
      Width = 384
      Height = 44
      TabOrder = 6
      ExplicitLeft = 4
      ExplicitTop = 68
      ExplicitWidth = 384
      inherited pnlFrame: TPanel
        Width = 384
        ExplicitWidth = 384
        inherited lbTitulo: TLabel
          Width = 38
          Caption = 'Produto'
          ExplicitWidth = 38
        end
        inherited DBE_CAMPO: TDBEdit
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
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
  end
  object gbObs: TGroupBox
    Left = 0
    Top = 185
    Width = 750
    Height = 148
    Align = alClient
    Caption = 'Observa'#231#245'es'
    TabOrder = 2
    object DBM_COT_OBS: TDBMemo
      Left = 2
      Top = 15
      Width = 746
      Height = 131
      Align = alClient
      DataField = 'COT_OBS'
      DataSource = dmPedCompra.DCotacao
      TabOrder = 0
    end
  end
end
