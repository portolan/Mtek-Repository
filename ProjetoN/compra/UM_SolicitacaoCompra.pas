unit UM_SolicitacaoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, ufrm_Relacionamento;

type
  TMSolicitacaoCompra = class(TxManuPadrao)
    Label2: TLabel;
    DBE_SOL_CODIGO: TDBEdit;
    Label5: TLabel;
    DBE_SOL_QTD: TDBEdit;
    frmEmpresa: TfrmRelacionamento;
    frmDepartamento: TfrmRelacionamento;
    frmProduto: TfrmRelacionamento;
    Label1: TLabel;
    DBE_SOL_DATA: TDBEdit;
    Label3: TLabel;
    DBE_SOL_DATA_URGENCIA: TDBEdit;
    GroupBox1: TGroupBox;
    DBM_SOL_OBS: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure frmEmpresaDBE_CAMPOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MSolicitacaoCompra: TMSolicitacaoCompra;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UP_empresa, UP_departamento, UP_Produto;

procedure TMSolicitacaoCompra.FormShow(Sender: TObject);
begin
   inherited;
   frmEmpresa.procInicializar(dmPedCompra.SolicitacaoCompraSOL_EMPRESA,
                              dmPedCompra.SolicitacaoCompraEMP_RAZAO,
                              dmPedCompra.DSolicitacaoCompra,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO '+
                              '   FROM EMPRESA A '+
                              '  WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa, ['EMP'], ['SOL_EMPRESA'],
                               ['EMP_COD','EMP_RAZAO']);

   frmDepartamento.procInicializar(dmPedCompra.SolicitacaoCompraSOL_DEPARTAMENTO,
                                  dmPedCompra.SolicitacaoCompraDEP_NOME,
                                  dmPedCompra.DSolicitacaoCompra,
                                  ' SELECT A.DEP_COD, '+
                                  '        A.DEP_NOME '+
                                  '   FROM DEPARTAMENTO A '+
                                  '  WHERE A.DEP_EMPRESAR = :EMP '+
                                  '    AND A.DEP_COD = :DPTO ',
                                  P_departamento, TP_departamento, ['EMP', 'DPTO'],
                                  ['SOL_EMPRESA','SOL_DEPARTAMENTO'],
                                  ['DEP_COD','DEP_NOME'],
                                  ' (DEP_EMPRESAR = '+dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsString+') ');

   frmProduto.procInicializar(dmPedCompra.SolicitacaoCompraSOL_PRODUTO,
                              dmPedCompra.SolicitacaoCompraPRO_DESCRICAO,
                              dmPedCompra.DSolicitacaoCompra,
                              ' SELECT A.PRO_CODIGO, '+
                              '        A.PRO_DESCRICAO '+
                              '   FROM PRODUTOS A '+
                              '  WHERE A.PRO_EMPRESA = :EMP '+
                              '    AND A.PRO_CODIGO = :PRO ',
                              Pproduto, TPproduto, ['EMP', 'PRO'],
                              ['SOL_EMPRESA','SOL_PRODUTO'],
                              ['PRO_CODIGO','PRO_DESCRICAO'],
                              ' (PRO_EMPRESA = '+dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsString+') ');
end;

procedure TMSolicitacaoCompra.frmEmpresaDBE_CAMPOExit(Sender: TObject);
begin
  inherited;
  frmEmpresa.DBE_CAMPOExit(Sender);
  frmDepartamento.c_whereTela := ' (DEP_EMPRESAR = '+dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsString+') ';
  frmProduto.c_whereTela      := ' (PRO_EMPRESA = '+dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsString+') ';
end;

end.

