unit UP_departamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_departamento = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  P_departamento: TP_departamento;

implementation

{$R *.dfm}

uses UDM_contabil, UM_departamento;

class procedure TP_departamento.chamaTela(xPai: TComponent);
begin
P_departamento := TP_departamento.Create(xPai);
try
   P_departamento.ShowModal;
finally
  Freeandnil(P_departamento);
end;
end;

procedure TP_departamento.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(DM_contabil.departamento,true,false,M_departamento,TM_departamento);
   funcAtribuiFiltros;
end;

procedure TP_departamento.procselect;
begin
  inherited;
  procMontaWhere;
  DM_contabil.departamento.Close;
  DM_contabil.departamento.SQL.Text := 'select * from departamento where '+c_where;
  DM_contabil.departamento.Open;

end;

end.
