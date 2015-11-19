unit UP_contasreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UM_contasreceber;

type
  TP_contasreceber = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
     procedure procSelect; override;
  end;

var
  P_contasreceber: TP_contasreceber;

implementation

{$R *.dfm}

uses UDM_contasreceber;



procedure TP_contasreceber.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_contasreceber.contasreceber,true,false,M_contasreceber,TM_contasreceber);
end;

procedure TP_contasreceber.procSelect;
begin
  inherited;
  procMontaWhere;

  DM_contasreceber.contasreceber.Close;
  DM_contasreceber.contasreceber.SQL.Text := 'select * from TITULO_RECEBER ';//+c_where;
  DM_contasreceber.contasreceber.Open;
end;

end.
