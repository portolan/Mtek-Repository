CREATE or ALTER TRIGGER TRG_ALTER_ESTOQ_MOVIMENTO FOR ESTOQUE
ACTIVE AFTER INSERT or UPDATE POSITION 0
AS
BEGIN
    insert into ESTOQ_MOVIMENTO(
        EM_EMPRESA,
        EM_ESTOQUE,
        EM_PRODUTO,
        EM_CODIGO,
        EM_TIPO,
        EM_QTD,
        EM_DATA,
        EM_OBS)
    values (
        NEW.ESTOQ_EMPRESA,
        NEW.ESTOQ_CODIGO,
        NEW.ESTOQ_PRODUTO,
        GEN_ID(gen_estoq_movimento,1),
        IIF(NEW.ESTOQ_QTD > OLD.ESTOQ_QTD, 'E', 'S'),
        ROUND(NEW.ESTOQ_QTD - OLD.ESTOQ_QTD),
        current_timestamp,
        'ESTOQUE BAIXADO POR EXTERNOS!');
END
