unit UP_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPProduto = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PProduto: TPProduto;

implementation

{$R *.dfm}

uses UDM_Estoque, UDM_Banco;

procedure TPProduto.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Produtos, False, False, PProduto, TPProduto);
end;



procedure TPProduto.procSelect;
begin
  inherited;
    DM_Estoque.Produtos.Close;
    DM_Estoque.Produtos.SQL.Text := 'select * from produtos';
    DM_Estoque.Produtos.Open;
end;

end.
