inherited PProduto: TPProduto
  Caption = 'Produtos'
  OnCreate = FormCreate
  ExplicitWidth = 799
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    ExplicitTop = 61
    ExplicitWidth = 783
    ExplicitHeight = 299
    inherited gbDados: TGroupBox
      ExplicitTop = 1
      ExplicitWidth = 777
      ExplicitHeight = 293
      inherited DBGDados: TDBGrid
        DataSource = DM_Estoque.DSProdutos
      end
    end
  end
  inherited pnRodape: TPanel
    ExplicitTop = 360
    ExplicitWidth = 783
  end
  inherited pnCabecalho: TPanel
    inherited gbFiltro: TGroupBox
      ExplicitLeft = 0
      ExplicitWidth = 622
    end
  end
end
