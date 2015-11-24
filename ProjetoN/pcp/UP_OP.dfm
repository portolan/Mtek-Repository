inherited P_OP: TP_OP
  ActiveControl = DBGDados
  Caption = 'Ordem Producao'
  ClientWidth = 800
  ExplicitTop = -29
  ExplicitWidth = 816
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    Width = 800
    ExplicitWidth = 800
    inherited gbDados: TGroupBox
      Width = 794
      ExplicitWidth = 794
      inherited DBGDados: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 784
        Height = 278
        DataSource = DM_PCP.DS_OrdemProducao
        ParentShowHint = False
        ShowHint = True
        Columns = <
          item
            Expanded = False
            FieldName = 'OP_COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_DESCRICAO'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_TIPO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_DT_PEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_DT_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_FICHATECNICA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP_DEPARTAMENTO'
            Visible = True
          end>
      end
      object RadioButton1: TRadioButton
        Left = 776
        Top = -16
        Width = 113
        Height = 17
        Caption = 'RadioButton1'
        TabOrder = 1
      end
      object RadioButton2: TRadioButton
        Left = 768
        Top = -32
        Width = 113
        Height = 17
        Caption = 'RadioButton2'
        TabOrder = 2
      end
    end
  end
  inherited pnRodape: TPanel
    Width = 800
    ExplicitTop = 363
    ExplicitWidth = 800
    inherited sbAlterar: TSpeedButton
      ExplicitLeft = 91
      ExplicitTop = 3
    end
    inherited sbNovo: TSpeedButton
      ParentShowHint = False
      ExplicitLeft = 25
      ExplicitTop = 33
    end
    inherited sbSair: TSpeedButton
      Left = 703
      ExplicitLeft = 775
    end
    object SpeedButton1: TSpeedButton
      Left = 289
      Top = 1
      Width = 96
      Height = 40
      Align = alLeft
      Caption = 'Abrir OP'
      OnClick = SpeedButton1Click
      ExplicitLeft = 345
      ExplicitTop = -2
    end
  end
  inherited pnCabecalho: TPanel
    Width = 800
    ExplicitWidth = 800
    inherited gbStatus: TGroupBox
      Left = 784
      ExplicitLeft = 784
    end
    inherited gbFiltro: TGroupBox
      Width = 784
      ExplicitWidth = 784
      inherited editPesquisa: TEdit
        Width = 245
        ExplicitWidth = 245
      end
      inherited Pesquisar: TButton
        Left = 558
        ExplicitLeft = 558
      end
    end
  end
end
