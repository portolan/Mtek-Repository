unit UM_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TMMovimentoEstoque = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MMovimentoEstoque: TMMovimentoEstoque;

implementation

{$R *.dfm}

end.
