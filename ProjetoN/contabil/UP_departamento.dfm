inherited P_departamento: TP_departamento
  Caption = 'Pesquisar Departamentos - ProjetoDesnecessauro'
  OnCreate = FormCreate
  ExplicitWidth = 880
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCorpo: TPanel
    inherited gbDados: TGroupBox
      inherited DBGDados: TDBGrid
        DataSource = DM_contabil.Ddepartamento
      end
    end
  end
end
