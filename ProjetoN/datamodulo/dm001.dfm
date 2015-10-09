object dmPedido: TdmPedido
  OldCreateOrder = False
  Height = 299
  Width = 683
  object Pedido: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM PEDIDO A'
      ' WHERE A.PED_CODIGO = -1   ')
    UpdateObject = UPedido
    Left = 72
    Top = 40
    object PedidoPED_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'PED_EMPRESA'
      Origin = '"PEDIDO"."PED_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoPED_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'PED_CODIGO'
      Origin = '"PEDIDO"."PED_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoPED_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PED_CLIENTE'
      Origin = '"PEDIDO"."PED_CLIENTE"'
      Required = True
    end
    object PedidoPED_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PED_DATA'
      Origin = '"PEDIDO"."PED_DATA"'
      Required = True
    end
    object PedidoPED_VL_BRUTO: TIBBCDField
      DisplayLabel = 'Vlr Bruto'
      FieldName = 'PED_VL_BRUTO'
      Origin = '"PEDIDO"."PED_VL_BRUTO"'
      Required = True
      Precision = 18
      Size = 2
    end
    object PedidoPED_VL_DESCONTO: TIBBCDField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'PED_VL_DESCONTO'
      Origin = '"PEDIDO"."PED_VL_DESCONTO"'
      Required = True
      Precision = 18
      Size = 2
    end
    object PedidoPED_VL_LIQUIDO: TIBBCDField
      DisplayLabel = 'Vlr Liquido'
      FieldName = 'PED_VL_LIQUIDO'
      Origin = '"PEDIDO"."PED_VL_LIQUIDO"'
      Required = True
      Precision = 18
      Size = 2
    end
    object PedidoPED_CONDICAO_PGTO: TIntegerField
      DisplayLabel = 'Condicao Pgto'
      FieldName = 'PED_CONDICAO_PGTO'
      Origin = '"PEDIDO"."PED_CONDICAO_PGTO"'
      Required = True
    end
    object PedidoPED_DT_ALTERACAO: TDateField
      DisplayLabel = 'Dt. Altera'#231#227'o'
      FieldName = 'PED_DT_ALTERACAO'
      Origin = '"PEDIDO"."PED_DT_ALTERACAO"'
    end
  end
  object DPedido: TDataSource
    AutoEdit = False
    DataSet = Pedido
    Left = 72
    Top = 157
  end
  object UPedido: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from PEDIDO '
      'where'
      '  PED_CODIGO = :PED_CODIGO and'
      '  PED_EMPRESA = :PED_EMPRESA')
    ModifySQL.Strings = (
      'update PEDIDO'
      'set'
      '  PED_CLIENTE = :PED_CLIENTE,'
      '  PED_CODIGO = :PED_CODIGO,'
      '  PED_CONDICAO_PGTO = :PED_CONDICAO_PGTO,'
      '  PED_DATA = :PED_DATA,'
      '  PED_DT_ALTERACAO = :PED_DT_ALTERACAO,'
      '  PED_EMPRESA = :PED_EMPRESA,'
      '  PED_VL_BRUTO = :PED_VL_BRUTO,'
      '  PED_VL_DESCONTO = :PED_VL_DESCONTO,'
      '  PED_VL_LIQUIDO = :PED_VL_LIQUIDO'
      'where'
      '  PED_CODIGO = :OLD_PED_CODIGO and'
      '  PED_EMPRESA = :OLD_PED_EMPRESA')
    InsertSQL.Strings = (
      'insert into PEDIDO'
      
        '  (PED_CLIENTE, PED_CODIGO, PED_CONDICAO_PGTO, PED_DATA, PED_DT_' +
        'ALTERACAO, '
      '   PED_EMPRESA, PED_VL_BRUTO, PED_VL_DESCONTO, PED_VL_LIQUIDO)'
      'values'
      
        '  (:PED_CLIENTE, :PED_CODIGO, :PED_CONDICAO_PGTO, :PED_DATA, :PE' +
        'D_DT_ALTERACAO, '
      
        '   :PED_EMPRESA, :PED_VL_BRUTO, :PED_VL_DESCONTO, :PED_VL_LIQUID' +
        'O)')
    DeleteSQL.Strings = (
      'delete from PEDIDO'
      'where'
      '  PED_CODIGO = :OLD_PED_CODIGO and'
      '  PED_EMPRESA = :OLD_PED_EMPRESA')
    Left = 72
    Top = 96
  end
end
