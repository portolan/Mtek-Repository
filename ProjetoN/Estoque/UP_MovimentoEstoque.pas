unit UP_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPMovimentoEstoque = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PMovimentoEstoque: TPMovimentoEstoque;

implementation

{$R *.dfm}

uses UM_MovimentoEstoque, UDM_Estoque;

procedure TPMovimentoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.MovimentoEstoque,  True, False, MMovimentoEstoque, TMMovimentoEstoque);
    funcAtribuiFiltros;
    nomeQry := 'ESTOQ_MOVIMENTO';
end;

procedure TPMovimentoEstoque.procSelect;
begin
  inherited;
    DM_Estoque.MovimentoEstoque.Close;
    DM_Estoque.MovimentoEstoque.SQL.Text := 'select * from ESTOQ_MOVIMENTO';
    DM_Estoque.MovimentoEstoque.Open;
end;

end.
