unit UM_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TMEstoque = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEstoque: TMEstoque;

implementation

{$R *.dfm}

end.
