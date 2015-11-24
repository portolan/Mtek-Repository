inherited MPedCompra: TMPedCompra
  Caption = 'Manuten'#231#227'o - Pedido de Compra'
  ClientHeight = 374
  ClientWidth = 801
  OnShow = FormShow
  ExplicitWidth = 817
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnRodape: TPanel
    Top = 333
    Width = 801
    ExplicitTop = 333
    ExplicitWidth = 801
    inherited sbCancelar: TSpeedButton
      Left = 704
      ExplicitLeft = 704
    end
  end
  inherited gbInfos: TGroupBox
    Width = 801
    Height = 217
    Align = alTop
    ExplicitWidth = 801
    ExplicitHeight = 217
    object Label2: TLabel
      Left = 14
      Top = 19
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBE_PDC_CODIGO
    end
    object Label1: TLabel
      Left = 707
      Top = 18
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
      FocusControl = DBE_PDC_DATA
    end
    object Label5: TLabel
      Left = 237
      Top = 113
      Width = 22
      Height = 13
      Caption = 'Qtd.'
      FocusControl = DBE_PDC_QTD_TOTAL
    end
    object Label3: TLabel
      Left = 707
      Top = 67
      Width = 67
      Height = 13
      Caption = 'Prev. Entrega'
      FocusControl = DBE_PDC_PREV_ENTREGA
    end
    object Label4: TLabel
      Left = 322
      Top = 113
      Width = 56
      Height = 13
      Caption = 'Vlr. Unit'#225'rio'
      FocusControl = DBE_PDC_VLR_UNITARIO
    end
    object Label6: TLabel
      Left = 400
      Top = 113
      Width = 45
      Height = 13
      Caption = 'Vlr. Frete'
      FocusControl = DBE_PDC_VLR_FRETE
    end
    object Label7: TLabel
      Left = 478
      Top = 113
      Width = 45
      Height = 13
      Caption = 'Vlr. Bruto'
      FocusControl = DBE_PDC_VLR_BRUTO
    end
    object Label8: TLabel
      Left = 556
      Top = 113
      Width = 64
      Height = 13
      Caption = 'Vlr. Desconto'
      FocusControl = DBE_PDC_VLR_DESCONTO
    end
    object Label9: TLabel
      Left = 634
      Top = 113
      Width = 52
      Height = 13
      Caption = 'Vlr. L'#237'quido'
      FocusControl = DBE_PDC_VLR_LIQUIDO
    end
    object Label10: TLabel
      Left = 713
      Top = 113
      Width = 43
      Height = 13
      Caption = 'Vlr. Total'
      FocusControl = DBE_PDC_VLR_TOTAL
    end
    inline frmEmpresa: TfrmRelacionamento
      Left = 75
      Top = 14
      Width = 316
      Height = 44
      TabOrder = 0
      ExplicitLeft = 75
      ExplicitTop = 14
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
        inherited panelFundo: TPanel
          Width = 231
          ExplicitWidth = 231
          inherited DBT_DESCRICAO: TDBText
            Width = 218
            ExplicitWidth = 218
          end
        end
      end
    end
    object DBE_PDC_CODIGO: TDBEdit
      Left = 14
      Top = 35
      Width = 56
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PDC_CODIGO'
      DataSource = dmPedCompra.DPedidoCompra
      ReadOnly = True
      TabOrder = 1
    end
    inline frmDepartamento: TfrmRelacionamento
      Left = 389
      Top = 13
      Width = 312
      Height = 44
      TabOrder = 2
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
    object DBE_PDC_DATA: TDBEdit
      Left = 707
      Top = 34
      Width = 73
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PDC_DATA'
      DataSource = dmPedCompra.DPedidoCompra
      ReadOnly = True
      TabOrder = 3
    end
    object DBE_PDC_QTD_TOTAL: TDBEdit
      Left = 237
      Top = 129
      Width = 73
      Height = 21
      DataField = 'PDC_QTD_TOTAL'
      DataSource = dmPedCompra.DPedidoCompra
      Enabled = False
      TabOrder = 4
    end
    inline frmProduto: TfrmRelacionamento
      Left = 4
      Top = 62
      Width = 384
      Height = 46
      TabOrder = 5
      ExplicitLeft = 4
      ExplicitTop = 62
      ExplicitWidth = 384
      ExplicitHeight = 46
      inherited pnlFrame: TPanel
        Width = 384
        Height = 46
        ExplicitWidth = 384
        ExplicitHeight = 46
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
    object DBE_PDC_PREV_ENTREGA: TDBEdit
      Left = 707
      Top = 83
      Width = 73
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PDC_PREV_ENTREGA'
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 6
    end
    object DBE_PDC_VLR_UNITARIO: TDBEdit
      Left = 322
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_UNITARIO'
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 7
    end
    object DBE_PDC_VLR_FRETE: TDBEdit
      Left = 400
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_FRETE'
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 8
    end
    object DBE_PDC_VLR_BRUTO: TDBEdit
      Left = 478
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_BRUTO'
      DataSource = dmPedCompra.DPedidoCompra
      Enabled = False
      TabOrder = 9
    end
    object DBE_PDC_VLR_DESCONTO: TDBEdit
      Left = 556
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_DESCONTO'
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 10
    end
    object DBE_PDC_VLR_LIQUIDO: TDBEdit
      Left = 634
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_LIQUIDO'
      DataSource = dmPedCompra.DPedidoCompra
      Enabled = False
      TabOrder = 11
    end
    object DBE_PDC_VLR_TOTAL: TDBEdit
      Left = 713
      Top = 129
      Width = 67
      Height = 21
      DataField = 'PDC_VLR_TOTAL'
      DataSource = dmPedCompra.DPedidoCompra
      Enabled = False
      TabOrder = 12
    end
    inline frmPessoa: TfrmRelacionamento
      Left = 389
      Top = 62
      Width = 312
      Height = 44
      TabOrder = 13
      ExplicitLeft = 389
      ExplicitTop = 62
      ExplicitWidth = 312
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 312
        Height = 44
        ExplicitWidth = 312
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Width = 55
          Caption = 'Fornecedor'
          ExplicitWidth = 55
        end
        inherited panelFundo: TPanel
          Width = 227
          ExplicitWidth = 227
          inherited DBT_DESCRICAO: TDBText
            Width = 214
            ExplicitWidth = 375
          end
        end
      end
    end
    inline frmUnidade: TfrmRelacionamento
      Left = 2
      Top = 109
      Width = 229
      Height = 44
      TabOrder = 14
      ExplicitLeft = 2
      ExplicitTop = 109
      ExplicitWidth = 229
      ExplicitHeight = 44
      inherited pnlFrame: TPanel
        Width = 229
        Height = 44
        ExplicitWidth = 229
        ExplicitHeight = 44
        inherited lbTitulo: TLabel
          Width = 39
          Caption = 'Unidade'
          ExplicitWidth = 39
        end
        inherited panelFundo: TPanel
          Width = 144
          ExplicitWidth = 144
          inherited DBT_DESCRICAO: TDBText
            Width = 131
            ExplicitWidth = 135
          end
        end
      end
    end
    inline frmCondicao: TfrmRelacionamento
      Left = 3
      Top = 157
      Width = 341
      Height = 60
      TabOrder = 15
      ExplicitLeft = 3
      ExplicitTop = 157
    end
  end
  object gbObs: TGroupBox
    Left = 0
    Top = 217
    Width = 801
    Height = 116
    Align = alClient
    Caption = 'Observa'#231#245'es'
    TabOrder = 2
    object DBM_PDC_OBS: TDBMemo
      Left = 2
      Top = 15
      Width = 797
      Height = 99
      Align = alClient
      DataField = 'PDC_OBS'
      DataSource = dmPedCompra.DPedidoCompra
      TabOrder = 0
    end
  end
end
