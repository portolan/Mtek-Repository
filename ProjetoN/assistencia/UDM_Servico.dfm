object DM_Servico: TDM_Servico
  OldCreateOrder = False
  Height = 351
  Width = 523
  object IB_Chamado: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = IB_ChamadoAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*, B.emp_razao FROM CHAMADOS A'
      'INNER join EMPRESA B ON A.cha_empresa = B.emp_cod')
    UpdateObject = UPS_Chamado
    Left = 48
    Top = 8
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
    object IB_ChamadoEMP_RAZAO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
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
      DisplayFormat = 'DD/MM/AAAA'
      EditMask = '!99/99/00;1;_'
    end
    object IB_ChamadoCHA_TIPO_ERRO: TIntegerField
      DisplayLabel = 'Tipo de Erro'
      FieldName = 'CHA_TIPO_ERRO'
      Origin = '"CHAMADOS"."CHA_TIPO_ERRO"'
      Required = True
    end
    object IB_ChamadoCHA_DATA_SAIDA: TDateField
      DisplayLabel = 'Data de Saida'
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
      DisplayFormat = 'DD/MM/AAAA'
      EditMask = '!99/99/00;1;_'
    end
  end
  object UPS_Chamado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao '
      'FROM CHAMADOS A'
      'INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod'
      'where'
      '  CHA_CODIGO = :CHA_CODIGO AND'
      '  CHA_EMPRESA = :CHA_EMPRESA')
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
      '  CHA_PROPRIETARIO = :CHA_PROPRIETARIO,'
      '  CHA_STATUS = :CHA_STATUS,'
      '  CHA_TIPO_ERRO = :CHA_TIPO_ERRO,'
      '  EMP_RAZAO = :EMP_RAZAO'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    InsertSQL.Strings = (
      'insert into CHAMADOS'
      
        '  (CHA_CODIGO, CHA_DATA_ENTRADA, CHA_DATA_SAIDA, CHA_DEPARTAMENT' +
        'O, CHA_DESCRICAO, '
      
        '   CHA_EMPRESA, CHA_FUNCIONARIO, CHA_PRIORIDADE, CHA_PROPRIETARI' +
        'O, CHA_STATUS, '
      '   CHA_TIPO_ERRO, EMP_RAZAO)'
      'values'
      
        '  (:CHA_CODIGO, :CHA_DATA_ENTRADA, :CHA_DATA_SAIDA, :CHA_DEPARTA' +
        'MENTO, '
      
        '   :CHA_DESCRICAO, :CHA_EMPRESA, :CHA_FUNCIONARIO, :CHA_PRIORIDA' +
        'DE, :CHA_PROPRIETARIO, '
      '   :CHA_STATUS, :CHA_TIPO_ERRO, :EMP_RAZAO)')
    DeleteSQL.Strings = (
      'delete from CHAMADOS'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    Left = 48
    Top = 88
  end
  object DS_Chamado: TDataSource
    DataSet = IB_Chamado
    Left = 48
    Top = 176
  end
  object IB_Tipo_Erro: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    AfterInsert = IB_Tipo_ErroAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TIPOS_ERROS')
    UpdateObject = UPS_Tipo_Erro
    Left = 192
    Top = 8
    object IB_Tipo_ErroTER_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'TER_CODIGO'
      Origin = '"TIPOS_ERROS"."TER_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_Tipo_ErroTER_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TER_DESCRICAO'
      Origin = '"TIPOS_ERROS"."TER_DESCRICAO"'
      Required = True
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
    Left = 192
    Top = 96
  end
  object DS_Tipo_Erro: TDataSource
    DataSet = IB_Tipo_Erro
    Left = 192
    Top = 176
  end
end
