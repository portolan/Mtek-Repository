program ProjectNecessauro;





uses
  Vcl.Forms,
  ERP in 'ERP.pas' {TelaInicial},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule},
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao},
  UM_Estoque in 'Estoque\UM_Estoque.pas' {MEstoque},
  UM_Marcas in 'Estoque\UM_Marcas.pas' {MMarcas},
  UM_MovimentoEstoque in 'Estoque\UM_MovimentoEstoque.pas' {MMovimentoEstoque},
  UM_Produto in 'Estoque\UM_Produto.pas' {MProduto},
  UP_Estoque in 'Estoque\UP_Estoque.pas' {PEstoque},
  UP_Marcas in 'Estoque\UP_Marcas.pas' {PMarcas},
  UP_MovimentoEstoque in 'Estoque\UP_MovimentoEstoque.pas' {PMovimentoEstoque},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TxManuPadrao, xManuPadrao);
  Application.CreateForm(TMProduto, MProduto);
  Application.CreateForm(TMEstoque, MEstoque);
  Application.CreateForm(TPEstoque, PEstoque);
  Application.CreateForm(TMMarcas, MMarcas);
  Application.CreateForm(TPMarcas, PMarcas);
  Application.CreateForm(TMEstoque, MEstoque);
  Application.CreateForm(TMMarcas, MMarcas);
  Application.CreateForm(TMMovimentoEstoque, MMovimentoEstoque);
  Application.CreateForm(TMProduto, MProduto);
  Application.CreateForm(TPEstoque, PEstoque);
  Application.CreateForm(TPMarcas, PMarcas);
  Application.CreateForm(TPMovimentoEstoque, PMovimentoEstoque);
  Application.CreateForm(TPProduto, PProduto);
  Application.Run;
end.
