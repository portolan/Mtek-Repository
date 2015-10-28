unit UP_lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_lancamento = class(TxPesqPadrao)
    pnInfo: TPanel;
    Ntotal: TLabel;
    Ncredito: TLabel;
    Ndebito: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_lancamento: TP_lancamento;

implementation

{$R *.dfm}

uses UDM_contabil;

end.
