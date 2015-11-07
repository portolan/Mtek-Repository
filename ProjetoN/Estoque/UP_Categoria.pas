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
    procInicializar(DM_Estoque.Categoria, True, False, MCategoria, TMCategoria);
    funcAtribuiFiltros;
end;

procedure TPCategoria.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria where '+c_where;
    DM_Estoque.Categoria.Open;
end;

end.
