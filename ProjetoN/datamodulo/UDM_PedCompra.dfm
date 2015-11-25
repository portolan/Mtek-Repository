object dmPedCompra: TdmPedCompra
  OldCreateOrder = False
  Height = 244
  Width = 755
  object SolicitacaoCompra: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = SolicitacaoCompraAfterInsert
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
      DisplayLabel = 'C'#243'd. Departamento'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SolicitacaoCompraSOL_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'SOL_DATA'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DATA"'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object SolicitacaoCompraSOL_DATA_URGENCIA: TDateField
      DisplayLabel = 'Data Limite Compra'
      FieldName = 'SOL_DATA_URGENCIA'
      Origin = '"SOLICITACAO_COMPRA"."SOL_DATA_URGENCIA"'
      EditMask = '!99/99/0000;1;_'
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
      EditMask = '!99/99/0000;1;_'
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
    AfterInsert = CotacaoAfterInsert
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
      EditMask = '!99/99/0000;1;_'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
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
    AfterInsert = FornecedorCotacaoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.UN_DESCRICAO,'
      '       C.PESS_NOME,'
      '       C.PESS_TELCONTATO,'
      '       C.PESS_EMAIL'
      '  FROM FORNEC_COTACAO A'
      ' INNER JOIN UNIDADE B ON A.FCT_UND_MEDIDA = B.UN_CODIGO'
      ' INNER JOIN PESSOAS C ON A.FCT_FORNECEDOR = C.PESS_CODIGO'
      ' WHERE A.FCT_EMPRESA = -1')
    UpdateObject = UFornecedorCotacao
    Left = 279
    Top = 32
    object FornecedorCotacaoFCT_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'FCT_EMPRESA'
      Origin = '"FORNEC_COTACAO"."FCT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorCotacaoFCT_COTACAO: TIntegerField
      DisplayLabel = 'Cod. Cota'#231#227'o'
      FieldName = 'FCT_COTACAO'
      Origin = '"FORNEC_COTACAO"."FCT_COTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorCotacaoFCT_FORNECEDOR: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'FCT_FORNECEDOR'
      Origin = '"FORNEC_COTACAO"."FCT_FORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorCotacaoFCT_VENCEDOR: TIBStringField
      DisplayLabel = 'Vencedor?'
      FieldName = 'FCT_VENCEDOR'
      Origin = '"FORNEC_COTACAO"."FCT_VENCEDOR"'
      Size = 1
    end
    object FornecedorCotacaoFCT_VLR_UNITARIO: TIBBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'FCT_VLR_UNITARIO'
      Origin = '"FORNEC_COTACAO"."FCT_VLR_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object FornecedorCotacaoFCT_VLR_FRETE: TIBBCDField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'FCT_VLR_FRETE'
      Origin = '"FORNEC_COTACAO"."FCT_VLR_FRETE"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object FornecedorCotacaoFCT_DT_ENTREGA: TDateField
      DisplayLabel = 'Data de Entrega'
      FieldName = 'FCT_DT_ENTREGA'
      Origin = '"FORNEC_COTACAO"."FCT_DT_ENTREGA"'
      EditMask = '!99/99/0000;1;_'
    end
    object FornecedorCotacaoFCT_UND_MEDIDA: TIntegerField
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'FCT_UND_MEDIDA'
      Origin = '"FORNEC_COTACAO"."FCT_UND_MEDIDA"'
    end
    object FornecedorCotacaoUN_DESCRICAO: TIBStringField
      DisplayLabel = 'Unidade Desc.'
      FieldName = 'UN_DESCRICAO'
      Origin = '"UNIDADE"."UN_DESCRICAO"'
      Size = 60
    end
    object FornecedorCotacaoPESS_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object FornecedorCotacaoPESS_TELCONTATO: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'PESS_TELCONTATO'
      Origin = '"PESSOAS"."PESS_TELCONTATO"'
      Size = 15
    end
    object FornecedorCotacaoPESS_EMAIL: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'PESS_EMAIL'
      Origin = '"PESSOAS"."PESS_EMAIL"'
      Size = 60
    end
  end
  object DFornecedorCotacao: TDataSource
    AutoEdit = False
    DataSet = FornecedorCotacao
    Left = 279
    Top = 128
  end
  object UFornecedorCotacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.UN_DESCRICAO,'
      '       C.PESS_NOME,'
      '       C.PESS_TELCONTATO,'
      '       C.PESS_EMAIL'
      '  FROM FORNEC_COTACAO A'
      ' INNER JOIN UNIDADE B ON A.FCT_UND_MEDIDA = B.UN_CODIGO'
      ' INNER JOIN PESSOAS C ON A.FCT_FORNECEDOR = C.PESS_CODIGO'
      'where'
      '  FCT_COTACAO = :FCT_COTACAO and'
      '  FCT_EMPRESA = :FCT_EMPRESA and'
      '  FCT_FORNECEDOR = :FCT_FORNECEDOR')
    ModifySQL.Strings = (
      'update FORNEC_COTACAO'
      'set'
      '  FCT_COTACAO = :FCT_COTACAO,'
      '  FCT_DT_ENTREGA = :FCT_DT_ENTREGA,'
      '  FCT_EMPRESA = :FCT_EMPRESA,'
      '  FCT_FORNECEDOR = :FCT_FORNECEDOR,'
      '  FCT_UND_MEDIDA = :FCT_UND_MEDIDA,'
      '  FCT_VENCEDOR = :FCT_VENCEDOR,'
      '  FCT_VLR_FRETE = :FCT_VLR_FRETE,'
      '  FCT_VLR_UNITARIO = :FCT_VLR_UNITARIO'
      'where'
      '  FCT_COTACAO = :OLD_FCT_COTACAO and'
      '  FCT_EMPRESA = :OLD_FCT_EMPRESA and'
      '  FCT_FORNECEDOR = :OLD_FCT_FORNECEDOR')
    InsertSQL.Strings = (
      'insert into FORNEC_COTACAO'
      
        '  (FCT_COTACAO, FCT_DT_ENTREGA, FCT_EMPRESA, FCT_FORNECEDOR, FCT' +
        '_UND_MEDIDA, '
      '   FCT_VENCEDOR, FCT_VLR_FRETE, FCT_VLR_UNITARIO)'
      'values'
      
        '  (:FCT_COTACAO, :FCT_DT_ENTREGA, :FCT_EMPRESA, :FCT_FORNECEDOR,' +
        ' :FCT_UND_MEDIDA, '
      '   :FCT_VENCEDOR, :FCT_VLR_FRETE, :FCT_VLR_UNITARIO)')
    DeleteSQL.Strings = (
      'delete from FORNEC_COTACAO'
      'where'
      '  FCT_COTACAO = :OLD_FCT_COTACAO and'
      '  FCT_EMPRESA = :OLD_FCT_EMPRESA and'
      '  FCT_FORNECEDOR = :OLD_FCT_FORNECEDOR')
    Left = 279
    Top = 80
  end
  object PedidoCompra: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = PedidoCompraAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.DEP_NOME,'
      '       D.PESS_NOME,'
      '       E.UN_DESCRICAO,'
      '       F.CDP_DESCRICAO,'
      '      G.PRO_DESCRICAO'
      '  FROM PEDIDO_COMPRA A'
      ' INNER JOIN EMPRESA B ON A.PDC_EMPRESA = B.EMP_COD'
      ' INNER JOIN DEPARTAMENTO C ON A.PDC_DEPARTAMENTO = C.DEP_COD'
      ' INNER JOIN PESSOAS D ON A.PDC_FORNECEDOR = D.PESS_CODIGO'
      ' INNER JOIN UNIDADE E ON A.PDC_UNMEDIDA = E.UN_CODIGO'
      
        ' INNER JOIN CONDICAOPAGAMENTO F ON A.PDC_CONDICAO_PGTO = F.CDP_C' +
        'ODIGO'
      ' INNER JOIN PRODUTOS G ON A.PDC_EMPRESA = G.PRO_EMPRESA'
      '                      AND A.PDC_PRODUTO = G.PRO_CODIGO'
      ' WHERE A.PDC_EMPRESA = -1'
      ''
      '   ')
    UpdateObject = UPedidoCompra
    Left = 392
    Top = 32
    object PedidoCompraPDC_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'PDC_EMPRESA'
      Origin = '"PEDIDO_COMPRA"."PDC_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoCompraPDC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDC_CODIGO'
      Origin = '"PEDIDO_COMPRA"."PDC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoCompraPDC_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'PDC_DEPARTAMENTO'
      Origin = '"PEDIDO_COMPRA"."PDC_DEPARTAMENTO"'
      Required = True
    end
    object PedidoCompraPDC_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PDC_PRODUTO'
      Origin = '"PEDIDO_COMPRA"."PDC_PRODUTO"'
      Required = True
      Size = 30
    end
    object PedidoCompraPDC_FORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PDC_FORNECEDOR'
      Origin = '"PEDIDO_COMPRA"."PDC_FORNECEDOR"'
      Required = True
    end
    object PedidoCompraPDC_PREV_ENTREGA: TDateField
      DisplayLabel = 'Prev. Entrega'
      FieldName = 'PDC_PREV_ENTREGA'
      Origin = '"PEDIDO_COMPRA"."PDC_PREV_ENTREGA"'
      EditMask = '!99/99/0000;1;_'
    end
    object PedidoCompraPDC_VLR_FRETE: TIBBCDField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'PDC_VLR_FRETE'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_FRETE"'
      OnValidate = PedidoCompraPDC_VLR_FRETEValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_VLR_UNITARIO: TIBBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PDC_VLR_UNITARIO'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_UNITARIO"'
      OnValidate = PedidoCompraPDC_VLR_UNITARIOValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_VLR_BRUTO: TIBBCDField
      DisplayLabel = 'Vlr. Bruto'
      FieldName = 'PDC_VLR_BRUTO'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_BRUTO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_VLR_DESCONTO: TIBBCDField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'PDC_VLR_DESCONTO'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_DESCONTO"'
      OnValidate = PedidoCompraPDC_VLR_DESCONTOValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_VLR_LIQUIDO: TIBBCDField
      DisplayLabel = 'Vlr. L'#237'quido'
      FieldName = 'PDC_VLR_LIQUIDO'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_LIQUIDO"'
      OnValidate = PedidoCompraPDC_VLR_LIQUIDOValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_VLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'PDC_VLR_TOTAL'
      Origin = '"PEDIDO_COMPRA"."PDC_VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object PedidoCompraPDC_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'PDC_STATUS'
      Origin = '"PEDIDO_COMPRA"."PDC_STATUS"'
      Size = 1
    end
    object PedidoCompraPDC_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PDC_DATA'
      Origin = '"PEDIDO_COMPRA"."PDC_DATA"'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object PedidoCompraPDC_QTD_TOTAL: TIBBCDField
      DisplayLabel = 'Qtd.'
      FieldName = 'PDC_QTD_TOTAL'
      Origin = '"PEDIDO_COMPRA"."PDC_QTD_TOTAL"'
      OnValidate = PedidoCompraPDC_QTD_TOTALValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object PedidoCompraPDC_DATA_ENTREGA: TDateField
      DisplayLabel = 'Data de Entrega Efetiva'
      FieldName = 'PDC_DATA_ENTREGA'
      Origin = '"PEDIDO_COMPRA"."PDC_DATA_ENTREGA"'
      EditMask = '!99/99/0000;1;_'
    end
    object PedidoCompraPDC_OBS: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PDC_OBS'
      Origin = '"PEDIDO_COMPRA"."PDC_OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object PedidoCompraPDC_UNMEDIDA: TIntegerField
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'PDC_UNMEDIDA'
      Origin = '"PEDIDO_COMPRA"."PDC_UNMEDIDA"'
      Required = True
    end
    object PedidoCompraPDC_COTACAO_ORIGEM: TIntegerField
      DisplayLabel = 'Cota'#231#227'o Origem'
      FieldName = 'PDC_COTACAO_ORIGEM'
      Origin = '"PEDIDO_COMPRA"."PDC_COTACAO_ORIGEM"'
    end
    object PedidoCompraPDC_SOLICITICAO_ORIGEM: TIntegerField
      DisplayLabel = 'Solicita'#231#227'o Origem'
      FieldName = 'PDC_SOLICITICAO_ORIGEM'
      Origin = '"PEDIDO_COMPRA"."PDC_SOLICITICAO_ORIGEM"'
    end
    object PedidoCompraPDC_CONDICAO_PGTO: TIntegerField
      DisplayLabel = 'Condi'#231#227'o de Pagamento'
      FieldName = 'PDC_CONDICAO_PGTO'
      Origin = '"PEDIDO_COMPRA"."PDC_CONDICAO_PGTO"'
      Required = True
    end
    object PedidoCompraEMP_RAZAO: TIBStringField
      DisplayLabel = 'Emp. Raz'#227'o'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object PedidoCompraDEP_NOME: TIBStringField
      DisplayLabel = 'Departamento Nome'
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Size = 40
    end
    object PedidoCompraPESS_NOME: TIBStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object PedidoCompraUN_DESCRICAO: TIBStringField
      DisplayLabel = 'Unidade Desc.'
      FieldName = 'UN_DESCRICAO'
      Origin = '"UNIDADE"."UN_DESCRICAO"'
      Size = 60
    end
    object PedidoCompraCDP_DESCRICAO: TIBStringField
      DisplayLabel = 'Condi'#231#227'o Desc.'
      FieldName = 'CDP_DESCRICAO'
      Origin = '"CONDICAOPAGAMENTO"."CDP_DESCRICAO"'
      Size = 100
    end
    object PedidoCompraPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Produto Desc.'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
  end
  object DPedidoCompra: TDataSource
    AutoEdit = False
    DataSet = PedidoCompra
    Left = 392
    Top = 128
  end
  object UPedidoCompra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.DEP_NOME,'
      '       D.PESS_NOME,'
      '       E.UN_DESCRICAO,'
      '       F.CDP_DESCRICAO,'
      '      G.PRO_DESCRICAO'
      '  FROM PEDIDO_COMPRA A'
      ' INNER JOIN EMPRESA B ON A.PDC_EMPRESA = B.EMP_COD'
      ' INNER JOIN DEPARTAMENTO C ON A.PDC_DEPARTAMENTO = C.DEP_COD'
      ' INNER JOIN PESSOAS D ON A.PDC_FORNECEDOR = D.PESS_CODIGO'
      ' INNER JOIN UNIDADE E ON A.PDC_UNMEDIDA = E.UN_CODIGO'
      
        ' INNER JOIN CONDICAOPAGAMENTO F ON A.PDC_CONDICAO_PGTO = F.CDP_C' +
        'ODIGO'
      ' INNER JOIN PRODUTOS G ON A.PDC_EMPRESA = G.PRO_EMPRESA'
      '                      AND A.PDC_PRODUTO = G.PRO_CODIGO'
      'where'
      '  PDC_CODIGO = :PDC_CODIGO and'
      '  PDC_EMPRESA = :PDC_EMPRESA')
    ModifySQL.Strings = (
      'update PEDIDO_COMPRA'
      'set'
      '  PDC_CODIGO = :PDC_CODIGO,'
      '  PDC_CONDICAO_PGTO = :PDC_CONDICAO_PGTO,'
      '  PDC_COTACAO_ORIGEM = :PDC_COTACAO_ORIGEM,'
      '  PDC_DATA = :PDC_DATA,'
      '  PDC_DATA_ENTREGA = :PDC_DATA_ENTREGA,'
      '  PDC_DEPARTAMENTO = :PDC_DEPARTAMENTO,'
      '  PDC_EMPRESA = :PDC_EMPRESA,'
      '  PDC_FORNECEDOR = :PDC_FORNECEDOR,'
      '  PDC_OBS = :PDC_OBS,'
      '  PDC_PREV_ENTREGA = :PDC_PREV_ENTREGA,'
      '  PDC_PRODUTO = :PDC_PRODUTO,'
      '  PDC_QTD_TOTAL = :PDC_QTD_TOTAL,'
      '  PDC_SOLICITICAO_ORIGEM = :PDC_SOLICITICAO_ORIGEM,'
      '  PDC_STATUS = :PDC_STATUS,'
      '  PDC_UNMEDIDA = :PDC_UNMEDIDA,'
      '  PDC_VLR_BRUTO = :PDC_VLR_BRUTO,'
      '  PDC_VLR_DESCONTO = :PDC_VLR_DESCONTO,'
      '  PDC_VLR_FRETE = :PDC_VLR_FRETE,'
      '  PDC_VLR_LIQUIDO = :PDC_VLR_LIQUIDO,'
      '  PDC_VLR_TOTAL = :PDC_VLR_TOTAL,'
      '  PDC_VLR_UNITARIO = :PDC_VLR_UNITARIO'
      'where'
      '  PDC_CODIGO = :OLD_PDC_CODIGO and'
      '  PDC_EMPRESA = :OLD_PDC_EMPRESA')
    InsertSQL.Strings = (
      'insert into PEDIDO_COMPRA'
      
        '  (PDC_CODIGO, PDC_CONDICAO_PGTO, PDC_COTACAO_ORIGEM, PDC_DATA, ' +
        'PDC_DATA_ENTREGA, '
      
        '   PDC_DEPARTAMENTO, PDC_EMPRESA, PDC_FORNECEDOR, PDC_OBS, PDC_P' +
        'REV_ENTREGA, '
      
        '   PDC_PRODUTO, PDC_QTD_TOTAL, PDC_SOLICITICAO_ORIGEM, PDC_STATU' +
        'S, PDC_UNMEDIDA, '
      
        '   PDC_VLR_BRUTO, PDC_VLR_DESCONTO, PDC_VLR_FRETE, PDC_VLR_LIQUI' +
        'DO, PDC_VLR_TOTAL, '
      '   PDC_VLR_UNITARIO)'
      'values'
      
        '  (:PDC_CODIGO, :PDC_CONDICAO_PGTO, :PDC_COTACAO_ORIGEM, :PDC_DA' +
        'TA, :PDC_DATA_ENTREGA, '
      
        '   :PDC_DEPARTAMENTO, :PDC_EMPRESA, :PDC_FORNECEDOR, :PDC_OBS, :' +
        'PDC_PREV_ENTREGA, '
      
        '   :PDC_PRODUTO, :PDC_QTD_TOTAL, :PDC_SOLICITICAO_ORIGEM, :PDC_S' +
        'TATUS, '
      
        '   :PDC_UNMEDIDA, :PDC_VLR_BRUTO, :PDC_VLR_DESCONTO, :PDC_VLR_FR' +
        'ETE, :PDC_VLR_LIQUIDO, '
      '   :PDC_VLR_TOTAL, :PDC_VLR_UNITARIO)')
    DeleteSQL.Strings = (
      'delete from PEDIDO_COMPRA'
      'where'
      '  PDC_CODIGO = :OLD_PDC_CODIGO and'
      '  PDC_EMPRESA = :OLD_PDC_EMPRESA')
    Left = 392
    Top = 80
  end
  object UPessoa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select * '
      'from pessoas '
      'where'
      '  PESS_CODIGO = :PESS_CODIGO')
    ModifySQL.Strings = (
      'update pessoas'
      'set'
      '  PESS_APELIDO = :PESS_APELIDO,'
      '  PESS_BAIRRO = :PESS_BAIRRO,'
      '  PESS_CIDADE = :PESS_CIDADE,'
      '  PESS_CNPJ = :PESS_CNPJ,'
      '  PESS_CODIGO = :PESS_CODIGO,'
      '  PESS_COMPLEMENTO = :PESS_COMPLEMENTO,'
      '  PESS_CONTATO = :PESS_CONTATO,'
      '  PESS_CPF = :PESS_CPF,'
      '  PESS_DTCADASTRO = :PESS_DTCADASTRO,'
      '  PESS_EMAIL = :PESS_EMAIL,'
      '  PESS_FAX = :PESS_FAX,'
      '  PESS_INSCESTADUAL = :PESS_INSCESTADUAL,'
      '  PESS_INSCMUNICIPAL = :PESS_INSCMUNICIPAL,'
      '  PESS_LOGRADOURO = :PESS_LOGRADOURO,'
      '  PESS_NOME = :PESS_NOME,'
      '  PESS_NR = :PESS_NR,'
      '  PESS_PAIS = :PESS_PAIS,'
      '  PESS_RAMAL = :PESS_RAMAL,'
      '  PESS_RG = :PESS_RG,'
      '  PESS_TEL1 = :PESS_TEL1,'
      '  PESS_TEL2 = :PESS_TEL2,'
      '  PESS_TEL3 = :PESS_TEL3,'
      '  PESS_TELCONTATO = :PESS_TELCONTATO,'
      '  PESS_TIPO = :PESS_TIPO,'
      '  PESS_UF = :PESS_UF'
      'where'
      '  PESS_CODIGO = :OLD_PESS_CODIGO')
    InsertSQL.Strings = (
      'insert into pessoas'
      
        '  (PESS_APELIDO, PESS_BAIRRO, PESS_CIDADE, PESS_CNPJ, PESS_CODIG' +
        'O, PESS_COMPLEMENTO, '
      
        '   PESS_CONTATO, PESS_CPF, PESS_DTCADASTRO, PESS_EMAIL, PESS_FAX' +
        ', PESS_INSCESTADUAL, '
      
        '   PESS_INSCMUNICIPAL, PESS_LOGRADOURO, PESS_NOME, PESS_NR, PESS' +
        '_PAIS, '
      
        '   PESS_RAMAL, PESS_RG, PESS_TEL1, PESS_TEL2, PESS_TEL3, PESS_TE' +
        'LCONTATO, '
      '   PESS_TIPO, PESS_UF)'
      'values'
      
        '  (:PESS_APELIDO, :PESS_BAIRRO, :PESS_CIDADE, :PESS_CNPJ, :PESS_' +
        'CODIGO, '
      
        '   :PESS_COMPLEMENTO, :PESS_CONTATO, :PESS_CPF, :PESS_DTCADASTRO' +
        ', :PESS_EMAIL, '
      
        '   :PESS_FAX, :PESS_INSCESTADUAL, :PESS_INSCMUNICIPAL, :PESS_LOG' +
        'RADOURO, '
      
        '   :PESS_NOME, :PESS_NR, :PESS_PAIS, :PESS_RAMAL, :PESS_RG, :PES' +
        'S_TEL1, '
      
        '   :PESS_TEL2, :PESS_TEL3, :PESS_TELCONTATO, :PESS_TIPO, :PESS_U' +
        'F)')
    DeleteSQL.Strings = (
      'delete from pessoas'
      'where'
      '  PESS_CODIGO = :OLD_PESS_CODIGO')
    Left = 480
    Top = 88
  end
  object Pessoa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from pessoas')
    UpdateObject = UPessoa
    Left = 480
    Top = 40
    object PessoaPESS_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESS_CODIGO'
      Origin = '"PESSOAS"."PESS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaPESS_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object PessoaPESS_APELIDO: TIBStringField
      DisplayLabel = 'Apelido'
      FieldName = 'PESS_APELIDO'
      Origin = '"PESSOAS"."PESS_APELIDO"'
      Size = 60
    end
    object PessoaPESS_CONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'PESS_CONTATO'
      Origin = '"PESSOAS"."PESS_CONTATO"'
      Size = 60
    end
    object PessoaPESS_TELCONTATO: TIBStringField
      DisplayLabel = 'Tel. Contato'
      FieldName = 'PESS_TELCONTATO'
      Origin = '"PESSOAS"."PESS_TELCONTATO"'
      Size = 15
    end
    object PessoaPESS_TEL1: TIBStringField
      DisplayLabel = 'Telefone 1'
      FieldName = 'PESS_TEL1'
      Origin = '"PESSOAS"."PESS_TEL1"'
      Size = 15
    end
    object PessoaPESS_TEL2: TIBStringField
      DisplayLabel = 'Telefone 2'
      FieldName = 'PESS_TEL2'
      Origin = '"PESSOAS"."PESS_TEL2"'
      Size = 15
    end
    object PessoaPESS_TEL3: TIBStringField
      DisplayLabel = 'Telefone 3'
      FieldName = 'PESS_TEL3'
      Origin = '"PESSOAS"."PESS_TEL3"'
      Size = 15
    end
    object PessoaPESS_FAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'PESS_FAX'
      Origin = '"PESSOAS"."PESS_FAX"'
      Size = 12
    end
    object PessoaPESS_RAMAL: TIntegerField
      DisplayLabel = 'Ramal'
      FieldName = 'PESS_RAMAL'
      Origin = '"PESSOAS"."PESS_RAMAL"'
    end
    object PessoaPESS_CNPJ: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'PESS_CNPJ'
      Origin = '"PESSOAS"."PESS_CNPJ"'
      Size = 14
    end
    object PessoaPESS_CPF: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'PESS_CPF'
      Origin = '"PESSOAS"."PESS_CPF"'
      Size = 11
    end
    object PessoaPESS_RG: TIBStringField
      DisplayLabel = 'RG'
      FieldName = 'PESS_RG'
      Origin = '"PESSOAS"."PESS_RG"'
      Size = 10
    end
    object PessoaPESS_INSCESTADUAL: TIBStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'PESS_INSCESTADUAL'
      Origin = '"PESSOAS"."PESS_INSCESTADUAL"'
      Size = 9
    end
    object PessoaPESS_INSCMUNICIPAL: TIBStringField
      DisplayLabel = 'Insc. Municipal'
      FieldName = 'PESS_INSCMUNICIPAL'
      Origin = '"PESSOAS"."PESS_INSCMUNICIPAL"'
      Size = 15
    end
    object PessoaPESS_EMAIL: TIBStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'PESS_EMAIL'
      Origin = '"PESSOAS"."PESS_EMAIL"'
      Size = 60
    end
    object PessoaPESS_DTCADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'PESS_DTCADASTRO'
      Origin = '"PESSOAS"."PESS_DTCADASTRO"'
      Required = True
    end
    object PessoaPESS_LOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'PESS_LOGRADOURO'
      Origin = '"PESSOAS"."PESS_LOGRADOURO"'
      Size = 60
    end
    object PessoaPESS_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'PESS_BAIRRO'
      Origin = '"PESSOAS"."PESS_BAIRRO"'
      Size = 30
    end
    object PessoaPESS_COMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'PESS_COMPLEMENTO'
      Origin = '"PESSOAS"."PESS_COMPLEMENTO"'
      Size = 30
    end
    object PessoaPESS_NR: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'PESS_NR'
      Origin = '"PESSOAS"."PESS_NR"'
      Size = 5
    end
    object PessoaPESS_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'PESS_CIDADE'
      Origin = '"PESSOAS"."PESS_CIDADE"'
    end
    object PessoaPESS_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'PESS_UF'
      Origin = '"PESSOAS"."PESS_UF"'
      Size = 2
    end
    object PessoaPESS_PAIS: TIBStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PESS_PAIS'
      Origin = '"PESSOAS"."PESS_PAIS"'
    end
    object PessoaPESS_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PESS_TIPO'
      Origin = '"PESSOAS"."PESS_TIPO"'
      Size = 4
    end
  end
  object DSPessoa: TDataSource
    AutoEdit = False
    DataSet = Pessoa
    Left = 480
    Top = 136
  end
  object NotaEntrada: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = NotaEntradaAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.PESS_NOME'
      '  FROM NOTA_ENTRADA A'
      ' INNER JOIN EMPRESA B ON A.NTE_EMPRESA = B.EMP_COD'
      ' INNER JOIN PESSOAS C ON A.NTE_PESSOA = C.PESS_CODIGO'
      ' WHERE A.NTE_EMPRESA = -1   ')
    UpdateObject = UNotaEntrada
    Left = 568
    Top = 40
    object NotaEntradaNTE_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'NTE_EMPRESA'
      Origin = '"NOTA_ENTRADA"."NTE_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NotaEntradaNTE_NR_NOTA: TIntegerField
      DisplayLabel = 'Nr. Nota'
      FieldName = 'NTE_NR_NOTA'
      Origin = '"NOTA_ENTRADA"."NTE_NR_NOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NotaEntradaNTE_PESSOA: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'NTE_PESSOA'
      Origin = '"NOTA_ENTRADA"."NTE_PESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NotaEntradaNTE_DATA: TDateField
      DisplayLabel = 'Data da Nota'
      FieldName = 'NTE_DATA'
      Origin = '"NOTA_ENTRADA"."NTE_DATA"'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object NotaEntradaNTE_VLR_FRETE: TIBBCDField
      DisplayLabel = 'Valor Frete'
      FieldName = 'NTE_VLR_FRETE'
      Origin = '"NOTA_ENTRADA"."NTE_VLR_FRETE"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object NotaEntradaNTE_VLR_PIS: TIBBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'NTE_VLR_PIS'
      Origin = '"NOTA_ENTRADA"."NTE_VLR_PIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object NotaEntradaNTE_VLR_ICMS: TIBBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'NTE_VLR_ICMS'
      Origin = '"NOTA_ENTRADA"."NTE_VLR_ICMS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object NotaEntradaNTE_VLR_TOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'NTE_VLR_TOTAL'
      Origin = '"NOTA_ENTRADA"."NTE_VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object NotaEntradaEMP_RAZAO: TIBStringField
      DisplayLabel = 'Emp. Raz'#227'o'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object NotaEntradaPESS_NOME: TIBStringField
      DisplayLabel = 'Nome da Pessoa'
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
  end
  object UNotaEntrada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.EMP_RAZAO,'
      '       C.PESS_NOME'
      '  FROM NOTA_ENTRADA A'
      ' INNER JOIN EMPRESA B ON A.NTE_EMPRESA = B.EMP_COD'
      ' INNER JOIN PESSOAS C ON A.NTE_PESSOA = C.PESS_CODIGO'
      'where'
      '  NTE_EMPRESA = :NTE_EMPRESA and'
      '  NTE_NR_NOTA = :NTE_NR_NOTA and'
      '  NTE_PESSOA = :NTE_PESSOA')
    ModifySQL.Strings = (
      'update NOTA_ENTRADA'
      'set'
      '  NTE_DATA = :NTE_DATA,'
      '  NTE_EMPRESA = :NTE_EMPRESA,'
      '  NTE_NR_NOTA = :NTE_NR_NOTA,'
      '  NTE_PESSOA = :NTE_PESSOA,'
      '  NTE_VLR_FRETE = :NTE_VLR_FRETE,'
      '  NTE_VLR_ICMS = :NTE_VLR_ICMS,'
      '  NTE_VLR_PIS = :NTE_VLR_PIS,'
      '  NTE_VLR_TOTAL = :NTE_VLR_TOTAL'
      'where'
      '  NTE_EMPRESA = :OLD_NTE_EMPRESA and'
      '  NTE_NR_NOTA = :OLD_NTE_NR_NOTA and'
      '  NTE_PESSOA = :OLD_NTE_PESSOA')
    InsertSQL.Strings = (
      'insert into NOTA_ENTRADA'
      
        '  (NTE_DATA, NTE_EMPRESA, NTE_NR_NOTA, NTE_PESSOA, NTE_VLR_FRETE' +
        ', NTE_VLR_ICMS, '
      '   NTE_VLR_PIS, NTE_VLR_TOTAL)'
      'values'
      
        '  (:NTE_DATA, :NTE_EMPRESA, :NTE_NR_NOTA, :NTE_PESSOA, :NTE_VLR_' +
        'FRETE, '
      '   :NTE_VLR_ICMS, :NTE_VLR_PIS, :NTE_VLR_TOTAL)')
    DeleteSQL.Strings = (
      'delete from NOTA_ENTRADA'
      'where'
      '  NTE_EMPRESA = :OLD_NTE_EMPRESA and'
      '  NTE_NR_NOTA = :OLD_NTE_NR_NOTA and'
      '  NTE_PESSOA = :OLD_NTE_PESSOA')
    Left = 568
    Top = 96
  end
  object DNotaEntrada: TDataSource
    AutoEdit = False
    DataSet = NotaEntrada
    Left = 568
    Top = 144
  end
  object ItemNotaEntrada: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = ItemNotaEntradaAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '       B.PRO_DESCRICAO'
      '  FROM ITEM_NOTA_ENTRADA A'
      ' INNER JOIN PRODUTOS B ON A.INE_EMPRESA = B.PRO_EMPRESA'
      '                      AND A.INE_PRODUTO = B.PRO_CODIGO'
      ' WHERE A.INE_EMPRESA = -1   ')
    UpdateObject = UItemNotaEntrada
    Left = 664
    Top = 40
    object ItemNotaEntradaINE_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'INE_EMPRESA'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ItemNotaEntradaINE_NR_NOTA: TIntegerField
      DisplayLabel = 'Nr. Nota'
      FieldName = 'INE_NR_NOTA'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_NR_NOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ItemNotaEntradaINE_PESSOA: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'INE_PESSOA'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_PESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ItemNotaEntradaINE_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'INE_PRODUTO'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object ItemNotaEntradaINE_VLR_BRUTO: TIBBCDField
      DisplayLabel = 'Valor Bruto'
      FieldName = 'INE_VLR_BRUTO'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_BRUTO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_VLR_DESC: TIBBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'INE_VLR_DESC'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_DESC"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_VLR_LIQUIDO: TIBBCDField
      DisplayLabel = 'Valor L'#237'quido'
      FieldName = 'INE_VLR_LIQUIDO'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_LIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_VLR_PIS: TIBBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'INE_VLR_PIS'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_PIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_VLR_ICMS: TIBBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'INE_VLR_ICMS'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_ICMS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_VLR_TOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'INE_VLR_TOTAL'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaINE_QTD: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'INE_QTD'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_QTD"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ItemNotaEntradaPRO_DESCRICAO: TIBStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 60
    end
    object ItemNotaEntradaINE_VLR_UNITARIO: TIBBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'INE_VLR_UNITARIO'
      Origin = '"ITEM_NOTA_ENTRADA"."INE_VLR_UNITARIO"'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
  end
  object UItemNotaEntrada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '       B.PRO_DESCRICAO'
      '  FROM ITEM_NOTA_ENTRADA A'
      ' INNER JOIN PRODUTOS B ON A.INE_EMPRESA = B.PRO_EMPRESA'
      '                      AND A.INE_PRODUTO = B.PRO_CODIGO'
      'where'
      '  INE_EMPRESA = :INE_EMPRESA and'
      '  INE_NR_NOTA = :INE_NR_NOTA and'
      '  INE_PESSOA = :INE_PESSOA and'
      '  INE_PRODUTO = :INE_PRODUTO')
    ModifySQL.Strings = (
      'update ITEM_NOTA_ENTRADA'
      'set'
      '  INE_EMPRESA = :INE_EMPRESA,'
      '  INE_NR_NOTA = :INE_NR_NOTA,'
      '  INE_PESSOA = :INE_PESSOA,'
      '  INE_PRODUTO = :INE_PRODUTO,'
      '  INE_QTD = :INE_QTD,'
      '  INE_VLR_BRUTO = :INE_VLR_BRUTO,'
      '  INE_VLR_DESC = :INE_VLR_DESC,'
      '  INE_VLR_ICMS = :INE_VLR_ICMS,'
      '  INE_VLR_LIQUIDO = :INE_VLR_LIQUIDO,'
      '  INE_VLR_PIS = :INE_VLR_PIS,'
      '  INE_VLR_TOTAL = :INE_VLR_TOTAL,'
      '  INE_VLR_UNITARIO = :INE_VLR_UNITARIO'
      'where'
      '  INE_EMPRESA = :OLD_INE_EMPRESA and'
      '  INE_NR_NOTA = :OLD_INE_NR_NOTA and'
      '  INE_PESSOA = :OLD_INE_PESSOA and'
      '  INE_PRODUTO = :OLD_INE_PRODUTO')
    InsertSQL.Strings = (
      'insert into ITEM_NOTA_ENTRADA'
      
        '  (INE_EMPRESA, INE_NR_NOTA, INE_PESSOA, INE_PRODUTO, INE_QTD, I' +
        'NE_VLR_BRUTO, '
      
        '   INE_VLR_DESC, INE_VLR_ICMS, INE_VLR_LIQUIDO, INE_VLR_PIS, INE' +
        '_VLR_TOTAL, INE_VLR_UNITARIO)'
      'values'
      
        '  (:INE_EMPRESA, :INE_NR_NOTA, :INE_PESSOA, :INE_PRODUTO, :INE_Q' +
        'TD, :INE_VLR_BRUTO,'
      
        '   :INE_VLR_DESC, :INE_VLR_ICMS, :INE_VLR_LIQUIDO, :INE_VLR_PIS,' +
        ' :INE_VLR_TOTAL, :INE_VLR_UNITARIO)')
    DeleteSQL.Strings = (
      'delete from ITEM_NOTA_ENTRADA'
      'where'
      '  INE_EMPRESA = :OLD_INE_EMPRESA and'
      '  INE_NR_NOTA = :OLD_INE_NR_NOTA and'
      '  INE_PESSOA = :OLD_INE_PESSOA and'
      '  INE_PRODUTO = :OLD_INE_PRODUTO')
    Left = 664
    Top = 96
  end
  object DItemNotaEntrada: TDataSource
    AutoEdit = False
    DataSet = ItemNotaEntrada
    Left = 664
    Top = 144
  end
end
