inherited MFornecedorCotacao: TMFornecedorCotacao
  Caption = 'Manuten'#231#227'o - Fornecedores da Cota'#231#227'o'
  ClientHeight = 188
  ClientWidth = 496
  OnShow = FormShow
  ExplicitWidth = 512
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 147
    Width = 496
    ExplicitTop = 147
    ExplicitWidth = 496
    inherited sbCancelar: TSpeedButton
      Left = 399
      ExplicitLeft = 399
    end
  end
  inherited gbInfos: TGroupBox
    Width = 496
    Height = 147
    ExplicitWidth = 496
    ExplicitHeight = 147
    object Label1: TLabel
      Left = 237
      Top = 74
      Width = 56
      Height = 13
      Caption = 'Vlr. Unit'#225'rio'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 314
      Top = 74
      Width = 45
      Height = 13
      Caption = 'Vlr. Frete'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 391
      Top = 74
      Width = 79
      Height = 13
      Caption = 'Data de Entrega'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 237
      Top = 90
      Width = 71
      Height = 21
      DataField = 'FCT_VLR_UNITARIO'
      DataSource = dmPedCompra.DFornecedorCotacao
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 314
      Top = 90
      Width = 71
      Height = 21
      DataField = 'FCT_VLR_FRETE'
      DataSource = dmPedCompra.DFornecedorCotacao
      TabOrder = 1
    end
    inline frmPessoa: TfrmRelacionamento
      Left = 2
      Top = 16
      Width = 473
      Height = 44
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 16
      ExplicitWidth = 473
      inherited pnlFrame: TPanel
        Width = 473
        ExplicitWidth = 473
        inherited lbTitulo: TLabel
          Width = 34
          Caption = 'Pessoa'
          ExplicitWidth = 34
        end
        inherited DBE_CAMPO: TDBEdit
          OnExit = frmPessoaDBE_CAMPOExit
        end
        inherited panelFundo: TPanel
          Width = 388
          ExplicitWidth = 388
          inherited DBT_DESCRICAO: TDBText
            Width = 375
            ExplicitWidth = 375
          end
        end
      end
    end
    inline frmUnidade: TfrmRelacionamento
      Left = 2
      Top = 69
      Width = 233
      Height = 44
      TabOrder = 3
      ExplicitLeft = 2
      ExplicitTop = 69
      ExplicitWidth = 233
      inherited pnlFrame: TPanel
        Width = 233
        ExplicitWidth = 233
        inherited lbTitulo: TLabel
          Width = 39
          Caption = 'Unidade'
          ExplicitWidth = 39
        end
        inherited panelFundo: TPanel
          Width = 148
          ExplicitWidth = 148
          inherited DBT_DESCRICAO: TDBText
            Width = 135
            ExplicitWidth = 135
          end
        end
      end
    end
    object DBEdit3: TDBEdit
      Left = 391
      Top = 90
      Width = 79
      Height = 21
      DataField = 'FCT_DT_ENTREGA'
      DataSource = dmPedCompra.DFornecedorCotacao
      TabOrder = 4
    end
  end
end
