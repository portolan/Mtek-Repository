object DM_VENDA: TDM_VENDA
  OldCreateOrder = False
  Height = 516
  Width = 757
  object U_Venda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao '
      '     FROM PEDIDOVENDA A'
      '   INNER join EMPRESA B ON a.ped_empresa =  b.emp_cod'
      'where'
      '  PED_NUMERO = :PED_NUMERO AND'
      '  PED_EMPRESA = :PED_EMPRESA')
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
      '  PED_LISTA_PRECO = :PED_LISTA_PRECO,'
      '  PED_NUMERO = :PED_NUMERO,'
      '  PED_ORDEMVENDA = :PED_ORDEMVENDA,'
      '  PED_PESSOA = :PED_PESSOA,'
      '  PED_PRODUTO = :PED_PRODUTO,'
      '  PED_QTD_DISPONIVEL = :PED_QTD_DISPONIVEL,'
      '  PED_QUANTIDADE = :PED_QUANTIDADE,'
      '  PED_REAJUSTE = :PED_REAJUSTE,'
      '  PED_SEQUENCIA = :PED_SEQUENCIA,'
      '  PED_SITUACAO = :PED_SITUACAO,'
      '  PED_TIPODESCRICAO = :PED_TIPODESCRICAO,'
      '  PED_TIPOMOVIMENTACAO = :PED_TIPOMOVIMENTACAO,'
      '  PED_UNIDADE = :PED_UNIDADE,'
      '  PED_VLRTOTAL = :PED_VLRTOTAL,'
      '  PED_VLRUNITARIO = :PED_VLRUNITARIO'
      'where'
      '  PED_NUMERO = :OLD_PED_NUMERO')
    InsertSQL.Strings = (
      'insert into PEDIDOVENDA'
      
        '  (PED_DEPOSITO, PED_DESCONTO, PED_DESCRICAO, PED_DTENTRADA, PED' +
        '_DTPEDIDO, '
      
        '   PED_DTPRAZOENTREGA, PED_EMPRESA, PED_LISTA_PRECO, PED_NUMERO,' +
        ' PED_ORDEMVENDA, '
      
        '   PED_PESSOA, PED_PRODUTO, PED_QTD_DISPONIVEL, PED_QUANTIDADE, ' +
        'PED_REAJUSTE, '
      
        '   PED_SEQUENCIA, PED_SITUACAO, PED_TIPODESCRICAO, PED_TIPOMOVIM' +
        'ENTACAO, '
      '   PED_UNIDADE, PED_VLRTOTAL, PED_VLRUNITARIO)'
      'values'
      
        '  (:PED_DEPOSITO, :PED_DESCONTO, :PED_DESCRICAO, :PED_DTENTRADA,' +
        ' :PED_DTPEDIDO, '
      
        '   :PED_DTPRAZOENTREGA, :PED_EMPRESA, :PED_LISTA_PRECO, :PED_NUM' +
        'ERO, :PED_ORDEMVENDA, '
      
        '   :PED_PESSOA, :PED_PRODUTO, :PED_QTD_DISPONIVEL, :PED_QUANTIDA' +
        'DE, :PED_REAJUSTE, '
      
        '   :PED_SEQUENCIA, :PED_SITUACAO, :PED_TIPODESCRICAO, :PED_TIPOM' +
        'OVIMENTACAO, '
      '   :PED_UNIDADE, :PED_VLRTOTAL, :PED_VLRUNITARIO)')
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
    Left = 264
    Top = 24
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
    Left = 264
    Top = 96
  end
  object U_Faturamento: TIBUpdateSQL
    Left = 264
    Top = 168
  end
  object DS_CondicaoPG: TDataSource
    DataSet = IB_CondicaoPG
    Left = 384
    Top = 96
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
    Left = 384
    Top = 24
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
    Left = 384
    Top = 176
  end
  object U_EmissaoNFE: TIBUpdateSQL
    Left = 136
    Top = 168
  end
  object DS_EmissaoNFE: TDataSource
    DataSet = IB_EmissaoNFE
    Left = 136
    Top = 96
  end
  object IB_EmissaoNFE: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from EMISSAO_NFE')
    UpdateObject = U_EmissaoNFE
    Left = 136
    Top = 24
    object IB_EmissaoNFEEMI_NUMERO: TIntegerField
      FieldName = 'EMI_NUMERO'
      Origin = '"EMISSAO_NFE"."EMI_NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_EmissaoNFEEMI_NOTAFISCAL: TIntegerField
      FieldName = 'EMI_NOTAFISCAL'
      Origin = '"EMISSAO_NFE"."EMI_NOTAFISCAL"'
    end
    object IB_EmissaoNFEEMI_EMPRESA: TIntegerField
      FieldName = 'EMI_EMPRESA'
      Origin = '"EMISSAO_NFE"."EMI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_EmissaoNFEEMI_SERIE: TIntegerField
      FieldName = 'EMI_SERIE'
      Origin = '"EMISSAO_NFE"."EMI_SERIE"'
    end
    object IB_EmissaoNFEEMI_TIPOMOVIMENTACAO: TIntegerField
      FieldName = 'EMI_TIPOMOVIMENTACAO'
      Origin = '"EMISSAO_NFE"."EMI_TIPOMOVIMENTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_EmissaoNFEEMI_DESCRICAO: TIBStringField
      FieldName = 'EMI_DESCRICAO'
      Origin = '"EMISSAO_NFE"."EMI_DESCRICAO"'
      Required = True
      Size = 60
    end
    object IB_EmissaoNFEEMI_PESSOA: TIBStringField
      FieldName = 'EMI_PESSOA'
      Origin = '"EMISSAO_NFE"."EMI_PESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object IB_EmissaoNFEEMI_DTEMISSAO: TDateField
      FieldName = 'EMI_DTEMISSAO'
      Origin = '"EMISSAO_NFE"."EMI_DTEMISSAO"'
    end
    object IB_EmissaoNFEEMI_DTSAIDA: TDateField
      FieldName = 'EMI_DTSAIDA'
      Origin = '"EMISSAO_NFE"."EMI_DTSAIDA"'
    end
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
      '             B.emp_razao '
      '      FROM PEDIDOVENDA A'
      'INNER join EMPRESA B ON A.ped_empresa = B.emp_cod'
      '    ')
    UpdateObject = U_Venda
    Left = 24
    Top = 32
    object IB_VendaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = '"PEDIDOVENDA"."PED_NUMERO"'
      Required = True
    end
    object IB_VendaPED_PESSOA: TIBStringField
      FieldName = 'PED_PESSOA'
      Origin = '"PEDIDOVENDA"."PED_PESSOA"'
      Size = 100
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
    end
    object IB_VendaPED_DEPOSITO: TIntegerField
      FieldName = 'PED_DEPOSITO'
      Origin = '"PEDIDOVENDA"."PED_DEPOSITO"'
    end
    object IB_VendaPED_PRODUTO: TIntegerField
      FieldName = 'PED_PRODUTO'
      Origin = '"PEDIDOVENDA"."PED_PRODUTO"'
    end
    object IB_VendaPED_DESCRICAO: TIBStringField
      FieldName = 'PED_DESCRICAO'
      Origin = '"PEDIDOVENDA"."PED_DESCRICAO"'
      Size = 60
    end
    object IB_VendaPED_TIPOMOVIMENTACAO: TIBStringField
      FieldName = 'PED_TIPOMOVIMENTACAO'
      Origin = '"PEDIDOVENDA"."PED_TIPOMOVIMENTACAO"'
      Size = 5
    end
    object IB_VendaPED_TIPODESCRICAO: TIBStringField
      FieldName = 'PED_TIPODESCRICAO'
      Origin = '"PEDIDOVENDA"."PED_TIPODESCRICAO"'
      Size = 30
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
    object IB_VendaPED_LISTA_PRECO: TIntegerField
      FieldName = 'PED_LISTA_PRECO'
      Origin = '"PEDIDOVENDA"."PED_LISTA_PRECO"'
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
    end
    object IB_VendaEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
  end
end
