unit ERP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg, UDM_contasreceber,
  UM_contasreceber, UP_contasreceber, Vcl.ComCtrls, IBX.IBQuery, Up_Pedido_Venda,
  Vcl.Imaging.pngimage, UF_RelatorioControlePatrimonial;

type
  TTelaInicial = class(TForm)
    Image2: TImage;
    Image5: TImage;
    Image8: TImage;
    Image10: TImage;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pessoas1: TMenuItem;
    Estoque1: TMenuItem;
    Produtos1: TMenuItem;
    ProdutosemEstoque1: TMenuItem;
    EnstradaSada1: TMenuItem;
    Marca1: TMenuItem;
    Categoria1: TMenuItem;
    Bloco1: TMenuItem;
    Prateleira1: TMenuItem;
    Relatrios1: TMenuItem;
    AjudacomEstoque1: TMenuItem;
    PCP1: TMenuItem;
    FichaTcnica1: TMenuItem;
    OrdemdeProduo1: TMenuItem;
    Producao: TMenuItem;
    E1: TMenuItem;
    Compras1: TMenuItem;
    SolicitaodeRequisisio1: TMenuItem;
    CotaoFornecedor1: TMenuItem;
    PedidodeCompra1: TMenuItem;
    NotasdeEntrada1: TMenuItem;
    ControledeVendas1: TMenuItem;
    Oramento1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasBancarias1: TMenuItem;
    Condiesdepagamento1: TMenuItem;
    Contbil1: TMenuItem;
    CentrodeCustos1: TMenuItem;
    CentrodeCustos2: TMenuItem;
    Empresas1: TMenuItem;
    Departamentos1: TMenuItem;
    PlanodeContas1: TMenuItem;
    Histricos1: TMenuItem;
    Relatrios2: TMenuItem;
    ControlePatrimonial1: TMenuItem;
    ipodeBemImobilizado1: TMenuItem;
    Localizao1: TMenuItem;
    EstadodeConservao1: TMenuItem;
    BemImobilizado1: TMenuItem;
    Manuteno1: TMenuItem;
    Manuteno3: TMenuItem;
    ipodeErro1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    Image3: TImage;
    Relatrios3: TMenuItem;
    Bancos1: TMenuItem;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
    RelatrioFechamentoCaixa1: TMenuItem;
    RelatrioBalanoCaixa1: TMenuItem;
    RelatrioBalanoMensal1: TMenuItem;
    RelatriosPrevisoContasReceberPagar1: TMenuItem;
    RelatriosPrevisoVendasCompras1: TMenuItem;
    RelatrioFluxoCaixa1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EnstradaSada1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure CentrodeCustos2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OrdemdeProduo1Click(Sender: TObject);
    procedure ProducaoClick(Sender: TObject);
    procedure CentrodeCustos1Click(Sender: TObject);
    procedure Manuteno3Click(Sender: TObject);
    procedure Bloco1Click(Sender: TObject);
    procedure Prateleira1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure Histricos1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ProdutosemEstoque1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure FichaTcnica1Click(Sender: TObject);
    procedure ipodeErro1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ContasBancarias1Click(Sender: TObject);
    procedure Relatrios2Click(Sender: TObject);
    procedure SolicitaodeRequisisio1Click(Sender: TObject);
    procedure CotaoFornecedor1Click(Sender: TObject);
    procedure PedidodeCompra1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AjudacomEstoque1Click(Sender: TObject);
    procedure ipodeBemImobilizado1Click(Sender: TObject);
    procedure Localizao1Click(Sender: TObject);
    procedure EstadodeConservao1Click(Sender: TObject);
    procedure BemImobilizado1Click(Sender: TObject);
    procedure NotasdeEntrada1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Pessoas1Click(Sender: TObject);
    procedure Relatrios3Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Condiesdepagamento1Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure RelatrioFechamentoCaixa1Click(Sender: TObject);
    procedure RelatrioBalanoCaixa1Click(Sender: TObject);
    procedure RelatrioBalanoMensal1Click(Sender: TObject);
    procedure RelatriosPrevisoContasReceberPagar1Click(Sender: TObject);
    procedure RelatriosPrevisoVendasCompras1Click(Sender: TObject);
    procedure RelatrioFluxoCaixa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fechaQuery(DataModule : TDataModule);
  end;

var
  TelaInicial: TTelaInicial;

implementation

{$R *.dfm}


uses UP_Marcas, UP_Produto, UM_Estoque, UM_Marcas, UM_Produto, UP_Estoque, UP_MovimentoEstoque,
  UP_empresa, UP_centro, UP_OP, UP_PRODUCAO, UM_PRODUCAO, UP_lancamento, UM_Servico,
  UP_Servico, UP_Bloco, UM_Prateleira, UP_Categoria, UP_Prateleira,
  UP_departamento, UM_departamento, UP_planodecontas, UP_historico, Up_titulospagar,
  UR_EstoqueRelatorios, UF_EstoqueRelatorios, UM_FichaTecnica, UM_PCP,
  UP_FichaTecnica, UP_Tipo_Erro, UI_sobre,UR_prevtitulos, UR_prevcompravenda,
  UP_contabancaria, UDM_Estoque, R_contabil, UDM_contabil,
  Udm_contaspagar, UDM_financeiro, UDM_PCP, UDM_PedCompra, UDM_Servico, UP_SolicitacaoCompra,
  UP_Cotacao, UP_PedCompra, UF_EstoqueAjuda, UP_TipoBens, UP_Localizacao,
  UP_EstadoConservacao, UP_NotaBemImobilizado, UP_Pessoa, UP_NotaEntrada,

  UF_ChamadosRelatorios, UF_RELATORIOPCP, UR_RELATORIOPCP, relatorio,
  UM_BensImobilizados, UM_ManutencaoBen, UM_TipoBens, UP_BensImobilizados,
  Um_Condição_Pagamento, Up_condicaop, UR_Relatorio_Chamado, dm000,
  UR_Relatorios, Um_condicaop, Up_Emissao_NFE, UP_banco, UM_novobanco,
  UF_RelatorioContabil, UR_caixaRelatorios, UR_RelatorioContabil,
  UR_RelControlePatrimonial, UDM_Caixa, UM_caixa, UP_Caixa, UR_fluxocaixa,
  UP_abrircx, UP_fecharcx, UR_balancocx, UR_balancocxdiario, UR_balancocxmensal,
  UR_fechamentocx;


procedure TTelaInicial.AjudacomEstoque1Click(Sender: TObject);
begin
    FEstoqueAjuda := TFEstoqueAjuda.Create(Self);
    try
        FEstoqueAjuda.ShowModal;
    finally
        FreeAndNil(FEstoqueAjuda);
    end;
end;

procedure TTelaInicial.Bancos1Click(Sender: TObject);
begin
   P_banco := TP_banco.Create(Self);
   try
      P_banco.ShowModal;
   finally
      FreeAndNil(P_banco);
   end;
end;

procedure TTelaInicial.BemImobilizado1Click(Sender: TObject);
begin
   P_BensImobilizados := TP_BensImobilizados.Create(Self);
   try
      P_BensImobilizados.ShowModal;
   finally
     FreeAndNil(P_BensImobilizados);
   end;
end;

procedure TTelaInicial.Bloco1Click(Sender: TObject);
begin
    PBloco := TPBloco.Create(Self);
    try
        PBloco.ShowModal;
    finally
        FreeAndNil(PBloco);
    end;
end;

procedure TTelaInicial.Categoria1Click(Sender: TObject);
begin
    PCategoria := TPCategoria.Create(Self);
    try
        PCategoria.ShowModal;
    finally
        FreeAndNil(PCategoria);
    end;
end;

procedure TTelaInicial.CentrodeCustos1Click(Sender: TObject);
begin
    TP_lancamento.chamaTela(self);
end;

procedure TTelaInicial.CentrodeCustos2Click(Sender: TObject);
begin
    TP_centro.chamaTela(self);
end;

procedure TTelaInicial.Condiesdepagamento1Click(Sender: TObject);
begin
    Tp_condicaopag.chamaTela(self);
end;

procedure TTelaInicial.ContasaPagar1Click(Sender: TObject);
begin
   Tp_titulospagar.procChamaTela(self);
end;

procedure TTelaInicial.ContasaReceber1Click(Sender: TObject);
begin
    P_contasreceber := TP_contasreceber.Create(Self);
    try
        P_contasreceber.ShowModal;
    finally
        FreeAndNil(P_contasreceber);
    end;
end;

procedure TTelaInicial.ContasBancarias1Click(Sender: TObject);
begin
    P_contasbancarias := TP_contasbancarias.Create(Self);
    try
        P_contasbancarias.ShowModal;
    finally
        FreeAndNil(P_contasbancarias);
    end;
end;

procedure TTelaInicial.CotaoFornecedor1Click(Sender: TObject);
begin
   TPCotacao.ChamaTela(Self);
end;

procedure TTelaInicial.Departamentos1Click(Sender: TObject);
begin
    TP_departamento.chamaTela(self);
end;

procedure TTelaInicial.E1Click(Sender: TObject);
begin
FRELATORIOPCP := TFRELATORIOPCP.Create(Self);
    try
        FRELATORIOPCP.ShowModal;
    finally
        FreeAndNil(FRELATORIOPCP);
    end;
end;

procedure TTelaInicial.Empresas1Click(Sender: TObject);
begin
    TP_empresa.chamaTela(self);
end;

procedure TTelaInicial.EnstradaSada1Click(Sender: TObject);
begin
    PMovimentoEstoque := TPMovimentoEstoque.Create(Self);
    try
        PMovimentoEstoque.ShowModal;
    finally
        FreeAndNil(PMovimentoEstoque);
    end;
end;

procedure TTelaInicial.EstadodeConservao1Click(Sender: TObject);
begin
   P_EstadoConservacao := TP_EstadoConservacao.Create(Self);
   try
      P_EstadoConservacao.ShowModal;
   finally
     FreeAndNil(P_EstadoConservacao);
   end;
end;

procedure TTelaInicial.fechaQuery(DataModule: TDataModule);
var
    I : Integer;
begin
    for I := 0 to DataModule.ComponentCount - 1 do
        if DataModule.Components[I] is TIBQuery then
            (DataModule.Components[I] as TIBQuery).Close;
end;

procedure TTelaInicial.FichaTcnica1Click(Sender: TObject);
begin
P_FichaTecnica := TP_FichaTecnica.Create(Self);
try
   P_FichaTecnica.ShowModal;
finally
  FreeAndNil(P_FichaTecnica);
end;
end;

procedure TTelaInicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TTelaInicial.FormCreate(Sender: TObject);
begin                 {
    fechaQuery(DM_Servico);
    fechaQuery(dmPedCompra);
    fechaQuery(DM_PCP);
    fechaQuery(DM_financeiro);
    fechaQuery(dm_contaspagar);
    fechaQuery(DM_contabil);
    fechaQuery(DM_Caixa);
    fechaQuery(DM_Estoque);
    fechaQuery(DM_contasreceber);       }
end;

procedure TTelaInicial.Histricos1Click(Sender: TObject);
begin
    TP_historico.chamaTela(Self);
end;

procedure TTelaInicial.ipodeBemImobilizado1Click(Sender: TObject);
begin
   P_TipoBens := TP_TipoBens.Create(Self);
   try
     P_TipoBens.ShowModal;
   finally
      FreeAndNil(P_TipoBens);
   end;
end;

procedure TTelaInicial.ipodeErro1Click(Sender: TObject);
begin
    P_Tipo_Erro := TP_Tipo_Erro.Create(Self);
  try
     P_Tipo_Erro.ShowModal;
  finally
     FreeAndNil(P_Tipo_Erro);
  end;
end;

procedure TTelaInicial.Localizao1Click(Sender: TObject);
begin
 PLocalizacao := TPLocalizacao.Create(Self);
   try
     PLocalizacao.ShowModal;
   finally
      FreeAndNil(PLocalizacao);
   end;
end;

procedure TTelaInicial.Manuteno3Click(Sender: TObject);
begin
   P_Servico := TP_Servico.Create(Self);
   try
     P_Servico.ShowModal;  // d
   finally
      FreeAndNil(P_Servico);
   end;
end;

procedure TTelaInicial.Marca1Click(Sender: TObject);
begin
    PMarcas := TPMarcas.Create(Self);
    try
        PMarcas.ShowModal;
    finally
        FreeAndNil(PMarcas);
    end;
end;

procedure TTelaInicial.NotasdeEntrada1Click(Sender: TObject);
begin
   TPNotaEntrada.procChamaTela(Self)
end;

procedure TTelaInicial.Oramento1Click(Sender: TObject);
begin
   UP_VENDA := TUP_VENDA.Create(self);
   try
      UP_VENDA.ShowModal;
   finally
      FreeAndNil(UP_VENDA);
   end;
end;

procedure TTelaInicial.OrdemdeProduo1Click(Sender: TObject);
begin
 P_OP := TP_OP.Create(Self);
    try
        P_OP.ShowModal;
    finally
        FreeAndNil(P_OP);
    end;
end;

procedure TTelaInicial.PedidodeCompra1Click(Sender: TObject);
begin
   TPPedCompra.ChamaTela(Self);
end;

procedure TTelaInicial.PedidodeVenda1Click(Sender: TObject);
begin
    Up_NFE := TUp_NFE.Create(Self);
    try
        Up_NFE.ShowModal;
    finally
        FreeAndNil(Up_NFE);
    end;
end;

procedure TTelaInicial.Pessoa1Click(Sender: TObject);
begin
   TPPessoa.ChamaTela(Self);
end;

procedure TTelaInicial.Pessoas1Click(Sender: TObject);
begin
    TPPessoa.ChamaTela(Self);
end;

procedure TTelaInicial.PlanodeContas1Click(Sender: TObject);
begin
    TP_planodecontas.chamaTela(Self);
end;

procedure TTelaInicial.Prateleira1Click(Sender: TObject);
begin
    PPrateleira := TPPrateleira.Create(Self);
    try
        PPrateleira.ShowModal;
    finally
        FreeAndNil(PPrateleira);
    end;
end;

procedure TTelaInicial.ProducaoClick(Sender: TObject);
begin
P_PRODUCAO := TP_PRODUCAO.Create(Self);
try
    P_PRODUCAO.ShowModal;
finally
  FreeAndNil(P_PRODUCAO);
end;

end;

procedure TTelaInicial.Produtos1Click(Sender: TObject);
begin
    PProduto := TPProduto.Create(Self);
    try
        PProduto.ShowModal;
    finally
        FreeAndNil(PProduto);
    end;
end;

procedure TTelaInicial.ProdutosemEstoque1Click(Sender: TObject);
begin
    PEstoque := TPEstoque.Create(Self);
    try
        PEstoque.ShowModal;
    finally
        FreeAndNil(PEstoque);
    end;
end;

procedure TTelaInicial.Relatorios1Click(Sender: TObject);
begin
    F_RelControlePAtrimonial := TF_RelControlePAtrimonial.Create(Self);
    try
        F_RelControlePAtrimonial.ShowModal;
    finally
        FreeAndNil(F_RelControlePAtrimonial);
    end;
end;

procedure TTelaInicial.RelatrioBalanoCaixa1Click(Sender: TObject);
begin
    REL_balancocxdia := TREL_balancocxdia.Create(Self);
    try
        REL_balancocxdia.ShowModal;
    finally
        FreeAndNil(REL_balancocxdia);
    end;
end;

procedure TTelaInicial.RelatrioBalanoMensal1Click(Sender: TObject);
begin
    REL_balancocxmes := TREL_balancocxmes.Create(Self);
    try
        REL_balancocxmes.ShowModal;
    finally
        FreeAndNil(REL_balancocxmes);
    end;
end;

procedure TTelaInicial.RelatrioFechamentoCaixa1Click(Sender: TObject);
begin
    REL_fechamentocx := TREL_fechamentocx.Create(Self);
    try
        REL_fechamentocx.ShowModal;
    finally
        FreeAndNil(REL_fechamentocx);
    end;
end;

procedure TTelaInicial.RelatrioFluxoCaixa1Click(Sender: TObject);
begin
    UR_fluxocx := TUR_fluxocx.Create(Self);
    try
        UR_fluxocx.ShowModal;
    finally
        FreeAndNil(UR_fluxocx);
    end;                                 
end;

procedure TTelaInicial.Relatrios1Click(Sender: TObject);
begin
    FEstoqueRelatorios := TFEstoqueRelatorios.Create(Self);
    try
        FEstoqueRelatorios.ShowModal;
    finally
        FreeAndNil(FEstoqueRelatorios);
    end;
end;


procedure TTelaInicial.Relatrios2Click(Sender: TObject);
begin
  F_RelatorioContabil := TF_RelatorioContabil.Create(Self);
  try
    F_RelatorioContabil.ShowModal;
  finally
    FreeAndNil(F_RelatorioContabil);
  end;
end;

procedure TTelaInicial.Relatrios3Click(Sender: TObject);
begin
    F_ChamadosRelatorios := TF_ChamadosRelatorios.Create(Self);
    try
      F_ChamadosRelatorios.ShowModal;
    finally
      FreeAndNil(F_ChamadosRelatorios);
    end;
end;

procedure TTelaInicial.RelatriosPrevisoContasReceberPagar1Click(
  Sender: TObject);
begin
    REL_prevtitulos := TREL_prevtitulos.Create(Self);
    try
        REL_prevtitulos.ShowModal;
    finally
        FreeAndNil(REL_prevtitulos);
    end;
end;

procedure TTelaInicial.RelatriosPrevisoVendasCompras1Click(Sender: TObject);
begin
    REL_prevcompravenda := TREL_prevcompravenda.Create(Self);
    try
        REL_prevcompravenda.ShowModal;
    finally
        FreeAndNil(REL_prevcompravenda);
    end;
end;

procedure TTelaInicial.Sair1Click(Sender: TObject);
begin
    close;
end;

procedure TTelaInicial.Sobre1Click(Sender: TObject);
begin
  TI_sobre.chamaTela(Self);
end;


procedure TTelaInicial.SolicitaodeRequisisio1Click(Sender: TObject);
begin
   TPSolicitacaoCompra.procChamaTela(Self);
end;

end.
