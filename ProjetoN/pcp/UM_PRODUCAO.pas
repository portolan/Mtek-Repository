unit UM_PRODUCAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TM_PRODUCAO = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_PRODUCAO: TM_PRODUCAO;

implementation

{$R *.dfm}

uses UDM_PCP;

end.
