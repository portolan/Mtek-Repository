unit Up_Condicao_Pg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, dm000, UDM_Venda;

type
  TUP_COND_PG = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_COND_PG: TUP_COND_PG;

implementation

{$R *.dfm}

procedure TUP_COND_PG.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_VENDA.IB_CondicaoPG,TRUE,FALSE,UP_COND_PG, TUP_COND_PG);
end;

end.
