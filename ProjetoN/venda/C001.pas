unit C001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFRM_PEDIDO_VENDA = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PEDIDO_VENDA: TFRM_PEDIDO_VENDA;

implementation

{$R *.dfm}

end.
