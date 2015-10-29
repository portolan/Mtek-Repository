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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  P_lancamento: TP_lancamento;

implementation

{$R *.dfm}

uses UDM_contabil, UM_lancamento;

{ TP_lancamento }

class procedure TP_lancamento.chamaTela(xPai: TComponent);
begin
P_lancamento := TP_lancamento.Create(xPai);
try
   P_lancamento.ShowModal;
finally
  Freeandnil(P_lancamento);
end;
end;

procedure TP_lancamento.FormCreate(Sender: TObject);
begin
  inherited;
procInicializar(DM_contabil.lancamento,true,false,M_lancamento,TM_lancamento);
end;

procedure TP_lancamento.procselect;
begin
  inherited;
  DM_contabil.lancamento.Close;
  DM_contabil.lancamento.SQL.Text := 'select * from lancamentos';
  DM_contabil.lancamento.Open;

end;

end.
