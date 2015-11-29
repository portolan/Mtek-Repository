object DM_VENDA: TDM_VENDA
  OldCreateOrder = False
  Height = 516
  Width = 757
  object U_Venda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao,'
      '             C.dep_nome,'
      '             D.pro_descricao'
      '      FROM PEDIDOVENDA A'
      'INNER JOIN DEPARTAMENTO C ON A.ped_deposito = C.DEP_COD'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR   '
      'INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA'
      '                      AND A.PED_PRODUTO = D.PRO_CODIGO'
      'INNER join EMPRESA B ON A.ped_empresa = B.emp_cod'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR  '
      'where'
      '  PED_NUMERO = :PED_NUMERO'
      '  ')
    ModifySQL.Strings = (
      'update PEDIDOVENDA'
      'set'
      '  PED_DEPOSITO = :PED_DEPOSITO,'
      '  PED_DESCONTO = :PED_DESCONTO,'
      '  PED_DESCRICAO = :PED_DESCRICAO,'
      '  PED_DTENTRADA = :PED_DTENTRADA,'
      '  PED_DTPEDIDO = :PED_DTPEDIDO,'
      '  PED_DTPRAZOENTREGA = :PED_DTPRAZOENTREGA,'
      '  PED_EMPRESA = :PED_EMPRESA,'
      '  PED_NUMERO = :PED_NUMERO,'
      '  PED_ORDEMVENDA = :PED_ORDEMVENDA,'
      '  PED_PESSOA = :PED_PESSOA,'
      '  PED_PRODUTO = :PED_PRODUTO,'
      '  PED_QTD_DISPONIVEL = :PED_QTD_DISPONIVEL,'
      '  PED_QUANTIDADE = :PED_QUANTIDADE,'
      '  PED_REAJUSTE = :PED_REAJUSTE,'
      '  PED_SEQUENCIA = :PED_SEQUENCIA,'
      '  PED_SITUACAO = :PED_SITUACAO,'
      '  PED_UNIDADE = :PED_UNIDADE,'
      '  PED_VLRTOTAL = :PED_VLRTOTAL,'
      '  PED_VLRUNITARIO = :PED_VLRUNITARIO'
      'where'
      '  PED_NUMERO = :OLD_PED_NUMERO')
    InsertSQL.Strings = (
      'insert into PEDIDOVENDA'
      
        '  (PED_DEPOSITO, PED_DESCONTO, PED_DESCRICAO, PED_DTENTRADA, PED' +
        '_DTPEDIDO, '
      
        '   PED_DTPRAZOENTREGA, PED_EMPRESA, PED_NUMERO, PED_ORDEMVENDA, ' +
        'PED_PESSOA, '
      
        '   PED_PRODUTO, PED_QTD_DISPONIVEL, PED_QUANTIDADE, PED_REAJUSTE' +
        ', PED_SEQUENCIA, '
      '   PED_SITUACAO, PED_UNIDADE, PED_VLRTOTAL, PED_VLRUNITARIO)'
      'values'
      
        '  (:PED_DEPOSITO, :PED_DESCONTO, :PED_DESCRICAO, :PED_DTENTRADA,' +
        ' :PED_DTPEDIDO, '
      
        '   :PED_DTPRAZOENTREGA, :PED_EMPRESA, :PED_NUMERO, :PED_ORDEMVEN' +
        'DA, :PED_PESSOA, '
      
        '   :PED_PRODUTO, :PED_QTD_DISPONIVEL, :PED_QUANTIDADE, :PED_REAJ' +
        'USTE, :PED_SEQUENCIA, '
      '   :PED_SITUACAO, :PED_UNIDADE, :PED_VLRTOTAL, :PED_VLRUNITARIO)')
    DeleteSQL.Strings = (
      'delete from PEDIDOVENDA'
      'where'
      '  PED_NUMERO = :OLD_PED_NUMERO')
    Left = 24
    Top = 168
  end
  object DS_Venda: TDataSource
    DataSet = IB_Venda
    Left = 24
    Top = 96
  end
  object IB_Faturamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FATURAMENTO')
    UpdateObject = U_Faturamento
    Left = 248
    Top = 40
    object IB_FaturamentoFAT_CODIGO_PEDIDO: TIntegerField
      FieldName = 'FAT_CODIGO_PEDIDO'
      Origin = '"FATURAMENTO"."FAT_CODIGO_PEDIDO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_FaturamentoFAT_DESCRICAO: TIBStringField
      FieldName = 'FAT_DESCRICAO'
      Origin = '"FATURAMENTO"."FAT_DESCRICAO"'
      Size = 60
    end
    object IB_FaturamentoFAT_EMPRESA: TIntegerField
      FieldName = 'FAT_EMPRESA'
      Origin = '"FATURAMENTO"."FAT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_FaturamentoFAT_PESSOA: TIntegerField
      FieldName = 'FAT_PESSOA'
      Origin = '"FATURAMENTO"."FAT_PESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_FaturamentoFAT_NOTA: TIntegerField
      FieldName = 'FAT_NOTA'
      Origin = '"FATURAMENTO"."FAT_NOTA"'
    end
    object IB_FaturamentoFAT_NOTASERIE: TIntegerField
      FieldName = 'FAT_NOTASERIE'
      Origin = '"FATURAMENTO"."FAT_NOTASERIE"'
    end
    object IB_FaturamentoFAT_DTEMISSAO: TDateField
      FieldName = 'FAT_DTEMISSAO'
      Origin = '"FATURAMENTO"."FAT_DTEMISSAO"'
    end
    object IB_FaturamentoFAT_DTSAIDA: TDateField
      FieldName = 'FAT_DTSAIDA'
      Origin = '"FATURAMENTO"."FAT_DTSAIDA"'
    end
    object IB_FaturamentoFAT_SITAUCAO: TIBStringField
      FieldName = 'FAT_SITAUCAO'
      Origin = '"FATURAMENTO"."FAT_SITAUCAO"'
      Size = 5
    end
    object IB_FaturamentoFAT_CHAVE_ACESSO: TIntegerField
      FieldName = 'FAT_CHAVE_ACESSO'
      Origin = '"FATURAMENTO"."FAT_CHAVE_ACESSO"'
    end
  end
  object DS_Faturamento: TDataSource
    DataSet = IB_Faturamento
    Left = 248
    Top = 176
  end
  object U_Faturamento: TIBUpdateSQL
    Left = 248
    Top = 104
  end
  object DS_CondicaoPG: TDataSource
    DataSet = IB_CondicaoPG
    Left = 352
    Top = 112
  end
  object IB_CondicaoPG: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from CONDICAOPAGAMENTO')
    UpdateObject = U_CondicaoPG
    Left = 360
    Top = 48
    object IB_CondicaoPGCDP_CODIGO: TIntegerField
      FieldName = 'CDP_CODIGO'
      Origin = '"CONDICAOPAGAMENTO"."CDP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_CondicaoPGCDP_DESCRICAO: TIBStringField
      FieldName = 'CDP_DESCRICAO'
      Origin = '"CONDICAOPAGAMENTO"."CDP_DESCRICAO"'
      Size = 100
    end
  end
  object U_CondicaoPG: TIBUpdateSQL
    Left = 360
    Top = 184
  end
  object IB_Venda: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = IB_VendaAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao,'
      '             C.dep_nome,'
      '             D.pro_descricao'
      '      FROM PEDIDOVENDA A'
      'INNER JOIN DEPARTAMENTO C ON A.ped_deposito = C.DEP_COD'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR   '
      'INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA'
      '                      AND A.PED_PRODUTO = D.PRO_CODIGO'
      'INNER join EMPRESA B ON A.ped_empresa = B.emp_cod'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR                             '
      '')
    UpdateObject = U_Venda
    Left = 24
    Top = 32
    object IB_VendaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = '"PEDIDOVENDA"."PED_NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_VendaPED_PESSOA: TIBStringField
      FieldName = 'PED_PESSOA'
      Origin = '"PEDIDOVENDA"."PED_PESSOA"'
      Required = True
      Size = 60
    end
    object IB_VendaPED_SEQUENCIA: TIntegerField
      FieldName = 'PED_SEQUENCIA'
      Origin = '"PEDIDOVENDA"."PED_SEQUENCIA"'
    end
    object IB_VendaPED_SITUACAO: TIBStringField
      FieldName = 'PED_SITUACAO'
      Origin = '"PEDIDOVENDA"."PED_SITUACAO"'
      Size = 5
    end
    object IB_VendaPED_EMPRESA: TIntegerField
      FieldName = 'PED_EMPRESA'
      Origin = '"PEDIDOVENDA"."PED_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_VendaPED_DEPOSITO: TIntegerField
      FieldName = 'PED_DEPOSITO'
      Origin = '"PEDIDOVENDA"."PED_DEPOSITO"'
      Required = True
    end
    object IB_VendaPED_DESCRICAO: TIBStringField
      FieldName = 'PED_DESCRICAO'
      Origin = '"PEDIDOVENDA"."PED_DESCRICAO"'
      Size = 60
    end
    object IB_VendaPED_UNIDADE: TIntegerField
      FieldName = 'PED_UNIDADE'
      Origin = '"PEDIDOVENDA"."PED_UNIDADE"'
    end
    object IB_VendaPED_QUANTIDADE: TIBBCDField
      FieldName = 'PED_QUANTIDADE'
      Origin = '"PEDIDOVENDA"."PED_QUANTIDADE"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_DESCONTO: TIBBCDField
      FieldName = 'PED_DESCONTO'
      Origin = '"PEDIDOVENDA"."PED_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_QTD_DISPONIVEL: TIBBCDField
      FieldName = 'PED_QTD_DISPONIVEL'
      Origin = '"PEDIDOVENDA"."PED_QTD_DISPONIVEL"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_VLRUNITARIO: TIBBCDField
      FieldName = 'PED_VLRUNITARIO'
      Origin = '"PEDIDOVENDA"."PED_VLRUNITARIO"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_VLRTOTAL: TIBBCDField
      FieldName = 'PED_VLRTOTAL'
      Origin = '"PEDIDOVENDA"."PED_VLRTOTAL"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_REAJUSTE: TIBBCDField
      FieldName = 'PED_REAJUSTE'
      Origin = '"PEDIDOVENDA"."PED_REAJUSTE"'
      Precision = 18
      Size = 2
    end
    object IB_VendaPED_DTPEDIDO: TDateField
      FieldName = 'PED_DTPEDIDO'
      Origin = '"PEDIDOVENDA"."PED_DTPEDIDO"'
    end
    object IB_VendaPED_DTENTRADA: TDateField
      FieldName = 'PED_DTENTRADA'
      Origin = '"PEDIDOVENDA"."PED_DTENTRADA"'
    end
    object IB_VendaPED_DTPRAZOENTREGA: TDateField
      FieldName = 'PED_DTPRAZOENTREGA'
      Origin = '"PEDIDOVENDA"."PED_DTPRAZOENTREGA"'
    end
    object IB_VendaPED_ORDEMVENDA: TIntegerField
      FieldName = 'PED_ORDEMVENDA'
      Origin = '"PEDIDOVENDA"."PED_ORDEMVENDA"'
      Required = True
    end
    object IB_VendaEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Required = True
      Size = 60
    end
    object IB_VendaDEP_NOME: TIBStringField
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object IB_VendaPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
    object IB_VendaPED_PRODUTO: TIBStringField
      FieldName = 'PED_PRODUTO'
      Origin = '"PEDIDOVENDA"."PED_PRODUTO"'
      Required = True
      Size = 30
    end
  end
  object U_EmissaoNFE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMI_NUMERO,'
      '  EMI_NOTAFISCAL,'
      '  EMI_EMPRESA,'
      '  EMI_DESCRICAO,'
      '  EMI_PESSOA,'
      '  EMI_DTEMISSAO,'
      '  EMI_DTSAIDA,'
      '  EMI_DEPOSITO'
      'from EMISSAO_NFE '
      'where'
      '  EMI_NUMERO = :EMI_NUMERO')
    ModifySQL.Strings = (
      'update EMISSAO_NFE'
      'set'
      '  EMI_NOTAFISCAL = :EMI_NOTAFISCAL'
      'where'
      '  EMI_NUMERO = :OLD_EMI_NUMERO')
    InsertSQL.Strings = (
      'insert into EMISSAO_NFE'
      '  (EMI_NOTAFISCAL)'
      'values'
      '  (:EMI_NOTAFISCAL)')
    DeleteSQL.Strings = (
      'delete from EMISSAO_NFE'
      'where'
      '  EMI_NUMERO = :OLD_EMI_NUMERO')
    Left = 128
    Top = 168
  end
  object DS_EmissaoNFE: TDataSource
    DataSet = IB_EmissaoNFE
    Left = 128
    Top = 104
  end
  object IB_EmissaoNFE: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM EMISSAO_NFE'
      '                                  ')
    UpdateObject = U_EmissaoNFE
    Left = 128
    Top = 32
    object IB_EmissaoNFEEMI_DTEMISSAO: TDateField
      FieldName = 'EMI_DTEMISSAO'
      Origin = '"EMISSAO_NFE"."EMI_DTEMISSAO"'
    end
    object IB_EmissaoNFEEMI_DTSAIDA: TDateField
      FieldName = 'EMI_DTSAIDA'
      Origin = '"EMISSAO_NFE"."EMI_DTSAIDA"'
    end
    object IB_EmissaoNFEEMI_NOTAFISCAL: TIntegerField
      FieldName = 'EMI_NOTAFISCAL'
      Origin = '"EMISSAO_NFE"."EMI_NOTAFISCAL"'
    end
  end
end
