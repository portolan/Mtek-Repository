unit UDM_PedCompra;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery, Vcl.Forms, Winapi.Windows, Winapi.Messages;

type
   TStatusSolicitacao = (tssAberto, tssLiberado, tssRecusada);
   TStatusCotacao     = (tscAberto, tscFechado);

const
   TNMStatusSolicitacao : Array [TStatusSolicitacao] of String = ('A','L','R');
   TDSStatusSolicitacao : Array [TStatusSolicitacao] of String = ('ABERTA','LIBERADA','RECUSADA');

   TNMStatusCotacao : Array [TStatusCotacao] of String = ('A','F');
   TDSStatusCotacao : Array [TStatusCotacao] of String = ('ABERTA','FECHADA');

type
  TdmPedCompra = class(TDataModule)
    SolicitacaoCompra: TIBQuery;
    DSolicitacaoCompra: TDataSource;
    USolicitacaoCompra: TIBUpdateSQL;
    Cotacao: TIBQuery;
    DCotacao: TDataSource;
    UCotacao: TIBUpdateSQL;
    FornecedorCotacao: TIBQuery;
    DFornecedorCotacao: TDataSource;
    UFornecedorCotacao: TIBUpdateSQL;
    PedidoCompra: TIBQuery;
    DPedidoCompra: TDataSource;
    UPedidoCompra: TIBUpdateSQL;
    SolicitacaoCompraSOL_EMPRESA: TIntegerField;
    SolicitacaoCompraSOL_CODIGO: TIntegerField;
    SolicitacaoCompraSOL_DEPARTAMENTO: TIntegerField;
    SolicitacaoCompraSOL_PRODUTO: TIBStringField;
    SolicitacaoCompraSOL_QTD: TIBBCDField;
    SolicitacaoCompraSOL_DATA: TDateField;
    SolicitacaoCompraSOL_DATA_URGENCIA: TDateField;
    SolicitacaoCompraSOL_OBS: TWideMemoField;
    SolicitacaoCompraSOL_DATA_LIBERACAO: TDateField;
    SolicitacaoCompraSOL_STATUS: TIBStringField;
    SolicitacaoCompraDEP_NOME: TIBStringField;
    SolicitacaoCompraPRO_DESCRICAO: TIBStringField;
    CotacaoCOT_EMPRESA: TIntegerField;
    CotacaoCOT_CODIGO: TIntegerField;
    CotacaoCOT_DEPARTAMENTO: TIntegerField;
    CotacaoCOT_DESCRICAO: TIBStringField;
    CotacaoCOT_STATUS: TIBStringField;
    CotacaoCOT_DATA: TDateField;
    CotacaoCOT_OBS: TWideMemoField;
    CotacaoCOT_PRODUTO: TIBStringField;
    CotacaoCOT_QTD: TIBBCDField;
    CotacaoCOT_SOLICITACAO_ORIGEM: TIntegerField;
    CotacaoEMP_RAZAO: TIBStringField;
    CotacaoDEP_NOME: TIBStringField;
    CotacaoPRO_DESCRICAO: TIBStringField;
    SolicitacaoCompraEMP_RAZAO: TIBStringField;
    UPessoa: TIBUpdateSQL;
    Pessoa: TIBQuery;
    DSPessoa: TDataSource;
    PessoaPESS_CODIGO: TIntegerField;
    PessoaPESS_NOME: TIBStringField;
    PessoaPESS_TIPO: TIBStringField;
    PessoaPESS_APELIDO: TIBStringField;
    PessoaPESS_CONTATO: TIBStringField;
    PessoaPESS_TELCONTATO: TIBStringField;
    PessoaPESS_TEL1: TIBStringField;
    PessoaPESS_TEL2: TIBStringField;
    PessoaPESS_TEL3: TIBStringField;
    PessoaPESS_FAX: TIBStringField;
    PessoaPESS_RAMAL: TIntegerField;
    PessoaPESS_CNPJ: TIBStringField;
    PessoaPESS_CPF: TIBStringField;
    PessoaPESS_RG: TIBStringField;
    PessoaPESS_INSCESTADUAL: TIBStringField;
    PessoaPESS_INSCMUNICIPAL: TIBStringField;
    PessoaPESS_EMAIL: TIBStringField;
    PessoaPESS_DTCADASTRO: TDateTimeField;
    PessoaPESS_LOGRADOURO: TIBStringField;
    PessoaPESS_BAIRRO: TIBStringField;
    PessoaPESS_COMPLEMENTO: TIBStringField;
    PessoaPESS_NR: TIBStringField;
    PessoaPESS_CIDADE: TIBStringField;
    PessoaPESS_UF: TIBStringField;
    PessoaPESS_PAIS: TIBStringField;
    PessoaPESS_FISICOJURIDICO: TIBStringField;
    FornecedorCotacaoFCT_EMPRESA: TIntegerField;
    FornecedorCotacaoFCT_COTACAO: TIntegerField;
    FornecedorCotacaoFCT_FORNECEDOR: TIntegerField;
    FornecedorCotacaoFCT_VENCEDOR: TIBStringField;
    FornecedorCotacaoFCT_VLR_UNITARIO: TIBBCDField;
    FornecedorCotacaoFCT_VLR_FRETE: TIBBCDField;
    FornecedorCotacaoFCT_DT_ENTREGA: TDateField;
    FornecedorCotacaoFCT_UND_MEDIDA: TIntegerField;
    FornecedorCotacaoUN_DESCRICAO: TIBStringField;
    FornecedorCotacaoPESS_NOME: TIBStringField;
    FornecedorCotacaoPESS_TELCONTATO: TIBStringField;
    FornecedorCotacaoPESS_EMAIL: TIBStringField;
    procedure SolicitacaoCompraAfterInsert(DataSet: TDataSet);
    procedure CotacaoAfterInsert(DataSet: TDataSet);
  private

  public
    procedure procGerarSolicitacao(i_emp, i_dpto: Integer; c_produto : String; f_qtd : Double; dt_urgencia: TDateTime = 0);
    procedure procAlterarStatusSolicitacao(i_emp, i_cod : Integer; Status: TStatusSolicitacao; b_finalizarTransacao : Boolean = True);
    function funcGerarCotacao(AOwner: TComponent; i_empSolicitacao: Integer; i_codSolicitacao: Integer): Integer;
    function funcGerarSolicitacao(i_emp, i_dpto: Integer; c_produto : String; f_qtd : Double; dt_urgencia: TDateTime = 0; b_finalizaTransacao: Boolean = True): Integer;
  end;

var
  dmPedCompra: TdmPedCompra;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UM_Cotacao;


{$R *.dfm}

procedure TdmPedCompra.CotacaoAfterInsert(DataSet: TDataSet);
begin
   CotacaoCOT_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQCOTACAO');
   CotacaoCOT_DATA.AsDateTime  := Now;
   CotacaoCOT_STATUS.AsString  := TNMStatusCotacao[tscAberto];
end;

function TdmPedCompra.funcGerarCotacao(AOwner: TComponent; i_empSolicitacao, i_codSolicitacao: Integer): Integer;
var AuxQry : TIBQuery;
    b_gravou : Boolean;
begin
   Result := -1;

   try
      AuxQry := dmBanco.funcCriaQuery;
      try
         AuxQry.Close;
         AuxQry.SQL.Text := ' SELECT A.SOL_DEPARTAMENTO, '+
                            '        A.SOL_PRODUTO, '+
                            '        A.SOL_QTD '+
                            '   FROM SOLICITACAO_COMPRA A '+
                            '  WHERE A.SOL_EMPRESA = :EMP '+
                            '    AND A.SOL_CODIGO = :COD ';
         AuxQry.ParamByName('EMP').AsInteger := i_empSolicitacao;
         AuxQry.ParamByName('COD').AsInteger := i_codSolicitacao;
         AuxQry.Open;

         if AuxQry.IsEmpty then
            Exit;

         Cotacao.Insert;
         CotacaoCOT_EMPRESA.AsInteger            := i_empSolicitacao;
         CotacaoCOT_DESCRICAO.AsString           := 'REFERENTE SOLICITAÇÃO DE COMPRA COD: '+IntToStr(i_codSolicitacao);
         CotacaoCOT_DEPARTAMENTO.AsInteger       := AuxQry.FieldByName('SOL_DEPARTAMENTO').AsInteger;
         CotacaoCOT_PRODUTO.AsString             := AuxQry.FieldByName('SOL_PRODUTO').AsString;
         CotacaoCOT_QTD.AsFloat                  := AuxQry.FieldByName('SOL_QTD').AsFloat;
         CotacaoCOT_SOLICITACAO_ORIGEM.AsInteger := i_codSolicitacao;
         Cotacao.Post;

         dmPedCompra.procAlterarStatusSolicitacao(i_empSolicitacao,
                                                  i_codSolicitacao,
                                                  tssLiberado,
                                                  False);

         Cotacao.Edit;
         MCotacao := TMCotacao.Create(AOwner);
         try
            MCotacao.b_finalizaTransacao := False;
            MCotacao.QryPadrao           := Cotacao;
            MCotacao.ShowModal;
            b_gravou := MCotacao.b_gravou;
         finally
            FreeAndNil(MCotacao);
         end;

         if b_gravou then
         begin
            if dmBanco.TBanco.InTransaction then
               dmBanco.TBanco.Commit;

            Application.MessageBox('Operação realizada com sucesso!','Aviso ao Usuário', mb_ok+mb_iconinformation);
         end
         else
            raise Exception.Create('Operação Abortada pelo Usuário!');
      finally
         FreeAndNil(AuxQry);
      end;
   except
      on E: Exception do
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Rollback;

         Application.Messagebox(PChar('Erro ao gerar Cotação!'+slineBreak+
                     'Descrição do Erro: '+e.Message),'Aviso ao Usuário',mb_iconerror+mb_ok);
      end;
   end;
end;

function TdmPedCompra.funcGerarSolicitacao(i_emp, i_dpto: Integer; c_produto: String; f_qtd: Double;
dt_urgencia: TDateTime; b_finalizaTransacao: Boolean): Integer;
begin
   try
      SolicitacaoCompra.Insert;
      SolicitacaoCompraSOL_EMPRESA.AsInteger        := i_emp;
      SolicitacaoCompraSOL_DEPARTAMENTO.AsInteger   := i_dpto;
      SolicitacaoCompraSOL_PRODUTO.AsString         := c_produto;
      SolicitacaoCompraSOL_QTD.AsFloat              := f_qtd;

      if dt_urgencia > 0 then
         SolicitacaoCompraSOL_DATA_URGENCIA.AsDateTime := dt_urgencia;

      SolicitacaoCompra.Post;

      if b_finalizaTransacao then
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Commit;
      end;

      Application.MessageBox(pChar('Operação realizada com sucesso!'),'Aviso ao Usuário', mb_ok+mb_iconinformation);
   except
      on E: Exception do
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Rollback;

         Application.Messagebox(PChar('Erro ao Gerar Solicitação de Compra!' + sLineBreak+
                                'Descrição do Erro: "'+ e.message + '"'),'Aviso ao Usuário',mb_iconerror+mb_ok);

      end;
   end;
end;

procedure TdmPedCompra.procAlterarStatusSolicitacao(i_emp, i_cod: Integer; Status: TStatusSolicitacao;
b_finalizarTransacao:Boolean);
var AuxQry : TIBQuery;
begin
   AuxQry := dmBanco.funcCriaQuery;
   try
      AuxQry.Close;
      AuxQry.SQL.Text := ' UPDATE SOLICITACAO_COMPRA A '+
                         '    SET A.SOL_STATUS = :STATUS '+
                         dmBanco.iif(Status = tssLiberado,
                         '        A.SOL_DATA_LIBERACAO = CURRENT_DATE ', '')+
                         '  WHERE A.SOL_EMPRESA = :EMP '+
                         '    AND A.SOL_CODIGO = :COD ';
      AuxQry.ParamByName('EMP').AsInteger    := i_emp;
      AuxQry.ParamByName('COD').AsInteger    := i_cod;
      AuxQry.ParamByName('STATUS').AsString := TNMStatusSolicitacao[Status];
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

procedure TdmPedCompra.procGerarSolicitacao(i_emp, i_dpto: Integer;
  c_produto: String; f_qtd: Double; dt_urgencia: TDateTime);
begin

end;

procedure TdmPedCompra.SolicitacaoCompraAfterInsert(DataSet: TDataSet);
begin
   SolicitacaoCompraSOL_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQSOLCOMPRA');
   SolicitacaoCompraSOL_STATUS.AsString  := TNMStatusSolicitacao[tssAberto];
   SolicitacaoCompraSOL_DATA.AsDateTime  := Now;
end;

end.
