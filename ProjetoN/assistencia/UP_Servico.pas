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

uses UDM_Servico, UM_Servico, dm000, ERP, UDM_contabil;

procedure TP_Servico.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_Servico.IB_Chamado,TRUE,FALSE,M_Servico,TM_Servico);
  funcAtribuiFiltros;
end;

procedure TP_Servico.procselect;
begin
  inherited;
   procMontaWhere;
   DM_Servico.IB_Chamado.Close;
   DM_Servico.IB_Chamado.SQL.Text := ' SELECT A.*, '+
                                     ' B.emp_razao, '+
                                     ' c.dep_nome, '+
                                     ' D.pess_nome, '+
                                     ' e.pess_nome, '+
                                     ' f.ter_descricao '+
                                     ' FROM CHAMADOS A '+
                                     ' INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod '+
                                     ' INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD '+
                                     ' AND A.CHA_EMPRESA = C.DEP_EMPRESAR '+
                                     ' INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo '+
                                     ' inner join pessoas E on a.cha_proprietario = e.pess_codigo '+
                                     ' inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo '+
                                     ' WHERE '+ C_WHERE;
   DM_Servico.IB_Chamado.Open;
end;

end.
