unit UP_centro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_centro = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  P_centro: TP_centro;

implementation

{$R *.dfm}

uses UDM_contabil, UM_centro;

class procedure TP_centro.chamaTela(xPai: TComponent);
begin
P_centro := TP_centro.Create(xPai);
try
   P_centro.ShowModal;
finally
  Freeandnil(P_centro);
end;
end;

procedure TP_centro.FormCreate(Sender: TObject);
begin
  inherited;
procInicializar(DM_contabil.centro,true,false,M_centro,TM_centro);
funcAtribuiFiltros;
end;

procedure TP_centro.procselect;
begin
  inherited;
  procMontaWhere;
  DM_contabil.centro.Close;
  DM_contabil.centro.SQL.Text := 'select * from centrodecusto where '+c_where;
  DM_contabil.centro.Open;
end;

end.
