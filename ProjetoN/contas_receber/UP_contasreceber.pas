unit UP_contasreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_contasreceber = class(TxPesqPadrao)
    procedure sbNovoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_contasreceber: TP_contasreceber;

implementation

{$R *.dfm}



procedure TP_contasreceber.sbNovoClick(Sender: TObject);
begin
  P_contasreceber := TP_contasreceber.Create(Self);
    try
        P_contasreceber.ShowModal;
    finally
        FreeAndNil(P_caixa);
    end;
end;

end.
