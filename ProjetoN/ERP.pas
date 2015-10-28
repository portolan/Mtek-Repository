unit ERP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg;

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
    PrazosCliente1: TMenuItem;
    PrevisodeVendas1: TMenuItem;
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
    ConsultaMovimentaes1: TMenuItem;
    p1: TMenuItem;
    Producao: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EnstradaSada1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure CentrodeCustos2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OrdemdeProduo1Click(Sender: TObject);
    procedure ProducaoClick(Sender: TObject);
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
  UP_empresa, UP_centro, UP_OP, UP_PRODUCAO, UM_PRODUCAO;


procedure TTelaInicial.CentrodeCustos2Click(Sender: TObject);
begin
    TP_centro.chamaTela(self);
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

procedure TTelaInicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
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

procedure TTelaInicial.Sair1Click(Sender: TObject);
begin
    close;
end;

end.
