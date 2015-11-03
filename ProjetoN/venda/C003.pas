unit C003;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UP_lancamento, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_lancamento1 = class(TP_lancamento)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_lancamento1: TP_lancamento1;

implementation

{$R *.dfm}

end.
