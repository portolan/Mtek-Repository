unit UM_PedCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufrm_Relacionamento;

type
  TMPedCompra = class(TxManuPadrao)
    gbObs: TGroupBox;
    DBM_PDC_OBS: TDBMemo;
    frmEmpresa: TfrmRelacionamento;
    Label2: TLabel;
    DBE_PDC_CODIGO: TDBEdit;
    frmDepartamento: TfrmRelacionamento;
    Label1: TLabel;
    DBE_PDC_DATA: TDBEdit;
    Label5: TLabel;
    DBE_PDC_QTD_TOTAL: TDBEdit;
    frmProduto: TfrmRelacionamento;
    Label3: TLabel;
    DBE_PDC_PREV_ENTREGA: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBE_PDC_VLR_UNITARIO: TDBEdit;
    DBE_PDC_VLR_FRETE: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBE_PDC_VLR_BRUTO: TDBEdit;
    DBE_PDC_VLR_DESCONTO: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBE_PDC_VLR_LIQUIDO: TDBEdit;
    DBE_PDC_VLR_TOTAL: TDBEdit;
    frmPessoa: TfrmRelacionamento;
    frmUnidade: TfrmRelacionamento;
    frmCondicao: TfrmRelacionamento;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MPedCompra: TMPedCompra;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UP_empresa, UP_departamento, UP_Produto,
  UP_Pessoa, UP_Unidade, Up_condicaop;

procedure TMPedCompra.FormShow(Sender: TObject);
begin
   inherited;
   frmEmpresa.procInicializar(dmPedCompra.PedidoCompraPDC_EMPRESA,
                              dmPedCompra.PedidoCompraEMP_RAZAO,
                              dmPedCompra.DPedidoCompra,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO '+
                              '   FROM EMPRESA A '+
                              '  WHERE A.EMP_COD = :EMP ',
                              P_empresa, TP_empresa, ['EMP'], ['PDC_EMPRESA'],
                              ['EMP_COD','EMP_RAZAO']);

   frmDepartamento.procInicializar(dmPedCompra.PedidoCompraPDC_DEPARTAMENTO,
                                   dmPedCompra.PedidoCompraDEP_NOME,
                                   dmPedCompra.DPedidoCompra,
                                   ' SELECT A.DEP_COD, '+
                                   '        A.DEP_NOME '+
                                   '   FROM DEPARTAMENTO A '+
                                   '  WHERE A.DEP_EMPRESAR = :EMP '+
                                   '    AND A.DEP_COD = :DPTO ',
                                   P_departamento, TP_departamento, ['EMP', 'DPTO'],
                                   ['PDC_EMPRESA','PDC_DEPARTAMENTO'],
                                   ['DEP_COD','DEP_NOME']);

   frmProduto.procInicializar(dmPedCompra.PedidoCompraPDC_PRODUTO,
                              dmPedCompra.PedidoCompraPRO_DESCRICAO,
                              dmPedCompra.DPedidoCompra,
                              ' SELECT A.PRO_CODIGO, '+
                              '        A.PRO_DESCRICAO '+
                              '   FROM PRODUTOS A '+
                             '  WHERE A.PRO_EMPRESA = :EMP '+
                              '    AND A.PRO_CODIGO = :PRO ',
                              Pproduto, TPproduto, ['EMP', 'PRO'],
                              ['PDC_EMPRESA','PDC_PRODUTO'],
                              ['PRO_CODIGO','PRO_DESCRICAO']);

   frmPessoa.procInicializar(dmPedCompra.PedidoCompraPDC_FORNECEDOR,
                             dmPedCompra.PedidoCompraPESS_NOME,
                             dmPedCompra.DPedidoCompra,
                             ' SELECT A.PESS_CODIGO, '+
                             '        A.PESS_NOME '+
                             '   FROM PESSOAS A '+
                             '  WHERE A.PESS_CODIGO = :COD ',
                             PPessoa, TPPessoa, ['COD'], ['PDC_FORNECEDOR'],
                             ['PESS_CODIGO','PESS_NOME']);

   frmUnidade.procInicializar(dmPedCompra.PedidoCompraPDC_UNMEDIDA,
                              dmPedCompra.PedidoCompraUN_DESCRICAO,
                              dmPedCompra.DPedidoCompra,
                              ' SELECT A.UN_CODIGO, '+
                              '        A.UN_DESCRICAO '+
                              '   FROM UNIDADE A '+
                              '  WHERE A.UN_CODIGO = :COD ',
                              PUnidade, TPUnidade, ['COD'], ['PDC_UNMEDIDA'],
                              ['UN_CODIGO','UN_DESCRICAO']);

   frmCondicao.procInicializar(dmPedCompra.PedidoCompraPDC_CONDICAO_PGTO,
                              dmPedCompra.PedidoCompraCDP_DESCRICAO,
                              dmPedCompra.DPedidoCompra,
                              ' SELECT A.CDP_CODIGO, '+
                              '        A.CDP_DESCRICAO '+
                              '   FROM CONDICAOPAGAMENTO A '+
                              '  WHERE A.CDP_CODIGO = :COD',
                              p_condicaopag, Tp_condicaopag, ['COD'], ['PDC_CONDICAO_PGTO'],
                              ['CDP_CODIGO','CDP_DESCRICAO']);

end;

end.
