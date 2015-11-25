unit UP_contabancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_contasbancarias = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  P_contasbancarias: TP_contasbancarias;

implementation

{$R *.dfm}

uses UDM_financeiro, UM_novacontabancaria;

{ TP_contasbancarias }

procedure TP_contasbancarias.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_financeiro.contasbancarias, true, false, m_novacontabancaria, tm_novacontabancaria);
end;

procedure TP_contasbancarias.procSelect;
begin
  inherited;
    DM_financeiro.contasbancarias.Close;
    DM_financeiro.contasbancarias.SQL.Text := 'select * from contabancaria';
    DM_financeiro.contasbancarias.Open;
end;

end.
