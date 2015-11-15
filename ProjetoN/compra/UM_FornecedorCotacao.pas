unit UM_FornecedorCotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, ufrm_Relacionamento, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TMFornecedorCotacao = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    frmPessoa: TfrmRelacionamento;
    frmUnidade: TfrmRelacionamento;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure frmPessoaDBE_CAMPOExit(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure procChamaTela(AOwner : TComponent; b_finalizaTransacao : Boolean = False);
  end;

var
  MFornecedorCotacao: TMFornecedorCotacao;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UP_Pessoa, UP_Unidade;

procedure TMFornecedorCotacao.FormShow(Sender: TObject);
begin
   inherited;
   frmPessoa.procInicializar(dmPedCompra.FornecedorCotacaoFCT_FORNECEDOR,
                             dmPedCompra.FornecedorCotacaoPESS_NOME,
                             dmPedCompra.DFornecedorCotacao,
                             ' SELECT A.PESS_CODIGO, '+
                             '        A.PESS_NOME '+
                             '   FROM PESSOAS A '+
                             '  WHERE A.PESS_CODIGO = :COD ',
                             PPessoa, TPPessoa, ['COD'], ['FCT_FORNECEDOR'],
                             ['PESS_CODIGO','PESS_NOME']);

   frmUnidade.procInicializar(dmPedCompra.FornecedorCotacaoFCT_UND_MEDIDA,
                              dmPedCompra.FornecedorCotacaoUN_DESCRICAO,
                              dmPedCompra.DFornecedorCotacao,
                              ' SELECT A.UN_CODIGO, '+
                              '        A.UN_DESCRICAO '+
                              '   FROM UNIDADE A '+
                              '  WHERE A.UN_CODIGO = :COD ',
                              PUnidade, TPUnidade, ['COD'], ['FCT_UND_MEDIDA'],
                              ['UN_CODIGO','UN_DESCRICAO']);


   if dmPedCompra.FornecedorCotacao.State = dsEdit then
   begin
      frmPessoa.DBE_CAMPO.ReadOnly := True;
      frmPessoa.DBE_CAMPO.Color    := clBtnface;
      frmPessoa.DBE_CAMPO.TabStop  := False;
      frmPessoa.DBE_CAMPO.OnExit   := Nil;
   end;
end;

procedure TMFornecedorCotacao.frmPessoaDBE_CAMPOExit(Sender: TObject);
var AuxQry : TIBQuery;
begin
   inherited;
   frmPessoa.DBE_CAMPOExit(Sender);
   AuxQry := dmBanco.funcCriaQuery;
   try
      AuxQry.Close;
      AuxQry.SQL.Text := ' SELECT FIRST 1 1 '+
                         '   FROM FORNEC_COTACAO A '+
                         '  WHERE A.FCT_EMPRESA = :EMP '+
                         '    AND A.FCT_COTACAO = :COT '+
                         '    AND A.FCT_FORNECEDOR = :FORNC ';
      AuxQry.ParamByName('EMP').AsInteger   := dmPedCompra.CotacaoCOT_EMPRESA.AsInteger;
      AuxQry.ParamByName('COT').AsInteger   := dmPedCompra.CotacaoCOT_CODIGO.AsInteger;
      AuxQry.ParamByName('FORNC').AsInteger := dmPedCompra.FornecedorCotacaoFCT_FORNECEDOR.AsInteger;
      AuxQry.Open;

      if not AuxQry.IsEmpty then
      begin
         dmPedCompra.FornecedorCotacaoFCT_FORNECEDOR.Clear;
         dmPedCompra.FornecedorCotacaoPESS_NOME.Clear;

         if frmPessoa.DBE_CAMPO.CanFocus then
            frmPessoa.DBE_CAMPO.SetFocus;
      end;
   finally
      FreeAndNil(AuxQry);
   end;
end;

class procedure TMFornecedorCotacao.procChamaTela(AOwner: TComponent; b_finalizaTransacao: Boolean);
begin
   MFornecedorCotacao := TMFornecedorCotacao.Create(AOwner);
   try
      MFornecedorCotacao.QryPadrao           := dmPedCompra.FornecedorCotacao;
      MFornecedorCotacao.b_finalizaTransacao := b_finalizaTransacao;
      MFornecedorCotacao.ShowModal;
   finally
      FreeAndNil(MFornecedorCotacao);
   end;
end;

end.
