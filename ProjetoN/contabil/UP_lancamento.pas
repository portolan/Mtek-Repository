unit UP_lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, IBX.IBQuery;

type
  TP_lancamento = class(TxPesqPadrao)
    pnInfo: TPanel;
    Ntotal: TLabel;
    Ncredito: TLabel;
    Ndebito: TLabel;
    Rtotal: TLabel;
    Rcredito: TLabel;
    Rdebito: TLabel;
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

uses UDM_contabil, UM_lancamento, dm000;

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
var Qry:TIBQuery;
    soma, cred, deb : integer;
begin
  inherited;
    Qry := dmBanco.funcCriaQuery;
    try
       Qry.Close;
       Qry.SQL.Text := 'select sum(a.LANC_VALOR) soma from lancamentos a where a.lanc_tipo = ''C'' ';
       Qry.open;

       cred := qry.FieldByName('soma').AsInteger;
       Rcredito.Caption := IntToStr(cred);

       Qry.Close;
       Qry.SQL.Text := 'select sum(a.LANC_VALOR) soma from lancamentos a where a.lanc_tipo = ''D'' ';
       Qry.open;

       deb := qry.FieldByName('soma').AsInteger;
       Rdebito.Caption := IntToStr(deb);



       Rtotal.Caption := IntToStr(cred-deb);




    finally
       FreeAndNil(Qry);
    end;

    procInicializar(DM_contabil.lancamento,true,false,M_lancamento,TM_lancamento);
    funcAtribuiFiltros;
end;

procedure TP_lancamento.procselect;
begin
  inherited;
     procMontaWhere;
  DM_contabil.lancamento.Close;
  DM_contabil.lancamento.SQL.Text := 'select * from lancamentos where '+c_where ;
  DM_contabil.lancamento.Open;

end;

end.
