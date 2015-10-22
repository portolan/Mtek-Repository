unit UM_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TMProduto = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MProduto: TMProduto;

implementation

{$R *.dfm}

end.
