program ProjectNecessauro;







uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  ufrm_Relacionamento in 'comum\ufrm_Relacionamento.pas' {frmRelacionamento: TFrame},
  UManuPadrao in 'comum\UManuPadrao.pas' {xManuPadrao},
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule},
  UDM_Caixa in 'datamodulo\UDM_Caixa.pas' {DM_Caixa: TDataModule},
  UDM_contabil in 'datamodulo\UDM_contabil.pas' {DM_contabil: TDataModule},
  UDM_contasreceber in 'datamodulo\UDM_contasreceber.pas' {DM_contasreceber: TDataModule},
  UDM_empresa in 'datamodulo\UDM_empresa.pas' {DataModule2: TDataModule},
  UDM_Estoque in 'datamodulo\UDM_Estoque.pas' {DM_Estoque: TDataModule},
  UDM_financeiro in 'datamodulo\UDM_financeiro.pas' {DM_financeiro: TDataModule},
  UDM_PCP in 'datamodulo\UDM_PCP.pas' {DM_PCP: TDataModule},
  UDM_PedCompra in 'datamodulo\UDM_PedCompra.pas' {dmPedCompra: TDataModule},
  UDM_Venda in 'datamodulo\UDM_Venda.pas' {DM_VENDA: TDataModule},
  UDM_Servico in 'assistencia\UDM_Servico.pas' {DM_Servico: TDataModule},
  UM_Servico in 'assistencia\UM_Servico.pas' {M_Servico},
  UM_Tipo_Erro in 'assistencia\UM_Tipo_Erro.pas' {M_Tipo_Erro},
  UP_Servico in 'assistencia\UP_Servico.pas' {P_Servico},
  UP_Tipo_Erro in 'assistencia\UP_Tipo_Erro.pas' {P_Tipo_Erro},
  UM_BaixaPedidoCompra in 'compra\UM_BaixaPedidoCompra.pas' {MBaixaPedidoCompra},
  UM_Cotacao in 'compra\UM_Cotacao.pas' {MCotacao},
  UM_FornecedorCotacao in 'compra\UM_FornecedorCotacao.pas' {MFornecedorCotacao},
  UM_PedCompra in 'compra\UM_PedCompra.pas' {MPedCompra},
  UM_SolicitacaoCompra in 'compra\UM_SolicitacaoCompra.pas' {MSolicitacaoCompra},
  UP_FornecedorCotacao in 'compra\UP_FornecedorCotacao.pas' {PFornecedorCotacao},
  UP_NotaEntrada in 'compra\UP_NotaEntrada.pas' {PNotaEntrada},
  UP_PedCompra in 'compra\UP_PedCompra.pas' {PPedCompra},
  UP_SolicitacaoCompra in 'compra\UP_SolicitacaoCompra.pas' {PSolicitacaoCompra},
  UM_centro in 'contabil\UM_centro.pas' {M_centro},
  UM_departamento in 'contabil\UM_departamento.pas' {M_departamento},
  UM_empresa in 'contabil\UM_empresa.pas' {M_empresa},
  UM_historico in 'contabil\UM_historico.pas' {M_historico},
  UM_lancamento in 'contabil\UM_lancamento.pas' {M_lancamento},
  UM_planodecontas in 'contabil\UM_planodecontas.pas' {M_planodecontas},
  UP_centro in 'contabil\UP_centro.pas' {P_centro},
  UP_departamento in 'contabil\UP_departamento.pas' {P_departamento},
  UP_empresa in 'contabil\UP_empresa.pas' {P_empresa},
  UP_historico in 'contabil\UP_historico.pas' {P_historico},
  UP_lancamento in 'contabil\UP_lancamento.pas' {P_lancamento},
  UP_planodecontas in 'contabil\UP_planodecontas.pas' {P_planodecontas},
  relatorio in 'contas_pagar\relatorio.pas' {relcontasp},
  Udm_contaspagar in 'contas_pagar\Udm_contaspagar.pas' {dm_contaspagar: TDataModule},
  Um_titulospagar in 'contas_pagar\Um_titulospagar.pas' {m_titulospagar},
  Up_titulospagar in 'contas_pagar\Up_titulospagar.pas' {p_titulospagar},
  UM_contasreceber in 'contas_receber\UM_contasreceber.pas' {M_contasreceber},
  UP_contasreceber in 'contas_receber\UP_contasreceber.pas' {P_contasreceber},
  UEstoque in 'Estoque\UEstoque.pas',
  UF_EstoqueAjuda in 'Estoque\UF_EstoqueAjuda.pas' {FEstoqueAjuda},
  UF_EstoqueRelatorios in 'Estoque\UF_EstoqueRelatorios.pas' {FEstoqueRelatorios},
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
  UM_Pessoa in 'geral\UM_Pessoa.pas' {MPessoa},
  UP_Pessoa in 'geral\UP_Pessoa.pas' {PPessoa},
  login in 'login final\login.pas' {tela_login},
  UM_FichaTecnica in 'pcp\UM_FichaTecnica.pas' {M_FichaTecnica},
  UM_PCP in 'pcp\UM_PCP.pas' {M_OP},
  UM_PRODUCAO in 'pcp\UM_PRODUCAO.pas' {M_PRODUCAO},
  UP_FichaTecnica in 'pcp\UP_FichaTecnica.pas' {P_FichaTecnica},
  UP_OP in 'pcp\UP_OP.pas' {P_OP},
  UP_PRODUCAO in 'pcp\UP_PRODUCAO.pas' {P_PRODUCAO},
  Um_Emissão_NFE in 'venda\Um_Emissão_NFE.pas' {MEmissao_NFE},
  Um_Pedido_Venda in 'venda\Um_Pedido_Venda.pas' {Frm_Pedido_Venda},
  Up_Emissao_NFE in 'venda\Up_Emissao_NFE.pas' {Up_NFE},
  Up_Pedido_Venda in 'venda\Up_Pedido_Venda.pas' {UP_VENDA},
  ERP in 'ERP.pas' {TelaInicial},
  UI_sobre in 'UI_sobre.pas' {I_sobre},
  UP_Cotacao in 'compra\UP_Cotacao.pas' {PCotacao},
  Um_condicaop in 'contas_pagar\Um_condicaop.pas' {m_condicaopag},
  UR_RELATORIOPCP in 'pcp\UR_RELATORIOPCP.pas' {pcprelatorio: TDataModule},
  UF_RELATORIOPCP in 'pcp\UF_RELATORIOPCP.pas' {FRELATORIOPCP},
  HP_VALORDEPRECIACAO in 'ControlePatrimonial\HP_VALORDEPRECIACAO.pas' {H_FormaCalcDep},
  udmControlePatrimonial in 'ControlePatrimonial\udmControlePatrimonial.pas' {DMControlePatrimonial: TDataModule},
  UM_BensImobilizados in 'ControlePatrimonial\UM_BensImobilizados.pas' {MBensImobilizados},
  UM_Componente in 'ControlePatrimonial\UM_Componente.pas' {MComponente},
  UM_EstadoConservacao in 'ControlePatrimonial\UM_EstadoConservacao.pas' {MEstadoConservacao},
  UM_Localizacao in 'ControlePatrimonial\UM_Localizacao.pas' {MLocalizacao},
  UM_ManutencaoBen in 'ControlePatrimonial\UM_ManutencaoBen.pas' {M_Manutencao},
  UM_TipoBens in 'ControlePatrimonial\UM_TipoBens.pas' {MTipoBens},
  UP_BensImobilizados in 'ControlePatrimonial\UP_BensImobilizados.pas' {P_BensImobilizados},
  UP_EstadoConservacao in 'ControlePatrimonial\UP_EstadoConservacao.pas' {P_EstadoConservacao},
  UP_Localizacao in 'ControlePatrimonial\UP_Localizacao.pas' {PLocalizacao},
  UP_NotaBemImobilizado in 'ControlePatrimonial\UP_NotaBemImobilizado.pas' {P_PesquisaNotaBemImobilizado},
  UP_TipoBens in 'ControlePatrimonial\UP_TipoBens.pas' {P_TipoBens},
  Um_Condição_Pagamento in 'venda\Um_Condição_Pagamento.pas' {U_Condicao_Pg},
  UF_ChamadosRelatorios in 'assistencia\UF_ChamadosRelatorios.pas' {F_ChamadosRelatorios},
  UR_Relatorio_Chamado in 'assistencia\UR_Relatorio_Chamado.pas' {UR_Relatorio},
  Up_condicaop in 'contas_pagar\Up_condicaop.pas' {p_condicaopag},
  UP_contabancaria in 'financeiro\UP_contabancaria.pas' {P_contasbancarias},
  UM_novacontabancaria in 'financeiro\UM_novacontabancaria.pas' {m_novacontabancaria},
  UM_novobanco in 'financeiro\UM_novobanco.pas' {M_novobanco},
  UP_banco in 'financeiro\UP_banco.pas' {P_banco},
  R_contabil in 'contabil\R_contabil.pas' {REL_contabil},
  UF_RelatorioContabil in 'contabil\UF_RelatorioContabil.pas' {F_RelatorioContabil},
  UF_RelatorioControlePatrimonial in 'ControlePatrimonial\UF_RelatorioControlePatrimonial.pas' {F_RelControlePAtrimonial},
  UR_RelatorioContabil in 'contabil\UR_RelatorioContabil.pas' {R_RelatorioContabil: TDataModule},
  UR_RelControlePatrimonial in 'ControlePatrimonial\UR_RelControlePatrimonial.pas' {R_RelatorioControlePatrimonial: TDataModule},
  UM_caixa in 'Caixa\UM_caixa.pas' {M_caixa},
  UP_abrircx in 'Caixa\UP_abrircx.pas' {UP_abrircaixa},
  UP_Caixa in 'Caixa\UP_Caixa.pas' {P_caixa},
  UP_fecharcx in 'Caixa\UP_fecharcx.pas' {UP_fecharcaixa},
  UR_balancocx in 'Caixa\UR_balancocx.pas' {REL_balancocx},
  UR_balancocxdiario in 'Caixa\UR_balancocxdiario.pas' {REL_balancocxdia},
  UR_balancocxmensal in 'Caixa\UR_balancocxmensal.pas' {REL_balancocxmes},
  UR_caixaRelatorios in 'Caixa\UR_caixaRelatorios.pas' {caixaRelatorios: TDataModule},
  UR_fechamentocx in 'Caixa\UR_fechamentocx.pas' {REL_fechamentocx},
  UR_fluxocaixa in 'Caixa\UR_fluxocaixa.pas' {UR_fluxocx},
  UR_prevcompravenda in 'Caixa\UR_prevcompravenda.pas' {REL_prevcompravenda},
  UR_prevtitulos in 'Caixa\UR_prevtitulos.pas' {REL_prevtitulos},
  HP_PesquisaNota in 'ControlePatrimonial\HP_PesquisaNota.pas' {H_PesquisaNota};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TDM_contabil, DM_contabil);
  Application.CreateForm(TDM_contasreceber, DM_contasreceber);
  Application.CreateForm(TDM_Estoque, DM_Estoque);
  Application.CreateForm(TDM_financeiro, DM_financeiro);
  Application.CreateForm(TDM_PCP, DM_PCP);
  Application.CreateForm(TdmPedCompra, dmPedCompra);
  Application.CreateForm(TDM_VENDA, DM_VENDA);
  Application.CreateForm(TDM_Servico, DM_Servico);
  Application.CreateForm(TDMControlePatrimonial, DMControlePatrimonial);
  Application.CreateForm(Tdm_contaspagar, dm_contaspagar);
  Application.CreateForm(TEstoqueRelatorios, EstoqueRelatorios);
  Application.CreateForm(Tpcprelatorio, pcprelatorio);
  Application.CreateForm(TR_RelatorioContabil, R_RelatorioContabil);
  Application.CreateForm(TR_RelatorioControlePatrimonial, R_RelatorioControlePatrimonial);
  Application.CreateForm(TcaixaRelatorios, caixaRelatorios);
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TH_PesquisaNota, H_PesquisaNota);
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.Run;
end.
