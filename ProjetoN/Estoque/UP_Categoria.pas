unit UP_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPCategoria = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PCategoria: TPCategoria;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Categoria;

procedure TPCategoria.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Categoria, False, False, MCategoria, TMCategoria);
    funcAtribuiFiltros;
    nomeQry := 'categoria';
end;

procedure TPCategoria.procSelect;
begin
  inherited;
    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria';
    DM_Estoque.Categoria.Open;
end;

end.
