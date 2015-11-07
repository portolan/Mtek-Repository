unit UP_historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_historico = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  P_historico: TP_historico;

implementation

{$R *.dfm}

uses UDM_contabil, UM_historico;

class procedure TP_historico.chamaTela(xPai: TComponent);
begin
P_historico := TP_historico.Create(xPai);
try
   P_historico.ShowModal;
finally
  Freeandnil(P_historico);
end;
end;

procedure TP_historico.FormCreate(Sender: TObject);
begin
  inherited;
procInicializar(DM_contabil.historico,true,false,M_historico,TM_historico);
funcAtribuiFiltros;
end;

procedure TP_historico.procselect;
begin
  inherited;
  procMontaWhere;
  DM_contabil.historico.Close;
  DM_contabil.historico.SQL.Text := 'select * from historico where '+c_where;
  DM_contabil.historico.Open;

end;

end.
