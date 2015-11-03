object DM_Servico: TDM_Servico
  OldCreateOrder = False
  Height = 351
  Width = 523
  object IB_Chamado: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * From CHAMADOS')
    UpdateObject = UPS_Chamado
    Left = 48
    Top = 224
    object IB_ChamadoCHA_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CHA_CODIGO'
      Origin = '"CHAMADOS"."CHA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoCHA_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CHA_EMPRESA'
      Origin = '"CHAMADOS"."CHA_EMPRESA"'
      Required = True
    end
    object IB_ChamadoCHA_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CHA_DEPARTAMENTO'
      Origin = '"CHAMADOS"."CHA_DEPARTAMENTO"'
      Required = True
    end
    object IB_ChamadoCHA_FUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcionario'
      FieldName = 'CHA_FUNCIONARIO'
      Origin = '"CHAMADOS"."CHA_FUNCIONARIO"'
      Required = True
    end
    object IB_ChamadoCHA_PROPRIETARIO: TIBStringField
      DisplayLabel = 'Proprietario'
      FieldName = 'CHA_PROPRIETARIO'
      Origin = '"CHAMADOS"."CHA_PROPRIETARIO"'
      Required = True
      Size = 60
    end
    object IB_ChamadoCHA_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 100
    end
    object IB_ChamadoCHA_PRIORIDADE: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
    end
    object IB_ChamadoCHA_STATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
    end
    object IB_ChamadoCHA_DATA_ENTRADA: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
    end
    object IB_ChamadoCHA_DATA_SAIDA: TDateField
      DisplayLabel = 'Data de Saida'
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_ChamadoCHA_PRODUTOS_UTILIZADOS: TIntegerField
      DisplayLabel = 'Produtos Utilizado'
      FieldName = 'CHA_PRODUTOS_UTILIZADOS'
      Origin = '"CHAMADOS"."CHA_PRODUTOS_UTILIZADOS"'
    end
  end
  object UPS_Chamado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CHA_CODIGO,'
      '  CHA_EMPRESA,'
      '  CHA_DEPARTAMENTO,'
      '  CHA_FUNCIONARIO,'
      '  CHA_PROPRIETARIO,'
      '  CHA_DESCRICAO,'
      '  CHA_PRIORIDADE,'
      '  CHA_STATUS,'
      '  CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA,'
      '  CHA_PRODUTOS_UTILIZADOS'
      'from CHAMADOS '
      'where'
      '  CHA_CODIGO = :CHA_CODIGO')
    ModifySQL.Strings = (
      'update CHAMADOS'
      'set'
      '  CHA_DATA_ENTRADA = :CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA = :CHA_DATA_SAIDA,'
      '  CHA_DEPARTAMENTO = :CHA_DEPARTAMENTO,'
      '  CHA_DESCRICAO = :CHA_DESCRICAO,'
      '  CHA_EMPRESA = :CHA_EMPRESA,'
      '  CHA_FUNCIONARIO = :CHA_FUNCIONARIO,'
      '  CHA_PRIORIDADE = :CHA_PRIORIDADE,'
      '  CHA_PRODUTOS_UTILIZADOS = :CHA_PRODUTOS_UTILIZADOS,'
      '  CHA_PROPRIETARIO = :CHA_PROPRIETARIO,'
      '  CHA_STATUS = :CHA_STATUS'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    InsertSQL.Strings = (
      'insert into CHAMADOS'
      
        '  (CHA_DATA_ENTRADA, CHA_DATA_SAIDA, CHA_DEPARTAMENTO, CHA_DESCR' +
        'ICAO, CHA_EMPRESA, '
      
        '   CHA_FUNCIONARIO, CHA_PRIORIDADE, CHA_PRODUTOS_UTILIZADOS, CHA' +
        '_PROPRIETARIO, '
      '   CHA_STATUS)'
      'values'
      
        '  (:CHA_DATA_ENTRADA, :CHA_DATA_SAIDA, :CHA_DEPARTAMENTO, :CHA_D' +
        'ESCRICAO, '
      
        '   :CHA_EMPRESA, :CHA_FUNCIONARIO, :CHA_PRIORIDADE, :CHA_PRODUTO' +
        'S_UTILIZADOS, '
      '   :CHA_PROPRIETARIO, :CHA_STATUS)')
    DeleteSQL.Strings = (
      'delete from CHAMADOS'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    Left = 248
    Top = 224
  end
  object DS_Chamado: TDataSource
    DataSet = IB_Chamado
    Left = 448
    Top = 232
  end
  object UPS_Produto_Utilizado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRU_CODIGO,'
      '  PRU_CHAMADO,'
      '  PRU_PRODUTO,'
      '  PRU_QTD,'
      '  PRU_VL_UNITARIO,'
      '  PRU_VL_TOTAL'
      'from PRODUTOS_UTILIZADOS '
      'where'
      '  PRU_CHAMADO = :PRU_CHAMADO')
    ModifySQL.Strings = (
      'update PRODUTOS_UTILIZADOS'
      'set'
      '  PRU_CHAMADO = :PRU_CHAMADO,'
      '  PRU_CODIGO = :PRU_CODIGO,'
      '  PRU_PRODUTO = :PRU_PRODUTO,'
      '  PRU_QTD = :PRU_QTD,'
      '  PRU_VL_TOTAL = :PRU_VL_TOTAL,'
      '  PRU_VL_UNITARIO = :PRU_VL_UNITARIO'
      'where'
      '  PRU_CHAMADO = :OLD_PRU_CHAMADO')
    InsertSQL.Strings = (
      'insert into PRODUTOS_UTILIZADOS'
      
        '  (PRU_CHAMADO, PRU_CODIGO, PRU_PRODUTO, PRU_QTD, PRU_VL_TOTAL, ' +
        'PRU_VL_UNITARIO)'
      'values'
      
        '  (:PRU_CHAMADO, :PRU_CODIGO, :PRU_PRODUTO, :PRU_QTD, :PRU_VL_TO' +
        'TAL, :PRU_VL_UNITARIO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOS_UTILIZADOS'
      'where'
      '  PRU_CHAMADO = :OLD_PRU_CHAMADO')
    Left = 248
    Top = 152
  end
  object DS_Produto_Utilizado: TDataSource
    DataSet = IB_Produto_Utilizado
    Left = 448
    Top = 152
  end
  object IB_Produto_Utilizado: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS_UTILIZADOS')
    Left = 48
    Top = 144
    object IB_Produto_UtilizadoPRU_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'PRU_CODIGO'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_Produto_UtilizadoPRU_CHAMADO: TIntegerField
      DisplayLabel = 'Chamado'
      FieldName = 'PRU_CHAMADO'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_CHAMADO"'
    end
    object IB_Produto_UtilizadoPRU_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRU_PRODUTO'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_PRODUTO"'
      Size = 30
    end
    object IB_Produto_UtilizadoPRU_QTD: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRU_QTD'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_QTD"'
      Required = True
      Precision = 18
      Size = 2
    end
    object IB_Produto_UtilizadoPRU_VL_UNITARIO: TIBBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'PRU_VL_UNITARIO'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_VL_UNITARIO"'
      Precision = 18
      Size = 2
    end
    object IB_Produto_UtilizadoPRU_VL_TOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'PRU_VL_TOTAL'
      Origin = '"PRODUTOS_UTILIZADOS"."PRU_VL_TOTAL"'
      Precision = 18
      Size = 2
    end
  end
end
