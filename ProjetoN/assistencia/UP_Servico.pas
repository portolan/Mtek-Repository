unit UP_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_Servico = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procselect; override;
  end;

var
  P_Servico: TP_Servico;

implementation

{$R *.dfm}

uses UDM_Servico, UM_Servico, dm000, ERP;

procedure TP_Servico.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_Servico.IB_Servico,TRUE,FALSE,M_Servico,TM_Servico);
end;

procedure TP_Servico.procselect;
begin
  inherited;
  DM_Servico.IB_Servico.Close;
  DM_Servico.IB_Servico.SQL.Text := 'SELECT * FROM CHAMADOS';
  DM_Servico.IB_Servico.Open;
end;

end.