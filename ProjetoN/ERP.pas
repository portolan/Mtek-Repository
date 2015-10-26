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
    Manuteno2: TMenuItem;
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
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EnstradaSada1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
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
  UP_empresa;


procedure TTelaInicial.Empresas1Click(Sender: TObject);
begin
    TP_empresa.chamaTela(self);
end;

procedure TTelaInicial.EnstradaSada1Click(Sender: TObject);
begin
    PMovimentoEstoque := TPMovimentoEstoque.Create(Self);
    PMovimentoEstoque.procChamaTela;
end;

procedure TTelaInicial.Marca1Click(Sender: TObject);
begin
    PMarcas := TPMarcas.Create(Self);
    PMarcas.procChamaTela;
end;

procedure TTelaInicial.Oramento1Click(Sender: TObject);
begin
   FRM_PEDIDO_VENDA := TFRM_PEDIDO_VENDA(Self);
   try
      FRM_PEDIDO_VENDA.ShowModal;
   finally
      FreeAndNil(FRM_PEDIDO_VENDA);
   end;
end;

procedure TTelaInicial.Produtos1Click(Sender: TObject);
begin
    PProduto := TPProduto.Create(Self);
    PProduto.procChamaTela;
end;

procedure TTelaInicial.Sair1Click(Sender: TObject);
begin
    close;
end;

end.
