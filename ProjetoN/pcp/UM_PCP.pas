unit UM_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TM_OP = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_OP: TM_OP;

implementation

{$R *.dfm}

uses UDM_PCP;

end.
