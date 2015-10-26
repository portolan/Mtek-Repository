unit UP_OP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_OP = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   procedure procSelect; override;
    { Public declarations }
  end;

var
  P_OP: TP_OP;

implementation

{$R *.dfm}

uses UDM_PCP, UM_PCP;

procedure TP_OP.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_PCP.IB_PCP,TRUE,FALSE,M_OP,TM_OP);
end;

procedure TP_OP.procSelect;
begin
  inherited;
      DM_PCP.IB_PCP.Close;
      DM_PCP.IB_PCP.SQL.Text:= 'SELECT * FROM CLIENTE';
      DM_PCP.IB_PCP.Open;
end;

end.
