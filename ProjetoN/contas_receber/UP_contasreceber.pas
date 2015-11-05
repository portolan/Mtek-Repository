unit UP_contasreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDM_contasreceber, UM_contasreceber;

type
  TP_receber = class(TxPesqPadrao)


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_receber: TP_receber;

implementation

{$R *.dfm}



end.
