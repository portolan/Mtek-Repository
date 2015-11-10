object dmPedCompra: TdmPedCompra
  OldCreateOrder = False
  Height = 244
  Width = 668
  object SolicitacaoCompra: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.DEP_NOME,'
      '       C.PRO_DESCRICAO,'
      '       D.emp_razao'
      '  FROM SOLICITACAO_COMPRA A'
      ' INNER JOIN DEPARTAMENTO B ON A.SOL_DEPARTAMENTO = B.DEP_COD'
      '                          AND A.SOL_EMPRESA = B.DEP_EMPRESAR'
      ' INNER JOIN PRODUTOS C ON A.SOL_EMPRESA = C.PRO_EMPRESA'
      '                      AND A.SOL_PRODUTO = C.PRO_CODIGO'
      ' INNER JOIN EMPRESA D ON A.SOL_EMPRESA = D.EMP_COD'
      'WHERE A.SOL_CODIGO = -1')
    UpdateObject = USolicitacaoCompra
    Left = 88
    Top = 32
    object SolicitacaoCompraSOL_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'SOL_EMPRESA'
      Origin = '"SOLICITACAO_COMPRA"."SOL_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SolicitacaoCompraSOL_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SOL_CODIGO'
      Origin = '"SOLICITACAO_COMPRA"."SOL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SolicitacaoCompraSOL_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo Departamento'
      FieldName = 'SOL_DEPARTAMENTO'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DEPARTAMENTO"'
      Required = True
    end
    object SolicitacaoCompraSOL_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'SOL_PRODUTO'
      Origin = '"SOLICITACAO_COMPRA"."SOL_PRODUTO"'
      Required = True
      Size = 30
    end
    object SolicitacaoCompraSOL_QTD: TIBBCDField
      DisplayLabel = 'Qtd.'
      FieldName = 'SOL_QTD'
      Origin = '"SOLICITACAO_COMPRA"."SOL_QTD"'
      Precision = 18
      Size = 2
    end
    object SolicitacaoCompraSOL_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'SOL_DATA'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DATA"'
      Required = True
    end
    object SolicitacaoCompraSOL_DATA_URGENCIA: TDateField
      DisplayLabel = 'Data Limite Compra'
      FieldName = 'SOL_DATA_URGENCIA'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DATA_URGENCIA"'
    end
    object SolicitacaoCompraSOL_OBS: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'SOL_OBS'
      Origin = '"SOLICITACAO_COMPRA"."SOL_OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object SolicitacaoCompraSOL_DATA_LIBERACAO: TDateField
      DisplayLabel = 'Data de Libera'#231#227'o'
      FieldName = 'SOL_DATA_LIBERACAO'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DATA_LIBERACAO"'
    end
    object SolicitacaoCompraSOL_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'SOL_STATUS'
      Origin = '"SOLICITACAO_COMPRA"."SOL_STATUS"'
      Size = 1
    end
    object SolicitacaoCompraDEP_NOME: TIBStringField
      DisplayLabel = 'Departamento Nome'
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Size = 40
    end
    object SolicitacaoCompraPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
    object SolicitacaoCompraEMP_RAZAO: TIBStringField
      DisplayLabel = 'Emp. Raz'#227'o'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
  end
  object DSolicitacaoCompra: TDataSource
    AutoEdit = False
    DataSet = SolicitacaoCompra
    Left = 88
    Top = 128
  end
  object USolicitacaoCompra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.DEP_NOME,'
      '       C.PRO_DESCRICAO,'
      '       D.emp_razao'
      '  FROM SOLICITACAO_COMPRA A'
      ' INNER JOIN DEPARTAMENTO B ON A.SOL_DEPARTAMENTO = B.DEP_COD'
      '                          AND A.SOL_EMPRESA = B.DEP_EMPRESAR'
      ' INNER JOIN PRODUTOS C ON A.SOL_EMPRESA = C.PRO_EMPRESA'
      '                      AND A.SOL_PRODUTO = C.PRO_CODIGO'
      ' INNER JOIN EMPRESA D ON A.SOL_EMPRESA = D.EMP_COD'
      'where'
      '  SOL_CODIGO = :SOL_CODIGO and'
      '  SOL_EMPRESA = :SOL_EMPRESA')
    ModifySQL.Strings = (
      'update SOLICITACAO_COMPRA'
      'set'
      '  SOL_CODIGO = :SOL_CODIGO,'
      '  SOL_DATA = :SOL_DATA,'
      '  SOL_DATA_LIBERACAO = :SOL_DATA_LIBERACAO,'
      '  SOL_DATA_URGENCIA = :SOL_DATA_URGENCIA,'
      '  SOL_DEPARTAMENTO = :SOL_DEPARTAMENTO,'
      '  SOL_EMPRESA = :SOL_EMPRESA,'
      '  SOL_OBS = :SOL_OBS,'
      '  SOL_PRODUTO = :SOL_PRODUTO,'
      '  SOL_QTD = :SOL_QTD,'
      '  SOL_STATUS = :SOL_STATUS'
      'where'
      '  SOL_CODIGO = :OLD_SOL_CODIGO and'
      '  SOL_EMPRESA = :OLD_SOL_EMPRESA')
    InsertSQL.Strings = (
      'insert into SOLICITACAO_COMPRA'
      
        '  (SOL_CODIGO, SOL_DATA, SOL_DATA_LIBERACAO, SOL_DATA_URGENCIA, ' +
        'SOL_DEPARTAMENTO, '
      '   SOL_EMPRESA, SOL_OBS, SOL_PRODUTO, SOL_QTD, SOL_STATUS)'
      'values'
      
        '  (:SOL_CODIGO, :SOL_DATA, :SOL_DATA_LIBERACAO, :SOL_DATA_URGENC' +
        'IA, :SOL_DEPARTAMENTO, '
      '   :SOL_EMPRESA, :SOL_OBS, :SOL_PRODUTO, :SOL_QTD, :SOL_STATUS)')
    DeleteSQL.Strings = (
      'delete from SOLICITACAO_COMPRA'
      'where'
      '  SOL_CODIGO = :OLD_SOL_CODIGO and'
      '  SOL_EMPRESA = :OLD_SOL_EMPRESA')
    Left = 88
    Top = 80
  end
  object Cotacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.DEP_NOME,'
      '       D.PRO_DESCRICAO'
      '  FROM COTACAO A'
      ' INNER JOIN EMPRESA B ON A.COT_EMPRESA = B.EMP_COD'
      ' INNER JOIN DEPARTAMENTO C ON A.COT_DEPARTAMENTO = C.DEP_COD'
      '                          AND A.COT_EMPRESA = C.DEP_EMPRESAR'
      ' INNER JOIN PRODUTOS D ON A.COT_EMPRESA = D.PRO_EMPRESA'
      '                      AND A.COT_PRODUTO = D.PRO_CODIGO'
      ' WHERE A.COT_CODIGO = -1   ')
    UpdateObject = UCotacao
    Left = 191
    Top = 32
    object CotacaoCOT_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'COT_EMPRESA'
      Origin = '"COTACAO"."COT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CotacaoCOT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COT_CODIGO'
      Origin = '"COTACAO"."COT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CotacaoCOT_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Departamento'
      FieldName = 'COT_DEPARTAMENTO'
      Origin = '"COTACAO"."COT_DEPARTAMENTO"'
      Required = True
    end
    object CotacaoCOT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'COT_DESCRICAO'
      Origin = '"COTACAO"."COT_DESCRICAO"'
      Required = True
      Size = 40
    end
    object CotacaoCOT_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'COT_STATUS'
      Origin = '"COTACAO"."COT_STATUS"'
      Required = True
      Size = 1
    end
    object CotacaoCOT_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'COT_DATA'
      Origin = '"COTACAO"."COT_DATA"'
      Required = True
    end
    object CotacaoCOT_OBS: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'COT_OBS'
      Origin = '"COTACAO"."COT_OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object CotacaoCOT_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'COT_PRODUTO'
      Origin = '"COTACAO"."COT_PRODUTO"'
      Size = 30
    end
    object CotacaoCOT_QTD: TIBBCDField
      DisplayLabel = 'Qtd.'
      FieldName = 'COT_QTD'
      Origin = '"COTACAO"."COT_QTD"'
      Precision = 18
      Size = 2
    end
    object CotacaoCOT_SOLICITACAO_ORIGEM: TIntegerField
      DisplayLabel = 'Solicitacao Origem'
      FieldName = 'COT_SOLICITACAO_ORIGEM'
      Origin = '"COTACAO"."COT_SOLICITACAO_ORIGEM"'
    end
    object CotacaoEMP_RAZAO: TIBStringField
      DisplayLabel = 'Emp. Raz'#227'o'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object CotacaoDEP_NOME: TIBStringField
      DisplayLabel = 'Departamento Nome'
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Size = 40
    end
    object CotacaoPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
  end
  object DCotacao: TDataSource
    AutoEdit = False
    DataSet = Cotacao
    Left = 191
    Top = 128
  end
  object UCotacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.DEP_NOME,'
      '       D.PRO_DESCRICAO'
      '  FROM COTACAO A'
      ' INNER JOIN EMPRESA B ON A.COT_EMPRESA = B.EMP_COD'
      ' INNER JOIN DEPARTAMENTO C ON A.COT_DEPARTAMENTO = C.DEP_COD'
      '                          AND A.COT_EMPRESA = C.DEP_EMPRESAR'
      ' INNER JOIN PRODUTOS D ON A.COT_EMPRESA = D.PRO_EMPRESA'
      '                      AND A.COT_PRODUTO = D.PRO_CODIGO'
      'where'
      '  COT_CODIGO = :COT_CODIGO and'
      '  COT_EMPRESA = :COT_EMPRESA')
    ModifySQL.Strings = (
      'update COTACAO'
      'set'
      '  COT_CODIGO = :COT_CODIGO,'
      '  COT_DATA = :COT_DATA,'
      '  COT_DEPARTAMENTO = :COT_DEPARTAMENTO,'
      '  COT_DESCRICAO = :COT_DESCRICAO,'
      '  COT_EMPRESA = :COT_EMPRESA,'
      '  COT_OBS = :COT_OBS,'
      '  COT_PRODUTO = :COT_PRODUTO,'
      '  COT_QTD = :COT_QTD,'
      '  COT_SOLICITACAO_ORIGEM = :COT_SOLICITACAO_ORIGEM,'
      '  COT_STATUS = :COT_STATUS'
      'where'
      '  COT_CODIGO = :OLD_COT_CODIGO and'
      '  COT_EMPRESA = :OLD_COT_EMPRESA')
    InsertSQL.Strings = (
      'insert into COTACAO'
      
        '  (COT_CODIGO, COT_DATA, COT_DEPARTAMENTO, COT_DESCRICAO, COT_EM' +
        'PRESA, '
      
        '   COT_OBS, COT_PRODUTO, COT_QTD, COT_SOLICITACAO_ORIGEM, COT_ST' +
        'ATUS)'
      'values'
      
        '  (:COT_CODIGO, :COT_DATA, :COT_DEPARTAMENTO, :COT_DESCRICAO, :C' +
        'OT_EMPRESA, '
      
        '   :COT_OBS, :COT_PRODUTO, :COT_QTD, :COT_SOLICITACAO_ORIGEM, :C' +
        'OT_STATUS)')
    DeleteSQL.Strings = (
      'delete from COTACAO'
      'where'
      '  COT_CODIGO = :OLD_COT_CODIGO and'
      '  COT_EMPRESA = :OLD_COT_EMPRESA')
    Left = 191
    Top = 80
  end
  object FornecedorCotacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UpdateObject = UFornecedorCotacao
    Left = 279
    Top = 32
  end
  object DFornecedorCotacao: TDataSource
    AutoEdit = False
    DataSet = FornecedorCotacao
    Left = 279
    Top = 128
  end
  object UFornecedorCotacao: TIBUpdateSQL
    Left = 279
    Top = 80
  end
  object PedidoCompra: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UpdateObject = UPedidoCompra
    Left = 392
    Top = 32
  end
  object DPedidoCompra: TDataSource
    AutoEdit = False
    DataSet = PedidoCompra
    Left = 392
    Top = 128
  end
  object UPedidoCompra: TIBUpdateSQL
    Left = 392
    Top = 80
  end
end
