unit UP_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_empresa = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procselect; override;
    class procedure chamaTela(xPai: TComponent);

  end;

var
  P_empresa: TP_empresa;

implementation

{$R *.dfm}

uses UDM_contabil, UM_empresa;

class procedure TP_empresa.chamaTela(xPai: TComponent);
begin
P_empresa := TP_empresa.Create(xPai);
try
   P_empresa.ShowModal;
finally
  Freeandnil(P_empresa);
end;
end;

procedure TP_empresa.FormCreate(Sender: TObject);
begin
  inherited;
procInicializar(DM_contabil.empresa,true,false,M_empresa,TM_empresa);
funcAtribuiFiltros;
end;

procedure TP_empresa.procselect;
begin
  inherited;
  procMontaWhere;
  DM_contabil.empresa.Close;
  DM_contabil.empresa.SQL.Text := 'select * from empresa where '+c_where;
  DM_contabil.empresa.Open;

end;

end.
