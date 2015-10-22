program ProjectNecessauro;





uses
  Vcl.Forms,
  ERP in 'ERP.pas' {TelaInicial},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule},
<<<<<<< .mine
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao},
  UM_Estoque in 'Estoque\UM_Estoque.pas' {MEstoque},
  UM_Marcas in 'Estoque\UM_Marcas.pas' {MMarcas},
  UM_MovimentoEstoque in 'Estoque\UM_MovimentoEstoque.pas' {MMovimentoEstoque},
  UM_Produto in 'Estoque\UM_Produto.pas' {MProduto},
  UP_Estoque in 'Estoque\UP_Estoque.pas' {PEstoque},
  UP_Marcas in 'Estoque\UP_Marcas.pas' {PMarcas},
  UP_MovimentoEstoque in 'Estoque\UP_MovimentoEstoque.pas' {PMovimentoEstoque},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto},
  UDM_contabil in 'datamodulo\UDM_contabil.pas' {DM_contabil: TDataModule},
  UP_empresa in 'contabil\UP_empresa.pas' {xPesqPadrao1},
  UM_empresa in 'contabil\UM_empresa.pas' {Mempresa};
||||||| .r52
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao};
=======
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao},
  UM_Estoque in 'Estoque\UM_Estoque.pas' {MEstoque},
  UM_Marcas in 'Estoque\UM_Marcas.pas' {MMarcas},
  UM_MovimentoEstoque in 'Estoque\UM_MovimentoEstoque.pas' {MMovimentoEstoque},
  UM_Produto in 'Estoque\UM_Produto.pas' {MProduto},
  UP_Estoque in 'Estoque\UP_Estoque.pas' {PEstoque},
  UP_Marcas in 'Estoque\UP_Marcas.pas' {PMarcas},
  UP_MovimentoEstoque in 'Estoque\UP_MovimentoEstoque.pas' {PMovimentoEstoque},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto};
>>>>>>> .r66

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TxManuPadrao, xManuPadrao);
<<<<<<< .mine
  Application.CreateForm(TMEstoque, MEstoque);
  Application.CreateForm(TMMarcas, MMarcas);
  Application.CreateForm(TMMovimentoEstoque, MMovimentoEstoque);
  Application.CreateForm(TMProduto, MProduto);
  Application.CreateForm(TPEstoque, PEstoque);
  Application.CreateForm(TPMarcas, PMarcas);
  Application.CreateForm(TPMovimentoEstoque, PMovimentoEstoque);
  Application.CreateForm(TPProduto, PProduto);
  Application.CreateForm(TDM_contabil, DM_contabil);
  Application.CreateForm(TxPesqPadrao1, xPesqPadrao1);
  Application.CreateForm(TMempresa, Mempresa);
||||||| .r52
=======
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
>>>>>>> .r66
  Application.Run;
end.
