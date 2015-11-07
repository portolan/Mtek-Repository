unit UP_planodecontas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_planodecontas = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  P_planodecontas: TP_planodecontas;

implementation

{$R *.dfm}

uses UDM_contabil, UM_planodecontas;

{ TP_planodecontas }

class procedure TP_planodecontas.chamaTela(xPai: TComponent);
begin
P_planodecontas := TP_planodecontas.Create(xPai);
try
   P_planodecontas.ShowModal;
finally
  Freeandnil(P_planodecontas);
end;
end;

procedure TP_planodecontas.FormCreate(Sender: TObject);
begin
  inherited;
procInicializar(DM_contabil.planodecontas,true,false,M_planodecontas,TM_planodecontas);
funcAtribuiFiltros;

end;

procedure TP_planodecontas.procselect;
begin
  inherited;
   procMontaWhere;
  DM_contabil.planodecontas.Close;
  DM_contabil.planodecontas.SQL.Text := 'select * from planodecontas where '+c_where;
  DM_contabil.planodecontas.Open;

end;

end.
