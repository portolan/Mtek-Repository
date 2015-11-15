unit UDM_PedCompra;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery, Vcl.Forms, Winapi.Windows, Winapi.Messages;

type
   TStatusSolicitacao = (tssAberto, tssLiberado, tssRecusada);
   TStatusCotacao     = (tscAberto, tscFechado);
   TStatusPedCompra   = (tspAberto, tspBaixado);

const
   TNMStatusSolicitacao : Array [TStatusSolicitacao] of String = ('A','L','R');
   TDSStatusSolicitacao : Array [TStatusSolicitacao] of String = ('ABERTA','LIBERADA','RECUSADA');

   TNMStatusCotacao : Array [TStatusCotacao] of String = ('A','F');
   TDSStatusCotacao : Array [TStatusCotacao] of String = ('ABERTA','FECHADA');

   TNMStatusPedCompra : Array [TStatusPedCompra] of String = ('A','B');
   TDSStatusPedCompra : Array [TStatusPedCompra] of String = ('ABERTA','BAIXADO');

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
    PedidoCompraPDC_EMPRESA: TIntegerField;
    PedidoCompraPDC_CODIGO: TIntegerField;
    PedidoCompraPDC_DEPARTAMENTO: TIntegerField;
    PedidoCompraPDC_PRODUTO: TIBStringField;
    PedidoCompraPDC_FORNECEDOR: TIntegerField;
    PedidoCompraPDC_PREV_ENTREGA: TDateField;
    PedidoCompraPDC_VLR_FRETE: TIBBCDField;
    PedidoCompraPDC_VLR_UNITARIO: TIBBCDField;
    PedidoCompraPDC_VLR_BRUTO: TIBBCDField;
    PedidoCompraPDC_VLR_DESCONTO: TIBBCDField;
    PedidoCompraPDC_VLR_LIQUIDO: TIBBCDField;
    PedidoCompraPDC_VLR_TOTAL: TIBBCDField;
    PedidoCompraPDC_STATUS: TIBStringField;
    PedidoCompraPDC_DATA: TDateField;
    PedidoCompraPDC_QTD_TOTAL: TIBBCDField;
    PedidoCompraPDC_DATA_ENTREGA: TDateField;
    PedidoCompraPDC_OBS: TWideMemoField;
    PedidoCompraPDC_UNMEDIDA: TIntegerField;
    PedidoCompraPDC_COTACAO_ORIGEM: TIntegerField;
    PedidoCompraPDC_SOLICITICAO_ORIGEM: TIntegerField;
    PedidoCompraPDC_CONDICAO_PGTO: TIntegerField;
    PedidoCompraEMP_RAZAO: TIBStringField;
    PedidoCompraDEP_NOME: TIBStringField;
    PedidoCompraPESS_NOME: TIBStringField;
    PedidoCompraUN_DESCRICAO: TIBStringField;
    PedidoCompraCDP_DESCRICAO: TIBStringField;
    PedidoCompraPRO_DESCRICAO: TIBStringField;
    procedure SolicitacaoCompraAfterInsert(DataSet: TDataSet);
    procedure CotacaoAfterInsert(DataSet: TDataSet);
    procedure PedidoCompraAfterInsert(DataSet: TDataSet);
    procedure PedidoCompraPDC_QTD_TOTALValidate(Sender: TField);
    procedure PedidoCompraPDC_VLR_FRETEValidate(Sender: TField);
    procedure PedidoCompraPDC_VLR_UNITARIOValidate(Sender: TField);
    procedure PedidoCompraPDC_VLR_DESCONTOValidate(Sender: TField);
    procedure PedidoCompraPDC_VLR_LIQUIDOValidate(Sender: TField);
  private
    procedure procCalcularTotalPedCompra;

  public
    procedure procAlterarStatusSolicitacao(i_emp, i_cod : Integer; Status: TStatusSolicitacao; b_finalizarTransacao : Boolean = True);
    function funcGerarCotacao(AOwner: TComponent; i_empSolicitacao: Integer; i_codSolicitacao: Integer): Integer;
    function funcGerarSolicitacao(i_emp, i_dpto: Integer; c_produto : String; f_qtd : Double; dt_urgencia: TDateTime = 0; b_finalizaTransacao: Boolean = True): Integer;
    function funcFecharCotacao(i_emp, i_cotacao : Integer; i_fornecedor_vencedor : Integer): Integer;
    function funcRetornaCondicaoPagamentoPadrao : Integer;


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

function TdmPedCompra.funcFecharCotacao(i_emp, i_cotacao, i_fornecedor_vencedor: Integer): Integer;
var AuxQry, QryUpdate : TIBQuery;
    i_condicao_pgto : Integer;
    i_cod_pedCompra : Integer;
begin
   try
      AuxQry    := dmBanco.funcCriaQuery;
      QryUpdate := dmBanco.funcCriaQuery;
      try
         AuxQry.Close;
         AuxQry.SQL.Text := ' SELECT A.COT_EMPRESA, '+
                            '        A.COT_CODIGO, '+
                            '        A.COT_DEPARTAMENTO, '+
                            '        A.COT_PRODUTO, '+
                            '        A.COT_QTD, '+
                            '        A.COT_SOLICITACAO_ORIGEM, '+
                            '        B.FCT_VLR_UNITARIO, '+
                            '        B.FCT_VLR_FRETE, '+
                            '        B.FCT_DT_ENTREGA, '+
                            '        B.FCT_UND_MEDIDA '+
                            '   FROM COTACAO A '+
                            '  INNER JOIN FORNEC_COTACAO B ON A.COT_EMPRESA = B.FCT_EMPRESA '+
                            '                             AND A.COT_CODIGO = B.FCT_COTACAO '+
                            '  WHERE A.COT_EMPRESA = :EMP '+
                            '    AND A.COT_CODIGO = :COT '+
                            '    AND B.FCT_FORNECEDOR = :FORNC ';
         AuxQry.ParamByName('EMP').AsInteger   := i_emp;
         AuxQry.ParamByName('COT').AsInteger   := i_cotacao;
         AuxQry.ParamByName('FORNC').AsInteger := i_fornecedor_vencedor;
         AuxQry.Open;

         if AuxQry.IsEmpty then
            raise Exception.Create('Cotação não encontrada!');

         i_condicao_pgto := funcRetornaCondicaoPagamentoPadrao;
         if i_condicao_pgto = -1 then
            raise Exception.Create('Nenhuma condição de Pagamento cadastrada!');

         if not PedidoCompra.Active then
            PedidoCompra.Open;

         PedidoCompra.Append;
         PedidoCompraPDC_EMPRESA.AsInteger            := AuxQry.FieldByName('COT_EMPRESA').AsInteger;
         PedidoCompraPDC_DEPARTAMENTO.AsInteger       := AuxQry.FieldByName('COT_DEPARTAMENTO').AsInteger;
         PedidoCompraPDC_PRODUTO.AsString             := AuxQry.FieldByName('COT_PRODUTO').AsString;
         PedidoCompraPDC_FORNECEDOR.AsInteger         := i_fornecedor_vencedor;
         PedidoCompraPDC_PREV_ENTREGA.AsDateTime      := AuxQry.FieldByName('FCT_DT_ENTREGA').AsDateTime;
         PedidoCompraPDC_QTD_TOTAL.AsFloat            := AuxQry.FieldByName('COT_QTD').AsFloat;
         PedidoCompraPDC_VLR_FRETE.AsFloat            := AuxQry.FieldByName('FCT_VLR_FRETE').AsFloat;
         PedidoCompraPDC_VLR_UNITARIO.AsFloat         := AuxQry.FieldByName('FCT_VLR_UNITARIO').AsFloat;
         PedidoCompraPDC_UNMEDIDA.AsInteger           := AuxQry.FieldByName('FCT_UND_MEDIDA').AsInteger;
         PedidoCompraPDC_COTACAO_ORIGEM.AsInteger     := AuxQry.FieldByName('COT_CODIGO').AsInteger;
         PedidoCompraPDC_SOLICITICAO_ORIGEM.AsInteger := AuxQry.FieldByName('COT_SOLICITACAO_ORIGEM').AsInteger;
         PedidoCompraPDC_CONDICAO_PGTO.AsInteger      := i_condicao_pgto;
         PedidoCompra.Post;

         i_cod_pedCompra := PedidoCompraPDC_CODIGO.AsInteger;

         QryUpdate.Close;
         QryUpdate.SQL.Text := ' UPDATE FORNEC_COTACAO A '+
                               '    SET A.FCT_VENCEDOR = ''S'' '+
                               '  WHERE A.FCT_EMPRESA = :EMP '+
                               '    AND A.FCT_COTACAO = :COT '+
                               '    AND A.FCT_FORNECEDOR = :FORNEC ';
         QryUpdate.ParamByName('EMP').AsInteger    := i_emp;
         QryUpdate.ParamByName('COT').AsInteger    := i_cotacao;
         QryUpdate.ParamByName('FORNEC').AsInteger := i_fornecedor_vencedor;
         QryUpdate.ExecSQL;

         QryUpdate.Close;
         QryUpdate.SQL.Text := ' UPDATE COTACAO A '+
                               '    SET A.COT_STATUS  = :STATUS '+
                               '  WHERE A.COT_EMPRESA = :EMP '+
                               '    AND A.COT_CODIGO  = :COT ';
         QryUpdate.ParamByName('EMP').AsInteger    := i_emp;
         QryUpdate.ParamByName('COT').AsInteger    := i_cotacao;
         QryUpdate.ParamByName('STATUS').AsString  := TNMStatusCotacao[tscFechado];
         QryUpdate.ExecSQL;

         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Commit;

         Result := i_cod_pedCompra;

         Application.MessageBox(PChar('Cotação fechada com sucesso! Pedido de Compra Gerado: '+ IntToStr(i_cod_pedCompra)),
                     'Aviso ao Usuário', mb_ok+mb_iconinformation);

      finally
         FreeAndNil(AuxQry);
         FreeAndNil(QryUpdate);
      end;
   except
      on E: Exception do
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Rollback;

         Application.Messagebox(PChar('Erro ao fechar Cotação!'+slineBreak+
                     'Descrição do Erro: '+e.Message),'Aviso ao Usuário',mb_iconerror+mb_ok);

      end;
   end;

end;

function TdmPedCompra.funcGerarCotacao(AOwner: TComponent; i_empSolicitacao, i_codSolicitacao: Integer): Integer;
var AuxQry : TIBQuery;
    b_gravou : Boolean;
    i_cod_cotacao : Integer;
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

         if not Cotacao.Active then
            Cotacao.Open;

         Cotacao.Insert;
         CotacaoCOT_EMPRESA.AsInteger            := i_empSolicitacao;
         CotacaoCOT_DESCRICAO.AsString           := 'REFERENTE SOLICITAÇÃO DE COMPRA COD: '+IntToStr(i_codSolicitacao);
         CotacaoCOT_DEPARTAMENTO.AsInteger       := AuxQry.FieldByName('SOL_DEPARTAMENTO').AsInteger;
         CotacaoCOT_PRODUTO.AsString             := AuxQry.FieldByName('SOL_PRODUTO').AsString;
         CotacaoCOT_QTD.AsFloat                  := AuxQry.FieldByName('SOL_QTD').AsFloat;
         CotacaoCOT_SOLICITACAO_ORIGEM.AsInteger := i_codSolicitacao;
         Cotacao.Post;

         i_cod_cotacao := CotacaoCOT_CODIGO.AsInteger;

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

            Result := i_cod_cotacao;

            Application.MessageBox(pChar('Operação realizada com sucesso! Cotação gerada: '+IntToStr(i_cod_cotacao)),
               'Aviso ao Usuário', mb_ok+mb_iconinformation);
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

function TdmPedCompra.funcGerarSolicitacao(i_emp, i_dpto: Integer; c_produto: String; f_qtd: Double; dt_urgencia: TDateTime;
b_finalizaTransacao: Boolean): Integer;
var i_cod_solicitacao : Integer;
begin
   Result := -1;

   try
      if not SolicitacaoCompra.Active then
         SolicitacaoCompra.Open;

      SolicitacaoCompra.Insert;
      SolicitacaoCompraSOL_EMPRESA.AsInteger        := i_emp;
      SolicitacaoCompraSOL_DEPARTAMENTO.AsInteger   := i_dpto;
      SolicitacaoCompraSOL_PRODUTO.AsString         := c_produto;
      SolicitacaoCompraSOL_QTD.AsFloat              := f_qtd;

      if dt_urgencia > 0 then
         SolicitacaoCompraSOL_DATA_URGENCIA.AsDateTime := dt_urgencia;

      SolicitacaoCompra.Post;

      i_cod_solicitacao := SolicitacaoCompraSOL_CODIGO.AsInteger;

      if b_finalizaTransacao then
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Commit;
      end;

      Result := i_cod_solicitacao;
      Application.MessageBox(pChar('Operação realizada com sucesso! Solicitação Gerada: '+IntToStr(i_cod_solicitacao)),
                  'Aviso ao Usuário', mb_ok+mb_iconinformation);
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

function TdmPedCompra.funcRetornaCondicaoPagamentoPadrao: Integer;
var AuxQry : TIBQuery;
begin
   Result := -1;
   try
      AuxQry.Close;
      AuxQry.SQL.Text := ' SELECT FIRST 1 A.CDP_CODIGO '+
                         '   FROM CONDICAOPAGAMENTO A ';
      AuxQry.Open;

      if not AuxQry.IsEmpty then
         Result := AuxQry.FieldByName('CDP_CODIGO').AsInteger;
   finally
      FreeAndNil(AuxQry);
   end;
end;

procedure TdmPedCompra.PedidoCompraAfterInsert(DataSet: TDataSet);
begin
   PedidoCompraPDC_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQPEDCOMPRA');
   PedidoCompraPDC_DATA.AsDateTime  := Now;
   PedidoCompraPDC_STATUS.AsString  := TNMStatusPedCompra[tspAberto];
end;

procedure TdmPedCompra.PedidoCompraPDC_QTD_TOTALValidate(Sender: TField);
begin
   if Sender.AsFloat <= 0 then
      raise Exception.Create('Quantidade Inválida!');

   procCalcularTotalPedCompra;
end;

procedure TdmPedCompra.PedidoCompraPDC_VLR_DESCONTOValidate(Sender: TField);
begin
   procCalcularTotalPedCompra;
end;

procedure TdmPedCompra.PedidoCompraPDC_VLR_FRETEValidate(Sender: TField);
begin
   if Sender.AsFloat < 0 then
      raise Exception.Create('Valor de Frete Inválido!');

   procCalcularTotalPedCompra;
end;

procedure TdmPedCompra.PedidoCompraPDC_VLR_LIQUIDOValidate(Sender: TField);
begin
   if Sender.AsFloat < 0 then
      raise Exception.Create('Vlr. Líquido inválido!');
end;

procedure TdmPedCompra.PedidoCompraPDC_VLR_UNITARIOValidate(Sender: TField);
begin
   if Sender.AsFloat < 0 then
      raise Exception.Create('Vlr. Unitário Inválido!');

   procCalcularTotalPedCompra;
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

procedure TdmPedCompra.procCalcularTotalPedCompra;
begin
   PedidoCompraPDC_VLR_BRUTO.AsFloat   := PedidoCompraPDC_QTD_TOTAL.AsFloat * PedidoCompraPDC_VLR_UNITARIO.AsFloat;
   PedidoCompraPDC_VLR_LIQUIDO.AsFloat := PedidoCompraPDC_VLR_BRUTO.AsFloat - PedidoCompraPDC_VLR_DESCONTO.AsFloat;
   PedidoCompraPDC_VLR_TOTAL.AsFloat   := PedidoCompraPDC_VLR_LIQUIDO.AsFloat + PedidoCompraPDC_VLR_FRETE.AsFloat;
end;

procedure TdmPedCompra.SolicitacaoCompraAfterInsert(DataSet: TDataSet);
begin
   SolicitacaoCompraSOL_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQSOLCOMPRA');
   SolicitacaoCompraSOL_STATUS.AsString  := TNMStatusSolicitacao[tssAberto];
   SolicitacaoCompraSOL_DATA.AsDateTime  := Now;
end;

end.
