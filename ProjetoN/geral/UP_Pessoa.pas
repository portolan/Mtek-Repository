unit UP_Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPPessoa = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PPessoa: TPPessoa;

implementation

{$R *.dfm}

uses UDM_PedCompra, UM_Pessoa;

{ TPPessoa }

procedure TPPessoa.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(dmPedCompra.Pessoa, true, false, MPessoa, TMPessoa);
end;

procedure TPPessoa.procSelect;
begin
   inherited;
   procMontaWhere;

   dmPedCompra.Pessoa.Close;
   dmPedCompra.Pessoa.SQL.Text := 'select * from pessoas where '+c_where;
   dmPedCompra.Pessoa.Open;
end;

end.
