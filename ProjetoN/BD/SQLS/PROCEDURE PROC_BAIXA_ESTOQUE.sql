CREATE or ALTER  PROCEDURE PROC_BAIXA_ESTOQUE(COD_EMPRESA INTEGER, COD_PRODUTO VARCHAR(30),
                                              COD_ESTOQUE VARCHAR(30), QTD NUMERIC(18,2), TIPO CHAR)
RETURNS(MSG VARCHAR(60))
AS
BEGIN
    if (TIPO = 'E') then
    BEGIN
        UPDATE ESTOQUE A
        SET A.estoq_qtd = A.estoq_qtd + :QTD
        WHERE A.estoq_empresa = :cod_empresa AND A.estoq_produto = :cod_produto AND A.estoq_codigo = :cod_estoque;
        MSG = 'PRODUTO ' || :COD_PRODUTO || ' ADICIONADO!';
    END
    ELSE if (TIPO = 'S') then
    BEGIN
        UPDATE ESTOQUE B
        SET B.estoq_qtd = B.estoq_qtd - :QTD
        WHERE B.estoq_empresa = :cod_empresa AND B.estoq_produto = :cod_produto AND B.estoq_codigo = :cod_estoque;
        MSG = 'PRODUTO ' || :COD_PRODUTO || ' RETIRADO!';
    END
    ELSE
    BEGIN 
	MSG = 'OPERAÇÃO INVÁLIDA';
    END
END

