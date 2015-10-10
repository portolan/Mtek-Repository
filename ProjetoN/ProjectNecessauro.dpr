program ProjectNecessauro;

uses
  Vcl.Forms,
  ERP in 'ERP.pas' {TelaInicial},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.Run;
end.
