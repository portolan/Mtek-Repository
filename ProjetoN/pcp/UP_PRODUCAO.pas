unit UP_PRODUCAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_PRODUCAO = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_PRODUCAO: TP_PRODUCAO;

implementation

{$R *.dfm}

uses UDM_PCP, dm000, UM_PRODUCAO;

procedure TP_PRODUCAO.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_PCP.OrdemProducao,TRUE,FALSE,M_PRODUCAO,TM_PRODUCAO);
end;

end.
