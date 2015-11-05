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
  login in 'login final\login.pas' {tela_login},
  UM_empresa in 'contabil\UM_empresa.pas' {M_empresa},
  UDM_PCP in 'datamodulo\UDM_PCP.pas' {DM_PCP: TDataModule},
  UM_PCP in 'pcp\UM_PCP.pas' {M_OP},
  UP_OP in 'pcp\UP_OP.pas' {P_OP},
  UDM_Servico in 'assistencia\UDM_Servico.pas' {DM_Servico: TDataModule},
  UM_Servico in 'assistencia\UM_Servico.pas' {M_Servico},
  UP_Servico in 'assistencia\UP_Servico.pas' {P_Servico},
  UM_centro in 'contabil\UM_centro.pas' {M_centro},
  UP_PRODUCAO in 'pcp\UP_PRODUCAO.pas' {P_PRODUCAO},
  UM_PRODUCAO in 'pcp\UM_PRODUCAO.pas' {M_PRODUCAO},
  UP_lancamento in 'contabil\UP_lancamento.pas' {P_lancamento},
  UP_Bloco in 'Estoque\UP_Bloco.pas' {PBloco},
  UP_Prateleira in 'Estoque\UP_Prateleira.pas' {PPrateleira},
  UM_Bloco in 'Estoque\UM_Bloco.pas' {MBloco},
  UM_Prateleira in 'Estoque\UM_Prateleira.pas' {MPrateleira},
  UM_departamento in 'contabil\UM_departamento.pas' {M_departamento},
  UP_planodecontas in 'contabil\UP_planodecontas.pas' {P_planodecontas},
  Udm_contaspagar in 'contas_pagar\Udm_contaspagar.pas' {dm_contaspagar: TDataModule},
  Um_titulospagar in 'contas_pagar\Um_titulospagar.pas' {m_titulospagar},
  Up_titulospagar in 'contas_pagar\Up_titulospagar.pas' {p_titulospagar},
  UM_historico in 'contabil\UM_historico.pas' {M_historico},
  UM_lancamento in 'contabil\UM_lancamento.pas' {M_lancamento},
  UM_planodecontas in 'contabil\UM_planodecontas.pas' {M_planodecontas},
  UP_centro in 'contabil\UP_centro.pas' {P_centro},
  UP_departamento in 'contabil\UP_departamento.pas' {P_departamento},
  UP_empresa in 'contabil\UP_empresa.pas' {P_empresa},
  UP_historico in 'contabil\UP_historico.pas' {P_historico},
  R_contabil in 'contabil\R_contabil.pas' {Form1},
  UR_EstoqueRelatorios in 'Estoque\UR_EstoqueRelatorios.pas' {EstoqueRelatorios: TDataModule},
  UR_Relatorios in 'Estoque\UR_Relatorios.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TDM_contabil, DM_contabil);
  Application.CreateForm(TDM_Servico, DM_Servico);
  Application.CreateForm(TDM_PCP, DM_PCP);
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(Tdm_contaspagar, dm_contaspagar);
  Application.CreateForm(Tdm_contaspagar, dm_contaspagar);
  Application.CreateForm(TEstoqueRelatorios, EstoqueRelatorios);
  Application.CreateForm(TM_historico, M_historico);
  Application.CreateForm(TM_lancamento, M_lancamento);
  Application.CreateForm(TM_planodecontas, M_planodecontas);
  Application.CreateForm(TP_centro, P_centro);
  Application.CreateForm(TP_departamento, P_departamento);
  Application.CreateForm(TP_empresa, P_empresa);
  Application.CreateForm(TP_historico, P_historico);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TEstoqueRelatorios, EstoqueRelatorios);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
