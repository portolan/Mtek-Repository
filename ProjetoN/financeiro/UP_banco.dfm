inherited P_banco: TP_banco
  Caption = 'Bancos'
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      object Label1: TLabel [0]
        Left = 144
        Top = 48
        Width = 67
        Height = 13
        Caption = 'BAN_CODIGO'
      end
      object Label2: TLabel [1]
        Left = 144
        Top = 120
        Width = 85
        Height = 13
        Caption = 'BAN_DESCRICAO'
      end
      inherited DBGDados: TDBGrid
        DataSource = DM_financeiro.D_banco
        Columns = <
          item
            Expanded = False
            FieldName = 'BAN_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_DESCRICAO'
            Visible = True
          end>
      end
    end
  end
end
