unit UM_Cotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, ufrm_Relacionamento, Vcl.Mask;

type
  TMCotacao = class(TxManuPadrao)
    Label1: TLabel;
    DBE_COT_CODIGO: TDBEdit;
    Label2: TLabel;
    DBE_COT_DESCRICAO: TDBEdit;
    Label3: TLabel;
    DBE_COT_DATA: TDBEdit;
    Label4: TLabel;
    DBE_COT_QTD: TDBEdit;
    frmEmpresa: TfrmRelacionamento;
    frmDepartamento: TfrmRelacionamento;
    frmProduto: TfrmRelacionamento;
    gbObs: TGroupBox;
    DBM_COT_OBS: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure frmEmpresaDBE_CAMPOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MCotacao: TMCotacao;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UP_empresa, UP_departamento, UP_Produto;

procedure TMCotacao.FormShow(Sender: TObject);
begin
   inherited;
   frmEmpresa.procInicializar(dmPedCompra.CotacaoCOT_EMPRESA,
                              dmPedCompra.CotacaoEMP_RAZAO,
                              dmPedCompra.DCotacao,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO '+
                              '   FROM EMPRESA A '+
                              '  WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa, ['EMP'], ['COT_EMPRESA'],
                               ['EMP_COD','EMP_RAZAO']);

   frmDepartamento.procInicializar(dmPedCompra.CotacaoCOT_DEPARTAMENTO,
                                  dmPedCompra.CotacaoDEP_NOME,
                                  dmPedCompra.DCotacao,
                                  ' SELECT A.DEP_COD, '+
                                  '        A.DEP_NOME '+
                                  '   FROM DEPARTAMENTO A '+
                                  '  WHERE A.DEP_EMPRESAR = :EMP '+
                                  '    AND A.DEP_COD = :DPTO ',
                                  P_departamento, TP_departamento, ['EMP', 'DPTO'],
                                  ['COT_EMPRESA','COT_DEPARTAMENTO'],
                                  ['DEP_COD','DEP_NOME'],
                                  ' (DEP_EMPRESAR = '+dmPedCompra.CotacaoCOT_EMPRESA.AsString+') ');

   frmProduto.procInicializar(dmPedCompra.CotacaoCOT_PRODUTO,
                              dmPedCompra.CotacaoPRO_DESCRICAO,
                              dmPedCompra.DCotacao,
                              ' SELECT A.PRO_CODIGO, '+
                              '        A.PRO_DESCRICAO '+
                              '   FROM PRODUTOS A '+
                              '  WHERE A.PRO_EMPRESA = :EMP '+
                              '    AND A.PRO_CODIGO = :PRO ',
                              Pproduto, TPproduto, ['EMP', 'PRO'],
                              ['COT_EMPRESA','COT_PRODUTO'],
                              ['PRO_CODIGO','PRO_DESCRICAO'],
                              ' (PRO_EMPRESA = '+dmPedCompra.CotacaoCOT_EMPRESA.AsString+') ');
end;

procedure TMCotacao.frmEmpresaDBE_CAMPOExit(Sender: TObject);
begin
   inherited;
   frmEmpresa.DBE_CAMPOExit(Sender);
   frmDepartamento.c_whereTela := ' (DEP_EMPRESAR = '+dmPedCompra.CotacaoCOT_EMPRESA.AsString+') ';
   frmProduto.c_whereTela      := ' (PRO_EMPRESA = '+dmPedCompra.CotacaoCOT_EMPRESA.AsString+') ';

end;

end.
