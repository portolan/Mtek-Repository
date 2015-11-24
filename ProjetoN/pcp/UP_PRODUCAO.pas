unit UP_PRODUCAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,IBX.IBQuery, Vcl.ExtCtrls;

type
    TP_PRODUCAO = class(TxPesqPadrao)
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sbRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure procSelect; override;
    { Public declarations }
  end;

var
  P_PRODUCAO: TP_PRODUCAO;

implementation

{$R *.dfm}

uses dm000, UM_PRODUCAO, UM_PCP, UP_OP, UDM_contabil, UDM_empresa,
  UDM_Estoque, UDM_PCP;

procedure TP_PRODUCAO.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_PCP.Producao,TRUE,FALSE,M_PRODUCAO,TM_PRODUCAO);
    funcAtribuiFiltros;
end;

procedure TP_PRODUCAO.procSelect;
begin
  inherited;
      procMontaWhere;
      DM_PCP.Producao.Close;
      DM_PCP.Producao.SQL.Text:= 'SELECT * FROM PRODUCAO WHERE '+c_where;
      DM_PCP.Producao.Open;

end;
procedure TP_PRODUCAO.sbRemoverClick(Sender: TObject);
begin
      DM_PCP.Producao.Edit;
      if DM_PCP.Producao.FieldByName('PROD_STATUS').Value = 'P' then
        begin
          DM_PCP.ProducaoPROD_STATUS.AsString := 'C';
        end;
            DM_PCP.Producao.Post;
end;

end.
