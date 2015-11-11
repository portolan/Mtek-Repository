unit ERP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg, UDM_contasreceber,
  UM_contasreceber, UP_contasreceber, Vcl.ComCtrls;

type
  TTelaInicial = class(TForm)
    MainMenu1: TMainMenu;
    Estoque1: TMenuItem;
    PCP1: TMenuItem;
    Compras1: TMenuItem;
    ControledeVendas1: TMenuItem;
    Financeiro1: TMenuItem;
    Contbil1: TMenuItem;
    Manuteno1: TMenuItem;
    Sair1: TMenuItem;
    EnstradaSada1: TMenuItem;
    Marca1: TMenuItem;
    Produtos1: TMenuItem;
    FichaTcnica1: TMenuItem;
    OrdemdeProduo1: TMenuItem;
    CotaoFornecedor1: TMenuItem;
    PedidodeCompra1: TMenuItem;
    SolicitaodeRequisisio1: TMenuItem;
    Oramento1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    Manuteno3: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    CentrodeCustos1: TMenuItem;
    CentrodeCustos2: TMenuItem;
    Empresas1: TMenuItem;
    PlanodeContas1: TMenuItem;
    Producao: TMenuItem;
    Bloco1: TMenuItem;
    Prateleira1: TMenuItem;
    Categoria1: TMenuItem;
    Departamentos1: TMenuItem;
    E1: TMenuItem;
    Histricos1: TMenuItem;
    Relatrios2: TMenuItem;
    ProdutosemEstoque1: TMenuItem;
    Relatrios1: TMenuItem;
    ipodeErro1: TMenuItem;
    Sobre1: TMenuItem;
    ContasBancarias1: TMenuItem;
    Condiesdepagamento1: TMenuItem;
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
    procedure Blocos1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ProdutosemEstoque1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure FichaTcnica1Click(Sender: TObject);
    procedure ipodeErro1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ContasBancarias1Click(Sender: TObject);
    procedure Relatrios2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaInicial: TTelaInicial;

implementation

{$R *.dfm}


uses UP_Marcas, UP_Produto, UM_Estoque, UM_Marcas, UM_Produto, UP_Estoque, UP_MovimentoEstoque,
  UP_empresa, UP_centro, UP_OP, UP_PRODUCAO, UM_PRODUCAO, UP_lancamento, UM_Servico,
  UP_Servico, UP_Bloco, UM_Prateleira, UP_Categoria, UP_Prateleira,
  UP_departamento, UM_departamento, UP_planodecontas, UP_historico, Up_titulospagar,
  UR_EstoqueRelatorios, UP_Caixa, UF_EstoqueRelatorios, UM_FichaTecnica, UM_PCP,
  UP_FichaTecnica, UP_Tipo_Erro, UI_sobre, UP_abrircx, UP_fecharcx,
  UR_balancocx, UR_fechamentocx, UR_prevtitulos, UR_prevcompravenda,
  UP_contabancaria, UDM_Estoque, R_contabil;

procedure TTelaInicial.Bloco1Click(Sender: TObject);
begin
    PBloco := TPBloco.Create(Self);
    try
        PBloco.ShowModal;
    finally
        FreeAndNil(PBloco);
    end;
end;

procedure TTelaInicial.Blocos1Click(Sender: TObject);
begin
    EstoqueRelatorios.frxReportBloco.ShowReport();
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

procedure TTelaInicial.Departamentos1Click(Sender: TObject);
begin
    TP_departamento.chamaTela(self);
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

procedure TTelaInicial.FichaTcnica1Click(Sender: TObject);
begin
P_FichaTecnica := TP_FichaTecnica.Create(Self);
try
   P_FichaTecnica.ShowModal;
finally
  FreeAndNil(P_FichaTecnica);
end;
end;

procedure TTelaInicial.FluxodeCaixa1Click(Sender: TObject);
begin
    P_caixa := TP_caixa.Create(Self);
    try
        P_caixa.ShowModal;
    finally
        FreeAndNil(P_caixa);
    end;
end;

procedure TTelaInicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TTelaInicial.Histricos1Click(Sender: TObject);
begin
    TP_historico.chamaTela(Self);
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

procedure TTelaInicial.OrdemdeProduo1Click(Sender: TObject);
begin
 P_OP := TP_OP.Create(Self);
    try
        P_OP.ShowModal;
    finally
        FreeAndNil(P_OP);
    end;
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
  TREL_contabil.chamaTela(Self);
end;

procedure TTelaInicial.Sair1Click(Sender: TObject);
begin
    close;
end;

procedure TTelaInicial.Sobre1Click(Sender: TObject);
begin
  TI_sobre.chamaTela(Self);
end;


end.
