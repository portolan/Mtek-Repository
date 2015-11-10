unit UEstoque;

interface

uses System.SysUtils, System.Variants, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBUpdateSQL, Vcl.Dialogs;

function funcBaixaEstoque(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer; qtd:double; tipo: String): Boolean;
function funcVerificaEstoque(codEmpresa : integer; codProduto : String; qtd : double; var codBloco, codPrateleira, codEstoque : integer):double;
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
                if (i_qtd_estoque - qtd) >= i_qtd_min then
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
                    raise Exception.Create('Estoque não pode ser negativo e não pode ser inferior a quantidade mínima!');
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
                           ' estoq_qtd    >= :qtd';
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

function funcCriaQuery: TIBQuery;
begin
   Result := TIBQuery.Create(nil);
   Result.Database    := dmBanco.Banco;
   Result.Transaction := dmBanco.TBanco;
end;



end.
