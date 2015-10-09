unit Uped001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPPedido = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
  end;

var
  PPedido: TPPedido;

implementation

{$R *.dfm}

uses dm001, Uped002;

{ TPPedido }

procedure TPPedido.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dmPedido.Pedido, False, False, CPedido, TCPedido);
end;

procedure TPPedido.procSelect;
begin
   inherited;
   dmPedido.Pedido.Close;
   dmPedido.Pedido.SQL.Text := 'SELECT * FROM PEDIDO';
   dmPedido.Pedido.Open;
end;

end.
