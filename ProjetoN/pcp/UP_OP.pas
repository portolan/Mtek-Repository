unit UP_OP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, UDM_PCP, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TP_OP = class(TxPesqPadrao)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure procSelect; override;
   procedure procAlterarStatus(i_emp, i_cod: Integer; Status: TStatusOrdemProducao; b_finalizarTransacao:Boolean);
   procedure procGerarProducao;
  end;

var
  P_OP: TP_OP;

implementation

{$R *.dfm}

uses  UM_PCP, dm000;

procedure TP_OP.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_PCP.OrdemProducao,TRUE,FALSE,M_OP,TM_OP);
    funcAtribuiFiltros;
end;

procedure TP_OP.procAlterarStatus(i_emp, i_cod: Integer;
  Status: TStatusOrdemProducao; b_finalizarTransacao: Boolean);
  var AuxQry : TIBQuery;
begin
AuxQry := dmBanco.funcCriaQuery;
   try
      AuxQry.Close;
      AuxQry.SQL.Text := ' UPDATE Ordem_producao A '+
                         '    SET A.OP_STATUS= :STATUS '+
                         '  WHERE A.OP_EMPRESA = :EMP '+
                         '    AND A.OP_COD = :COD ';
      AuxQry.ParamByName('EMP').AsInteger    := i_emp;
      AuxQry.ParamByName('COD').AsInteger    := i_cod;
      AuxQry.ParamByName('STATUS').AsString := TNMStatusOp[Status];
      AuxQry.ExecSQL;

      if b_finalizarTransacao then
      begin
         if AuxQry.Transaction.InTransaction then
            AuxQry.Transaction.Commit;
      end;
   finally
      FreeAndNil(AuxQry);
   end;

end;

procedure TP_OP.procGerarProducao;
var AuxQry : TIBQuery;
begin
  if not dm_pcp.Producao.Active then
         dm_pcp.Producao.Open;

try
  AuxQry := dmBanco.funcCriaQuery;
  try
    AuxQry.Close;
    AuxQry.SQl.Text := 'SELECT FIRST 1 1 FROM PRODUCAO A '+
                       ' WHERE A.PROD_EMPRESA = :EMP '+
                       '   AND A.PROD_ORDEM   = :ORDEM '+
                       '   AND A.PROD_PRODUTO = :PROD';
    AuxQry.ParamByName('EMP').AsInteger := dm_pcp.OrdemProducaoOP_EMPRESA.AsInteger;
    AuxQry.ParamByName('ORDEM').AsInteger := dm_pcp.OrdemProducaoOP_COD.AsInteger;
    AuxQry.ParamByName('PROD').AsString :=  dm_pcp.OrdemProducaoOP_PRODUTO.AsString;
    AuxQry.Open;

    if not AuxQry.isEmpty then
      Exit;

    DM_PCP.Producao.Append;
    DM_PCP.ProducaoPROD_ORDEM.AsInteger := dm_pcp.OrdemProducaoOP_COD.AsInteger;
    DM_PCP.ProducaoPROD_DESCRICAO.AsString := DM_PCP.OrdemProducaoOP_DESCRICAO.AsString;
    DM_PCP.ProducaoPROD_TIPO.AsString := DM_PCP.OrdemProducaoOP_TIPO.AsString;
    DM_PCP.ProducaoPROD_DT_INICIO.AsDateTime := now;
    DM_PCP.ProducaoPROD_QTD_PRODUZIDA.AsFloat := 0.00;
    DM_PCP.ProducaoPROD_STATUS.AsString := 'P';
    DM_PCP.ProducaoPROD_EMPRESA.AsInteger := dm_pcp.OrdemProducaoOP_EMPRESA.AsInteger;
    DM_PCP.ProducaoPROD_PRODUTO.AsString := dm_pcp.OrdemProducaoOP_PRODUTO.AsString;
    DM_PCP.Producao.Post;

  if dmBanco.TBanco.InTransaction then
    dmBanco.TBanco.Commit;
  finally
    AuxQry.free;
  end;
except
  on E: Exception do
  begin
  if dmBanco.TBanco.InTransaction then
    dmBanco.TBanco.Rollback;
  SHOWMESSAGE('Erro:'+ e.Message);
  end;
end;
end;

procedure TP_OP.procSelect;
begin
  inherited;
      procMontaWhere;
      DM_PCP.OrdemProducao.Close;
      DM_PCP.OrdemProducao.SQL.Text:= 'select  O.*, D.dep_nome, E.emp_razao from ordem_producao o'+
    '  inner join departamento d ON O.op_departamento = D.dep_cod '+
    '  INNER join EMPRESA E ON O.op_empresa = E.emp_cod '+
    '  where '+c_where;
      DM_PCP.OrdemProducao.Open;

end;

procedure TP_OP.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   procGerarProducao;
end;

end.


