program ProjectNecessauro;







uses
  Vcl.Forms,
  ERP in 'ERP.pas' {TelaInicial},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule},
  UM_novacontabancaria in 'financeiro\UM_novacontabancaria.pas' {M_novaconta},
  UDM_contabil in 'datamodulo\UDM_contabil.pas' {DM_contabil: TDataModule},
  login in 'login final\login.pas' {tela_login},
  UM_empresa in 'contabil\UM_empresa.pas' {M_empresa},
  UDM_PCP in 'datamodulo\UDM_PCP.pas' {DM_PCP: TDataModule},
  UM_PCP in 'pcp\UM_PCP.pas' {M_OP},
  UP_OP in 'pcp\UP_OP.pas' {P_OP},
  UM_centro in 'contabil\UM_centro.pas' {M_centro},
  UP_PRODUCAO in 'pcp\UP_PRODUCAO.pas' {P_PRODUCAO},
  UM_PRODUCAO in 'pcp\UM_PRODUCAO.pas' {M_PRODUCAO},
  UP_lancamento in 'contabil\UP_lancamento.pas' {P_lancamento},
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
  UEstoque in 'Estoque\UEstoque.pas',
  UM_Bloco in 'Estoque\UM_Bloco.pas' {MBloco},
  UM_Categoria in 'Estoque\UM_Categoria.pas' {MCategoria},
  UM_Estoque in 'Estoque\UM_Estoque.pas' {MEstoque},
  UM_Marcas in 'Estoque\UM_Marcas.pas' {MMarcas},
  UM_MovimentoEstoque in 'Estoque\UM_MovimentoEstoque.pas' {MMovimentoEstoque},
  UM_Prateleira in 'Estoque\UM_Prateleira.pas' {MPrateleira},
  UM_Produto in 'Estoque\UM_Produto.pas' {MProduto},
  UM_Unidade in 'Estoque\UM_Unidade.pas' {MUnidade},
  UP_Bloco in 'Estoque\UP_Bloco.pas' {PBloco},
  UP_Categoria in 'Estoque\UP_Categoria.pas' {PCategoria},
  UP_Estoque in 'Estoque\UP_Estoque.pas' {PEstoque},
  UP_Marcas in 'Estoque\UP_Marcas.pas' {PMarcas},
  UP_MovimentoEstoque in 'Estoque\UP_MovimentoEstoque.pas' {PMovimentoEstoque},
  UP_Prateleira in 'Estoque\UP_Prateleira.pas' {PPrateleira},
  UP_Produto in 'Estoque\UP_Produto.pas' {PProduto},
  UP_Unidade in 'Estoque\UP_Unidade.pas' {PUnidade},
  UR_EstoqueRelatorios in 'Estoque\UR_EstoqueRelatorios.pas' {EstoqueRelatorios: TDataModule},
  UR_Relatorios in 'Estoque\UR_Relatorios.pas' {DataModule1: TDataModule},
  UM_caixa in 'Caixa\UM_caixa.pas' {M_caixa},
  UP_Caixa in 'Caixa\UP_Caixa.pas' {P_caixa},
  UDM_Caixa in 'datamodulo\UDM_Caixa.pas' {DM_caixa: TDataModule},
  UM_contasreceber in 'contas_receber\UM_contasreceber.pas' {M_contasreceber},
  UP_contasreceber in 'contas_receber\UP_contasreceber.pas' {P_receber},
  UDM_contasreceber in 'datamodulo\UDM_contasreceber.pas' {DM_contasreceber: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UF_EstoqueRelatorios in 'Estoque\UF_EstoqueRelatorios.pas' {FEstoqueRelatorios},
  UP_FichaTecnica in 'pcp\UP_FichaTecnica.pas' {P_FichaTecnica},
  UM_FichaTecnica in 'pcp\UM_FichaTecnica.pas' {M_FichaTecnica},
  UDM_PedCompra in 'datamodulo\UDM_PedCompra.pas' {dmPedCompra: TDataModule},
  UDM_Servico in 'assistencia\UDM_Servico.pas' {DM_Servico: TDataModule},
  UM_Servico in 'assistencia\UM_Servico.pas' {M_Servico},
  UM_Tipo_Erro in 'assistencia\UM_Tipo_Erro.pas' {M_Tipo_Erro},
  UP_Servico in 'assistencia\UP_Servico.pas' {P_Servico},
  UP_Tipo_Erro in 'assistencia\UP_Tipo_Erro.pas' {P_Tipo_Erro},
  UR_Relatorio_Chamado in 'assistencia\UR_Relatorio_Chamado.pas' {UR_Relatorio},
  UI_sobre in 'UI_sobre.pas' {I_sobre},
  UR_fechamentocx in 'Caixa\UR_fechamentocx.pas' {REL_fechamentocx},
  UP_abrircx in 'Caixa\UP_abrircx.pas' {UP_abrircaixa},
  UP_fecharcx in 'Caixa\UP_fecharcx.pas' {UP_fecharcaixa},
  UR_balancocx in 'Caixa\UR_balancocx.pas' {REL_balancocx},
  UR_prevtitulos in 'Caixa\UR_prevtitulos.pas' {REL_prevtitulos},
  UR_prevcompravenda in 'Caixa\UR_prevcompravenda.pas' {REL_prevcompravenda},
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao},
  UP_contabancaria in 'financeiro\UP_contabancaria.pas' {P_contasbancarias},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  UDM_financeiro in 'datamodulo\UDM_financeiro.pas' {DM_financeiro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TDM_contabil, DM_contabil);
  Application.CreateForm(TDM_Servico, DM_Servico);
  Application.CreateForm(TDM_PCP, DM_PCP);
  Application.CreateForm(Tdm_contaspagar, dm_contaspagar);
  Application.CreateForm(TDM_contasreceber, DM_contasreceber);
  Application.CreateForm(TdmPedCompra, dmPedCompra);
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TDM_financeiro, DM_financeiro);
  Application.Run;
end.
