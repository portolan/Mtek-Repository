unit UP_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_caixa = class(TxPesqPadrao)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_caixa: TP_caixa;

implementation

{$R *.dfm}

uses UDM_caixa, UM_caixa;

end.
