unit UP_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPProduto = class(TxPesqPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PProduto: TPProduto;

implementation

{$R *.dfm}

end.
