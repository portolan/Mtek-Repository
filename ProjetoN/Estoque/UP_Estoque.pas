unit UP_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPEstoque = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PEstoque: TPEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Estoque;

procedure TPEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Estoque, True, False, MEstoque, TMEstoque);
    funcAtribuiFiltros;
    nomeQry := 'estoque';
end;

procedure TPEstoque.procSelect;
begin
  inherited;
    DM_Estoque.Estoque.Close;
    DM_Estoque.Estoque.SQL.Text := 'select * from ESTOQUE';
    DM_Estoque.Estoque.Open;
end;

end.
