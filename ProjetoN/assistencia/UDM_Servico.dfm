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
    object IB_ChamadoCHA_PROPRIETARIO: TIntegerField
      DisplayLabel = 'Proprietario'
      FieldName = 'CHA_PROPRIETARIO'
      Origin = '"CHAMADOS"."CHA_PROPRIETARIO"'
      Required = True
    end
    object IB_ChamadoCHA_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 100
    end
    object IB_ChamadoCHA_PRIORIDADE: TIBStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
    end
    object IB_ChamadoCHA_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
      Size = 15
    end
    object IB_ChamadoCHA_DATA_ENTRADA: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
      Required = True
    end
    object IB_ChamadoCHA_TIPO_ERRO: TIntegerField
      DisplayLabel = 'Tipo Erro'
      FieldName = 'CHA_TIPO_ERRO'
      Origin = '"CHAMADOS"."CHA_TIPO_ERRO"'
      Required = True
    end
    object IB_ChamadoCHA_DATA_SAIDA: TDateField
      DisplayLabel = 'Data de Saida'
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_ChamadoCHA_PRODUTO_UTILIZADO: TIntegerField
      DisplayLabel = 'Produto Utilizados'
      FieldName = 'CHA_PRODUTO_UTILIZADO'
      Origin = '"CHAMADOS"."CHA_PRODUTO_UTILIZADO"'
      Visible = False
    end
  end
  object UPS_Chamado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CHA_CODIGO,'
      '  CHA_EMPRESA,'
      '  CHA_DEPARTAMENTO,'
      '  CHA_FUNCIONARIO,'
      '  CHA_DESCRICAO,'
      '  CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA,'
      '  CHA_PROPRIETARIO,'
      '  CHA_PRIORIDADE,'
      '  CHA_STATUS,'
      '  CHA_PRODUTO_UTILIZADO,'
      '  CHA_TIPO_ERRO'
      'from CHAMADOS '
      'where'
      '  CHA_CODIGO = :CHA_CODIGO')
    ModifySQL.Strings = (
      'update CHAMADOS'
      'set'
      '  CHA_CODIGO = :CHA_CODIGO,'
      '  CHA_DATA_ENTRADA = :CHA_DATA_ENTRADA,'
      '  CHA_DATA_SAIDA = :CHA_DATA_SAIDA,'
      '  CHA_DEPARTAMENTO = :CHA_DEPARTAMENTO,'
      '  CHA_DESCRICAO = :CHA_DESCRICAO,'
      '  CHA_EMPRESA = :CHA_EMPRESA,'
      '  CHA_FUNCIONARIO = :CHA_FUNCIONARIO,'
      '  CHA_PRIORIDADE = :CHA_PRIORIDADE,'
      '  CHA_PRODUTO_UTILIZADO = :CHA_PRODUTO_UTILIZADO,'
      '  CHA_PROPRIETARIO = :CHA_PROPRIETARIO,'
      '  CHA_STATUS = :CHA_STATUS,'
      '  CHA_TIPO_ERRO = :CHA_TIPO_ERRO'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    InsertSQL.Strings = (
      'insert into CHAMADOS'
      
        '  (CHA_CODIGO, CHA_DATA_ENTRADA, CHA_DATA_SAIDA, CHA_DEPARTAMENT' +
        'O, CHA_DESCRICAO, '
      
        '   CHA_EMPRESA, CHA_FUNCIONARIO, CHA_PRIORIDADE, CHA_PRODUTO_UTI' +
        'LIZADO, '
      '   CHA_PROPRIETARIO, CHA_STATUS, CHA_TIPO_ERRO)'
      'values'
      
        '  (:CHA_CODIGO, :CHA_DATA_ENTRADA, :CHA_DATA_SAIDA, :CHA_DEPARTA' +
        'MENTO, '
      
        '   :CHA_DESCRICAO, :CHA_EMPRESA, :CHA_FUNCIONARIO, :CHA_PRIORIDA' +
        'DE, :CHA_PRODUTO_UTILIZADO, '
      '   :CHA_PROPRIETARIO, :CHA_STATUS, :CHA_TIPO_ERRO)')
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
  object IB_Produto_Utilizado: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from PRODUTOS_UTILIZADO')
    UpdateObject = UPS_Produto_Usado
    Left = 48
    Top = 144
    object IB_Produto_UtilizadoPRU_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'PRU_CODIGO'
      Origin = '"PRODUTOS_UTILIZADO"."PRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_Produto_UtilizadoPRU_CHAMADO: TIntegerField
      DisplayLabel = 'Codigo Chamado'
      FieldName = 'PRU_CHAMADO'
      Origin = '"PRODUTOS_UTILIZADO"."PRU_CHAMADO"'
      Required = True
    end
    object IB_Produto_UtilizadoPRU_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRU_PRODUTO'
      Origin = '"PRODUTOS_UTILIZADO"."PRU_PRODUTO"'
    end
  end
  object UPS_Produto_Usado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRU_CODIGO,'
      '  PRU_CHAMADO,'
      '  PRU_PRODUTO'
      'from PRODUTOS_UTILIZADO '
      'where'
      '  PRU_CODIGO = :PRU_CODIGO')
    ModifySQL.Strings = (
      'update PRODUTOS_UTILIZADO'
      'set'
      '  PRU_CHAMADO = :PRU_CHAMADO,'
      '  PRU_CODIGO = :PRU_CODIGO,'
      '  PRU_PRODUTO = :PRU_PRODUTO'
      'where'
      '  PRU_CODIGO = :OLD_PRU_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS_UTILIZADO'
      '  (PRU_CHAMADO, PRU_CODIGO, PRU_PRODUTO)'
      'values'
      '  (:PRU_CHAMADO, :PRU_CODIGO, :PRU_PRODUTO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOS_UTILIZADO'
      'where'
      '  PRU_CODIGO = :OLD_PRU_CODIGO')
    Left = 248
    Top = 152
  end
  object DS_Produto_Utilizado: TDataSource
    DataSet = IB_Produto_Utilizado
    Left = 448
    Top = 152
  end
  object IB_Tipo_Erro: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TIPOS_ERROS')
    UpdateObject = UPS_Tipo_Erro
    Left = 48
    Top = 80
    object IB_Tipo_ErroTER_CODIGO: TIBStringField
      DisplayLabel = 'Codigo'
      FieldName = 'TER_CODIGO'
      Origin = '"TIPOS_ERROS"."TER_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object IB_Tipo_ErroTER_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TER_DESCRICAO'
      Origin = '"TIPOS_ERROS"."TER_DESCRICAO"'
    end
  end
  object UPS_Tipo_Erro: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TER_CODIGO,'
      '  TER_DESCRICAO'
      'from TIPOS_ERROS '
      'where'
      '  TER_CODIGO = :TER_CODIGO')
    ModifySQL.Strings = (
      'update TIPOS_ERROS'
      'set'
      '  TER_CODIGO = :TER_CODIGO,'
      '  TER_DESCRICAO = :TER_DESCRICAO'
      'where'
      '  TER_CODIGO = :OLD_TER_CODIGO')
    InsertSQL.Strings = (
      'insert into TIPOS_ERROS'
      '  (TER_CODIGO, TER_DESCRICAO)'
      'values'
      '  (:TER_CODIGO, :TER_DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TIPOS_ERROS'
      'where'
      '  TER_CODIGO = :OLD_TER_CODIGO')
    Left = 240
    Top = 80
  end
  object DS_Tipo_Erro: TDataSource
    DataSet = IB_Tipo_Erro
    Left = 456
    Top = 80
  end
end
