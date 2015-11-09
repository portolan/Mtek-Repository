unit UEstoque;



interface

uses System.SysUtils, System.Variants, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBUpdateSQL, Vcl.Dialogs;

function funcBaixaEstoque(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer; qtd:double; tipo: String): Boolean;
function funcCriaQuery:TIBQuery;

implementation

uses UDM_Estoque, dm000;

function funcBaixaEstoque(codEmpresa:integer; codProduto:String; codBloco, codPrateleira, codEstoque: integer; qtd: double; tipo: String): Boolean;
var QryDinamica : TIBQuery;
    i_qtd_estoque : Integer;
begin
    Result := false;
    try
        QryDinamica := funcCriaQuery;
        try
            QryDinamica.Close;
            QryDinamica.SQL.Text := ' SELECT ESTOQ_QTD '+
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

            i_qtd_estoque := QryDinamica.FieldByName('ESTOQ_QTD').AsInteger;

            if UpperCase(tipo) = 'E' then
            begin
                QryDinamica.Close;
                QryDinamica.SQL.Text := ' UPDATE ESTOQUE '+
                                        '    SET ESTOQ_QTD = ESTOQ_QTD + :QTD'+
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
            else if UpperCase(tipo) = 'S' then
            begin
                if i_qtd_estoque >= qtd then
                begin
                    QryDinamica.Close;
                    QryDinamica.SQL.Text := ' UPDATE ESTOQUE '+
                                            '    SET ESTOQ_QTD = ESTOQ_QTD - :QTD' +
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

function funcCriaQuery: TIBQuery;
begin
   Result := TIBQuery.Create(nil);
   Result.Database    := dmBanco.Banco;
   Result.Transaction := dmBanco.TBanco;
end;



end.
