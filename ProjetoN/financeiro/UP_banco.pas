unit UP_banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_banco = class(TxPesqPadrao)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; override;
  end;

var
  P_banco: TP_banco;

implementation

{$R *.dfm}

uses UDM_financeiro, UM_novobanco;

{ TP_banco }

procedure TP_banco.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_financeiro.banco, true, false, M_novobanco, TM_novobanco);
end;

procedure TP_banco.procSelect;
begin
  inherited;
    procMontaWhere;

   DM_financeiro.banco.Close;
   DM_financeiro.banco.SQL.Text := 'select * from banco where '+c_where;
   DM_financeiro.banco.Open;
end;

end.
