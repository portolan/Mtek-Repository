unit UM_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TM_caixa = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_caixa: TM_caixa;

implementation

{$R *.dfm}

end.