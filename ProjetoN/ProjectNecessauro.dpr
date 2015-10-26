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
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto},
  UDM_contabil in 'datamodulo\UDM_contabil.pas' {DM_contabil: TDataModule},
  UM_Categoria in 'Estoque\UM_Categoria.pas' {MCategoria},
  UP_Categoria in 'Estoque\UP_Categoria.pas' {PCategoria},
  UDM_PCP in 'pcp\UDM_PCP.pas' {DM_PCP: TDataModule},
  UM_PCP in 'pcp\UM_PCP.pas' {M_OP},
  UP_OP in 'pcp\UP_OP.pas' {P_OP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TMCategoria, MCategoria);
  Application.CreateForm(TPCategoria, PCategoria);
  Application.CreateForm(TDM_PCP, DM_PCP);
  Application.CreateForm(TM_OP, M_OP);
  Application.CreateForm(TP_OP, P_OP);
  Application.Run;
end.
