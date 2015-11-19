unit UP_OP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TP_OP = class(TxPesqPadrao)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
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
    procInicializar(DM_PCP.OrdemProducao,TRUE,FALSE,M_OP,TM_OP);
    funcAtribuiFiltros;
end;

procedure TP_OP.procSelect;
begin
  inherited;
      procMontaWhere;
      DM_PCP.OrdemProducao.Close;
      DM_PCP.OrdemProducao.SQL.Text:= 'select  O.*, D.dep_nome, E.emp_razao from ordem_producao o'+
    '  inner join departamento d ON O.op_departamento = D.dep_cod '+
    '  INNER join EMPRESA E ON O.op_empresa = E.emp_cod '+
    ' where '+c_where;
      DM_PCP.OrdemProducao.Open;

end;

end.
