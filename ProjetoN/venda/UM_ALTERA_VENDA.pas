unit UM_ALTERA_VENDA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TUP_VENDA = class(TxPesqPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_VENDA: TUP_VENDA;

implementation

{$R *.dfm}


end.
