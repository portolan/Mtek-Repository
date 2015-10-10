program ProjectNecessauro;

uses
  Vcl.Forms,
  ERP in 'ERP.pas' {TelaInicial},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto},
  UDM_Banco in 'datamodulo\UDM_Banco.pas' {DM_Banco: TDataModule},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TDM_Banco, DM_Banco);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.Run;
end.
