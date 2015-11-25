unit UEstoque;

interface

uses System.SysUtils, System.Variants, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBUpdateSQL, Vcl.Dialogs;

function funcBaixaEstoque(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer; qtd:double; tipo: String): Boolean;
function funcVerificaEstoque(codEmpresa : integer; codProduto : String; qtd : double; var codBloco, codPrateleira, codEstoque : integer):double;
function funcCalcCustoMedio(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer):double;
function funcContaBloco(codEmpresa, codBloco : integer):integer;
function funcContaPrateleiraPorBloco(codEmpresa, codBloco : integer):integer;
function funcContaEstoquePorPrateleira(codEmpresa, codBloco, codPrateleira : integer):integer;
function funcGeraMovimentacaoEstoque(codEmpresa, codBloco, codPrateleira, codEstoque : integer; codProduto : String;
                                     qtd : double; obs : String; vlrFinanceiro : double; pedCompraOrigem : integer; categoria : integer):boolean;
function funcNovoProdutoEstoque(codEmpresa, codBloco, codPrateleira : integer; codProduto : String; status : String;
                                     qtd, qtdmin, qtdmax, customedio : double; categoria : integer;  obs, chave : String; vlrFinanceiro : double; pedCompraOrigem : integer):boolean;
function funcExisteProdutoNoEstoque(codEmpresa, codBloco, codPrateleira : integer; codProduto : String):boolean;
function funcEstoqueBaixo(codEmpresa, codBloco, codPrateleira, codEstoque : integer; codProduto : String; var i_qtd, i_qtdmin : double):boolean;
function funcCriaQuery:TIBQuery;

implementation

uses UDM_Estoque, dm000;

function funcBaixaEstoque(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer; qtd: double; tipo: String): Boolean;
var QryDinamica : TIBQuery;
    i_qtd_estoque, i_qtd_min, i_qtd_max : double;
begin
    Result := false;
    try
        QryDinamica := funcCriaQuery;
        try
            QryDinamica.Close;
            QryDinamica.SQL.Text := ' SELECT ESTOQ_QTD, ESTOQ_QTDMIN, ESTOQ_QTDMAX '+
                                    '   FROM ESTOQUE '+
                                    '  WHERE ESTOQ_EMPRESA = :COD_EMPRESA '+
                                    '    AND ESTOQ_PRODUTO = :COD_PRODUTO '+
                                    '    AND ESTOQ_BLOCO = :COD_BLOCO '+
                                    '    AND ESTOQ_PRATELEIRA = :COD_PRATELEIRA '+
                                    '    AND ESTOQ_CODIGO = :COD_ESTOQUE';
            QryDinamica.ParamByName('COD_EMPRESA').AsInteger := codEmpresa;
            QryDinamica.ParamByName('COD_PRODUTO').AsString  := codProduto;
            QryDinamica.ParamByName('COD_BLOCO').AsInteger := codBloco;
            QryDinamica.ParamByName('COD_PRATELEIRA').AsInteger := codPrateleira;
            QryDinamica.ParamByName('COD_ESTOQUE').AsInteger := codEstoque;
            QryDinamica.Open;

            i_qtd_estoque := QryDinamica.FieldByName('ESTOQ_QTD').AsFloat;
            i_qtd_min := QryDinamica.FieldByName('ESTOQ_QTDMIN').AsFloat;
            i_qtd_max := QryDinamica.FieldByName('ESTOQ_QTDMAX').AsFloat;

            if UpperCase(tipo) = 'E' then
            begin
                if (i_qtd_estoque + qtd) <= i_qtd_max then
                begin
                    QryDinamica.Close;
                    QryDinamica.SQL.Text := ' UPDATE ESTOQUE '+
                                            '    SET ESTOQ_QTD = ESTOQ_QTD + :QTD '+
                                            '  WHERE ESTOQ_EMPRESA = :COD_EMPRESA '+
                                            '    AND ESTOQ_PRODUTO = :COD_PRODUTO '+
                                            '    AND ESTOQ_BLOCO = :COD_BLOCO '+
                                            '    AND ESTOQ_PRATELEIRA = :COD_PRATELEIRA '+
                                            '    AND ESTOQ_CODIGO = :COD_ESTOQUE';
                    QryDinamica.ParamByName('COD_EMPRESA').AsInteger := codEmpresa;
                    QryDinamica.ParamByName('COD_PRODUTO').AsString  := codProduto;
                    QryDinamica.ParamByName('COD_BLOCO').AsInteger := codBloco;
                    QryDinamica.ParamByName('COD_PRATELEIRA').AsInteger := codPrateleira;
                    QryDinamica.ParamByName('COD_ESTOQUE').AsInteger := codEstoque;
                    QryDinamica.ParamByName('QTD').AsFloat         := qtd;
                    QryDinamica.ExecSQL;
                end
                else
                    raise Exception.Create('Estoque não pode ultrapassar o limite!');
            end
            else if UpperCase(tipo) = 'S' then
            begin
                if (i_qtd_estoque - qtd) >= 0 then
                begin
                    QryDinamica.Close;
                    QryDinamica.SQL.Text := ' UPDATE ESTOQUE '+
                                            '    SET ESTOQ_QTD = ESTOQ_QTD - :QTD ' +
                                            '  WHERE ESTOQ_EMPRESA = :COD_EMPRESA '+
                                            '    AND ESTOQ_PRODUTO = :COD_PRODUTO '+
                                            '    AND ESTOQ_BLOCO = :COD_BLOCO '+
                                            '    AND ESTOQ_PRATELEIRA = :COD_PRATELEIRA '+
                                            '    AND ESTOQ_CODIGO = :COD_ESTOQUE';
                    QryDinamica.ParamByName('COD_EMPRESA').AsInteger := codEmpresa;
                    QryDinamica.ParamByName('COD_PRODUTO').AsString  := codProduto;
                    QryDinamica.ParamByName('COD_BLOCO').AsInteger := codBloco;
                    QryDinamica.ParamByName('COD_PRATELEIRA').AsInteger := codPrateleira;
                    QryDinamica.ParamByName('COD_ESTOQUE').AsInteger := codEstoque;
                    QryDinamica.ParamByName('QTD').AsFloat         := qtd;
                    QryDinamica.ExecSQL;
                end
                else
                    raise Exception.Create('Estoque não pode ser negativo!');
            end
            else
                raise Exception.Create('Operação Inválida!');
        finally
            FreeAndNil(QryDinamica);
        end;
    except
        on E: Exception do
        begin
           raise Exception.Create('Ocorreu um erro ao baixar estoque:'+sLineBreak+sLineBreak+
                                  e.Message);
        end;
    end;
    Result := true;
end;

function funcVerificaEstoque(codEmpresa : integer; codProduto : String; qtd : double; var codBloco, codPrateleira, codEstoque : integer):double;
var
    qryDin : TIBQuery;
begin
    try
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select first 1 estoq_bloco, estoq_prateleira, estoq_codigo, estoq_qtd from estoque ' +
                           ' where estoq_empresa = :codEmpresa and ' +
                           ' estoq_produto = :codProduto and ' +
                           ' abs(estoq_qtdmax - estoq_qtd) >= :qtd';
        qryDin.ParamByName('codEmpresa').AsInteger := codEmpresa;
        qryDin.ParamByName('codProduto').AsString  := codProduto;
        qryDin.ParamByName('qtd').AsFloat          := qtd;
        qryDin.Open;

        codBloco        := qryDin.FieldByName('estoq_bloco').AsInteger;
        codPrateleira   := qryDin.FieldByName('estoq_prateleira').AsInteger;
        codEstoque      := qryDin.FieldByName('estoq_codigo').AsInteger;
        Result             := qryDin.FieldByName('estoq_qtd').AsFloat;
    except on E: Exception do
        raise Exception.Create('Erro ao verificar estoque!');
    end;
end;


function funcCalcCustoMedio(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer):double;
var
    qryDin                 : TIBQuery;
    d_qtd, d_vlrFinanceiro, d_customedio : double;
begin
    try
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text :=  'select sum(em_qtd) as qtd from estoq_movimento' +
                            ' where em_empresa = '       + IntToStr(codEmpresa) +
                            ' and em_produto = '       + codProduto +
                            ' and em_bloco = '         + IntToStr(codBloco) +
                            ' and em_prateleira = '    + IntToStr(codPrateleira) +
                            ' and em_estoque = '       + IntToStr(codEstoque);
        qryDin.Open;
        d_qtd := qryDin.FieldByName('qtd').AsFloat;

        qryDin.Close;
        qryDin.SQL.Text :=  'select sum(em_valor_financeiro) as vf from estoq_movimento' +
                            ' where em_empresa = '       + IntToStr(codEmpresa) +
                            ' and em_produto = '       + codProduto +
                            ' and em_bloco = '         + IntToStr(codBloco) +
                            ' and em_prateleira = '    + IntToStr(codPrateleira) +
                            ' and em_estoque = '       + IntToStr(codEstoque);
        qryDin.Open;
        d_vlrFinanceiro := qryDin.FieldByName('vf').AsFloat;

        if (d_qtd <> 0) and (d_vlrFinanceiro <> 0) then 
            d_customedio := d_vlrFinanceiro / d_qtd
        else
            d_customedio := 0;

        qryDin.Close;
        qryDin.SQL.Text :=  'update estoque set estoq_customedio = '    + FloatToStr(d_customedio) +
                            ' where estoq_empresa = '                       + IntToStr(codEmpresa) +
                            ' and estoq_produto = '                       + codProduto +
                            ' and estoq_bloco = '                         + IntToStr(codBloco) +
                            ' and estoq_prateleira = '                    + IntToStr(codPrateleira) +
                            ' and estoq_codigo = '                       + IntToStr(codEstoque);
        qryDin.Open;


        result := d_customedio;

    except on E: Exception do
        raise Exception.Create('Não foi possível Calcular Custo Médio!');
    end;
end;

function funcContaBloco(codEmpresa, codBloco : integer):integer;
var
    qryDin : TIBQuery;
begin
    qryDin := funcCriaQuery;
    qryDin.Close;
    qryDin.SQL.Text := 'select count(1) as qtd from estoque where '+
                       'estoque_empresa = :codEmpresa and estoq_bloco = :codBloco';
    qryDin.ParamByName('codEmpresa').Value := codEmpresa;
    qryDin.ParamByName('codBloco').Value   := codBloco;
    qryDin.Open;
    Result := qryDin.FieldByName('qtd').AsInteger;
end;

function funcContaPrateleiraPorBloco(codEmpresa, codBloco : integer):integer;
var
    qryDin : TIBQuery;
begin
    qryDin := funcCriaQuery;
    qryDin.Close;
    qryDin.SQL.Text := 'select count(1) as qtd from prateleira where '+
                       'prat_empresa = :codEmpresa and prat_bloco = :codBloco';
    qryDin.ParamByName('codEmpresa').Value   := codEmpresa;
    qryDin.ParamByName('codBloco').Value     := codBloco;
    qryDin.Open;
    Result := qryDin.FieldByName('qtd').AsInteger;
end;

function funcContaEstoquePorPrateleira(codEmpresa, codBloco, codPrateleira : integer):integer;
var
    qryDin : TIBQuery;
begin
    qryDin := funcCriaQuery;
    qryDin.Close;
    qryDin.SQL.Text := 'select count(1) as qtd from estoque where '+
                       'estoq_empresa = :codEmpresa and estoq_bloco = :codBloco '+
                       ' and estoq_prateleira = :codPrateleira';
    qryDin.ParamByName('codEmpresa').Value    := codEmpresa;
    qryDin.ParamByName('codBloco').Value      := codBloco;
    qryDin.ParamByName('codPrateleira').Value := codPrateleira;
    qryDin.Open;
    Result := qryDin.FieldByName('qtd').AsInteger;
end;

function funcExisteProdutoNoEstoque(codEmpresa, codBloco, codPrateleira : integer; codProduto : String):boolean;
var
    qryDin : TIBQuery;
begin
    qryDin := funcCriaQuery;
    qryDin.Close;
    qryDin.SQL.Text := 'select count(1) as qtd from estoque where '+
                       'estoq_empresa = :codEmpresa and estoq_bloco = :codBloco '+
                       ' and estoq_prateleira = :codPrateleira'+
                       ' and estoq_produto = :codProduto';
    qryDin.ParamByName('codEmpresa').Value    := codEmpresa;
    qryDin.ParamByName('codBloco').Value      := codBloco;
    qryDin.ParamByName('codPrateleira').Value := codPrateleira;
    qryDin.ParamByName('codProduto').Value    := codProduto;
    qryDin.Open;
    Result := qryDin.FieldByName('qtd').AsInteger > 0;
end;

function funcNovoProdutoEstoque(codEmpresa, codBloco, codPrateleira : integer; codProduto : String; status : String;
                                     qtd, qtdmin, qtdmax, customedio : double; categoria : integer;  obs, chave : String; vlrFinanceiro : double; pedCompraOrigem : integer):boolean;
var
    qryDin : TIBQuery;
begin
    try
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'insert into ESTOQUE (ESTOQ_EMPRESA, ESTOQ_PRODUTO, ESTOQ_BLOCO, ESTOQ_PRATELEIRA, ESTOQ_CODIGO, ESTOQ_STATUS, ESTOQ_QTD, '+
                           ' ESTOQ_QTDMIN, ESTOQ_QTDMAX, ESTOQ_CUSTOMEDIO, ESTOQ_CATEGORIA, ESTOQ_TIPO, ESTOQ_DTCADASTRO, ESTOQ_OBS, ESTOQ_CHAVE)    '+
                           ' values (:ESTOQ_EMPRESA, :ESTOQ_PRODUTO, :ESTOQ_BLOCO, :ESTOQ_PRATELEIRA, :ESTOQ_CODIGO, :ESTOQ_STATUS, :ESTOQ_QTD,      '+
                           ':ESTOQ_QTDMIN, :ESTOQ_QTDMAX, :ESTOQ_CUSTOMEDIO, :ESTOQ_CATEGORIA, :ESTOQ_TIPO, :ESTOQ_DTCADASTRO, :ESTOQ_OBS, :ESTOQ_CHAVE)';
        qryDin.ParamByName('ESTOQ_EMPRESA').Value := codEmpresa;
        qryDin.ParamByName('ESTOQ_PRODUTO').Value := codProduto;
        qryDin.ParamByName('ESTOQ_BLOCO').Value := codBloco;
        qryDin.ParamByName('ESTOQ_PRATELEIRA').Value := codPrateleira;
        qryDin.ParamByName('ESTOQ_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQUE');
        qryDin.ParamByName('ESTOQ_STATUS').Value := 'A';
        qryDin.ParamByName('ESTOQ_QTD').Value := qtd;
        qryDin.ParamByName('ESTOQ_QTDMIN').Value := qtdmin;
        qryDin.ParamByName('ESTOQ_QTDMAX').Value := qtdmax;
        qryDin.ParamByName('ESTOQ_CUSTOMEDIO').Value := customedio;
        qryDin.ParamByName('ESTOQ_CATEGORIA').Value := categoria;
        qryDin.ParamByName('ESTOQ_DTCADASTRO').Value := Date;
        qryDin.ParamByName('ESTOQ_OBS').Value := obs;
        qryDin.ParamByName('ESTOQ_CHAVE').Value := chave;
        qryDin.Open;    
    except on E: Exception do
        raise Exception.Create('Produto Não cadastrado no Estoque, Verifique se este produto existe!');
    end;
    
    Result := true;
end;

function funcGeraMovimentacaoEstoque(codEmpresa, codBloco, codPrateleira, codEstoque : integer; codProduto : String;
                                     qtd : double; obs : String; vlrFinanceiro : double; pedCompraOrigem : integer; categoria : integer):boolean;
var
    qryDin : TIBQuery;
    b_existeProdutoEstoque : boolean;
    customedio : double;
begin
    try
        qryDin := funcCriaQuery;
        try            
            b_existeProdutoEstoque := funcExisteProdutoNoEstoque(codEmpresa, codBloco, codPrateleira, codProduto);

            if not b_existeProdutoEstoque then
            begin
                customedio := funcCalcCustoMedio(codEmpresa, codProduto, codBloco, codPrateleira, codEstoque);
                funcNovoProdutoEstoque(codEmpresa, codBloco, codPrateleira, codProduto, 'A', 
                                        qtd, 0, qtd, customedio, categoria, obs, '0', 0, 0);
            end;
        Except on E:Exception do
            raise Exception.Create('Produto Não encontrado! Verifique se este produto está cadastrado!');
        end;
    
        qryDin.Close;
        qryDin.SQL.Text := 'insert into ESTOQ_MOVIMENTO (EM_EMPRESA, EM_PRODUTO, EM_BLOCO, EM_PRATELEIRA,'+
                           ' EM_ESTOQUE, EM_CODIGO, EM_TIPO, EM_QTD,EM_DATA,                             '+
                           ' EM_OBS, EM_VALOR_FINANCEIRO, EM_PEDIDOCOMPRAORIGEM)                         '+
                           ' values (:EM_EMPRESA, :EM_PRODUTO, :EM_BLOCO,                                 '+
                           ' :EM_PRATELEIRA, :EM_ESTOQUE, :EM_CODIGO,                                    '+
                           ' :EM_TIPO, :EM_QTD, :EM_DATA,:EM_OBS,                                        '+
                           ' :EM_VALOR_FINANCEIRO, :EM_PEDIDOCOMPRAORIGEM)                               ';
        qryDin.ParamByName('EM_EMPRESA').Value := codEmpresa;
        qryDin.ParamByName('EM_PRODUTO').Value := codProduto;
        qryDin.ParamByName('EM_BLOCO').Value := codBloco;
        qryDin.ParamByName('EM_PRATELEIRA').Value := codPrateleira;
        qryDin.ParamByName('EM_ESTOQUE').Value := codEstoque;
        qryDin.ParamByName('EM_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQ_MOVIMENTO');
        qryDin.ParamByName('EM_TIPO').Value := 'E';
        qryDin.ParamByName('EM_QTD').Value := qtd;
        qryDin.ParamByName('EM_DATA').Value := Now;
        qryDin.ParamByName('EM_OBS').Value := obs;
        qryDin.ParamByName('EM_VALOR_FINANCEIRO').Value := vlrFinanceiro;
        qryDin.ParamByName('EM_PEDIDOCOMPRAORIGEM').Value := pedCompraOrigem;
        qryDin.Open;

        funcBaixaEstoque(codEmpresa, codProduto, codBloco, codPrateleira, codEstoque, qtd, 'E');
    except on E: Exception do
        raise Exception.Create('Erro ao Criar a Movimentação!');
    end;
    
    

end;

function funcEstoqueBaixo(codEmpresa, codBloco, codPrateleira, codEstoque : integer; codProduto : String; var i_qtd, i_qtdmin : double):boolean;
var
    qry : TIBQuery;
    qtd, qtdmin : double;
begin
    Result := false;

    qry := funcCriaQuery;
    qry.close;
    qry.sql.text := 'select estoq_qtdmin, estoq_qtd from estoque where ' +
                    ' estoq_empresa = ' + intToStr(codEmpresa) +
                    ' and estoq_bloco   = ' + intToStr(codBloco) +
                    ' and estoq_prateleira = ' + intToStr(codPrateleira) +
                    ' and estoq_produto = ' + codProduto +
                    ' and estoq_codigo  = ' + intToStr(codEstoque);
    qry.open;
    qtdmin := qry.FieldByName('estoq_qtdmin').AsFloat;
    i_qtdmin := qtdmin;
    qtd := qry.FieldByName('estoq_qtd').AsFloat;
    i_qtd := qtd;

    if qtd < qtdmin then
        Result := true;
end;







function funcCriaQuery: TIBQuery;
begin
   Result := TIBQuery.Create(nil);
   Result.Database    := dmBanco.Banco;
   Result.Transaction := dmBanco.TBanco;
end;



end.
