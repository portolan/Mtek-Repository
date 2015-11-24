object pcprelatorio: Tpcprelatorio
  OldCreateOrder = False
  Height = 280
  Width = 554
  object frxOrdemproducao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42332.540989375000000000
    ReportOptions.LastChange = 42332.540989375000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 24
    Datasets = <
      item
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxDBDataset1OP_EMPRESA: TfrxMemoView
        Left = 7.559060000000000000
        Top = 68.031540000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_EMPRESA'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_EMPRESA"]')
      end
      object frxDBDataset1OP_COD: TfrxMemoView
        Left = 207.874150000000000000
        Top = 68.031540000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_COD'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_COD"]')
      end
      object frxDBDataset1OP_DEPARTAMENTO: TfrxMemoView
        Left = 105.826840000000000000
        Top = 68.031540000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_DEPARTAMENTO'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_DEPARTAMENTO"]')
      end
      object frxDBDataset1OP_PRODUTO: TfrxMemoView
        Left = 306.141930000000000000
        Top = 68.031540000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        DataField = 'OP_PRODUTO'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_PRODUTO"]')
      end
      object frxDBDataset1OP_TIPO: TfrxMemoView
        Left = 495.118430000000000000
        Top = 68.031540000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        DataField = 'OP_TIPO'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_TIPO"]')
      end
      object frxDBDataset1OP_QTD: TfrxMemoView
        Left = 408.189240000000000000
        Top = 68.031540000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_QTD'
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."OP_QTD"]')
      end
    end
  end
  object frxDBOrdemproducao: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OP_VENDAS=OP_VENDAS'
      'OP_EMPRESA=OP_EMPRESA'
      'OP_FICHATECNICA=OP_FICHATECNICA'
      'OP_DESCRICAO=OP_DESCRICAO'
      'OP_TIPO=OP_TIPO'
      'OP_QTD=OP_QTD'
      'OP_DT_PEDIDO=OP_DT_PEDIDO'
      'OP_DT_ENTREGA=OP_DT_ENTREGA'
      'OP_STATUS=OP_STATUS'
      'OP_COMPRAS=OP_COMPRAS'
      'OP_COD=OP_COD'
      'OP_PRODUTO=OP_PRODUTO'
      'OP_DEPARTAMENTO=OP_DEPARTAMENTO')
    DataSet = q_ordemproducao
    BCDToCurrency = False
    Left = 48
    Top = 72
  end
  object q_ordemproducao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ordem_producao')
    Left = 48
    Top = 136
    object q_ordemproducaoOP_VENDAS: TIntegerField
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object q_ordemproducaoOP_EMPRESA: TIntegerField
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ordemproducaoOP_FICHATECNICA: TIntegerField
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
    end
    object q_ordemproducaoOP_DESCRICAO: TIBStringField
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object q_ordemproducaoOP_TIPO: TIBStringField
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object q_ordemproducaoOP_QTD: TIntegerField
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object q_ordemproducaoOP_DT_PEDIDO: TDateField
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object q_ordemproducaoOP_DT_ENTREGA: TDateField
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object q_ordemproducaoOP_STATUS: TIBStringField
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object q_ordemproducaoOP_COMPRAS: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
    end
    object q_ordemproducaoOP_COD: TIntegerField
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ordemproducaoOP_PRODUTO: TIBStringField
      FieldName = 'OP_PRODUTO'
      Origin = '"ORDEM_PRODUCAO"."OP_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object q_ordemproducaoOP_DEPARTAMENTO: TIntegerField
      FieldName = 'OP_DEPARTAMENTO'
      Origin = '"ORDEM_PRODUCAO"."OP_DEPARTAMENTO"'
      Required = True
    end
  end
  object frxDBOrdempordata: TfrxDBDataset
    UserName = 'frxDBOrdempordata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OP_VENDAS=OP_VENDAS'
      'OP_EMPRESA=OP_EMPRESA'
      'OP_FICHATECNICA=OP_FICHATECNICA'
      'OP_DESCRICAO=OP_DESCRICAO'
      'OP_TIPO=OP_TIPO'
      'OP_QTD=OP_QTD'
      'OP_DT_PEDIDO=OP_DT_PEDIDO'
      'OP_DT_ENTREGA=OP_DT_ENTREGA'
      'OP_STATUS=OP_STATUS'
      'OP_COMPRAS=OP_COMPRAS'
      'OP_COD=OP_COD'
      'OP_PRODUTO=OP_PRODUTO'
      'OP_DEPARTAMENTO=OP_DEPARTAMENTO'
      'FT_PRODUTO=FT_PRODUTO'
      'FT_EMPRESA=FT_EMPRESA'
      'DEP_NOME=DEP_NOME')
    DataSet = q_ordempordata
    BCDToCurrency = False
    Left = 176
    Top = 80
  end
  object q_ordempordata: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT O.*, f.ft_cod,f.ft_empresa'
      
        '                                             FROM ordem_producao' +
        ' O '
      
        '             INNER join ficha_tecnica F ON o.op_fichatecnica =  ' +
        'f.ft_cod'
      '              and o.op_empresa=f.ft_empresa  '
      
        '             INNER JOIN DEPARTAMENTO D ON o.op_departamento = D.' +
        'DEP_COD '
      
        '             where o.op_dt_pedido between :dtinicial and :dtfina' +
        'l;')
    Left = 176
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtinicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfinal'
        ParamType = ptUnknown
      end>
    object IntegerField2: TIntegerField
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object IBStringField2: TIBStringField
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object DateField1: TDateField
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object DateField2: TDateField
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object IBStringField3: TIBStringField
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object IntegerField5: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField4: TIBStringField
      FieldName = 'OP_PRODUTO'
      Origin = '"ORDEM_PRODUCAO"."OP_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object IntegerField7: TIntegerField
      FieldName = 'OP_DEPARTAMENTO'
      Origin = '"ORDEM_PRODUCAO"."OP_DEPARTAMENTO"'
      Required = True
    end
    object q_ordempordataFT_COD: TIntegerField
      FieldName = 'FT_COD'
      Origin = '"FICHA_TECNICA"."FT_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ordempordataOP_VENDAS: TIntegerField
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object q_ordempordataFT_EMPRESA: TIntegerField
      FieldName = 'FT_EMPRESA'
      Origin = '"FICHA_TECNICA"."FT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object frxOrdempordata: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42332.540989375000000000
    ReportOptions.LastChange = 42332.612195787030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 24
    Datasets = <
      item
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clBtnFace
      object frxDBDataset1OP_EMPRESA: TfrxMemoView
        Top = 75.590600000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_EMPRESA'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_EMPRESA"]')
      end
      object frxDBDataset1OP_COD: TfrxMemoView
        Left = 181.417440000000000000
        Top = 75.590600000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_COD'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_COD"]')
      end
      object frxDBDataset1OP_DEPARTAMENTO: TfrxMemoView
        Left = 90.708720000000000000
        Top = 75.590600000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_DEPARTAMENTO'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_DEPARTAMENTO"]')
      end
      object frxDBDataset1OP_PRODUTO: TfrxMemoView
        Left = 272.126160000000000000
        Top = 75.590600000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        DataField = 'OP_PRODUTO'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_PRODUTO"]')
      end
      object frxDBDataset1OP_TIPO: TfrxMemoView
        Left = 453.543600000000000000
        Top = 75.590600000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataField = 'OP_TIPO'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_TIPO"]')
      end
      object frxDBDataset1OP_QTD: TfrxMemoView
        Left = 366.614410000000000000
        Top = 75.590600000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'OP_QTD'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_QTD"]')
      end
      object frxDBOrdempordataOP_DT_PEDIDO: TfrxMemoView
        Left = 532.913730000000000000
        Top = 22.677180000000000000
        Width = 102.047310000000000000
        Height = 18.897650000000000000
        DataField = 'OP_DT_PEDIDO'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_DT_PEDIDO"]')
      end
      object frxDBOrdempordataFT_PRODUTO: TfrxMemoView
        Left = 548.031850000000000000
        Top = 75.590600000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."FT_PRODUTO"]')
      end
      object Memo1: TfrxMemoView
        Left = 154.960730000000000000
        Top = 22.677180000000000000
        Width = 359.055350000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Fill.BackColor = clWhite
        Memo.UTF8W = (
          'RELAT'#211'RIO DE ORDEM DE PRODUCAO POR DATA')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        Left = 7.559060000000000000
        Top = 7.559060000000000000
        Width = 101.000000000000000000
        Height = 56.692950000000000000
        BarType = bcCodeCodabar
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
    end
  end
end
