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
    ReportOptions.CreateDate = 42332.633317835700000000
    ReportOptions.LastChange = 42332.633317835700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 24
    Datasets = <
      item
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBOp'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBOp'
        Filter = '<frxDBOp."OP_COD">'
        RowCount = 0
        object frxDBOpOP_QTD: TfrxMemoView
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_COD'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_COD"]')
        end
        object Memo2: TfrxMemoView
          Left = 86.929190000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_EMPRESA'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_EMPRESA"]')
        end
        object Memo3: TfrxMemoView
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DEPARTAMENTO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DEPARTAMENTO"]')
        end
        object Memo4: TfrxMemoView
          Left = 253.228510000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_PRODUTO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_PRODUTO"]')
        end
        object Memo5: TfrxMemoView
          Left = 336.378170000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_TIPO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_TIPO"]')
        end
        object Memo6: TfrxMemoView
          Left = 419.527830000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_QTD'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_QTD"]')
        end
        object Memo7: TfrxMemoView
          Left = 506.457020000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_PEDIDO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DT_PEDIDO"]')
        end
        object Memo8: TfrxMemoView
          Left = 582.047620000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_ENTREGA'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DT_ENTREGA"]')
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_STATUS'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_STATUS"]')
        end
      end
      object ASDAS: TfrxReportTitle
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Relat'#243'rio PCP-Ordens de producoes')
        end
      end
    end
  end
  object frxDBOrdemproducao: TfrxDBDataset
    UserName = 'frxDBOp'
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
      
        'select A.OP_VENDAS, A.OP_EMPRESA, A.OP_FICHATECNICA, A.OP_DESCRI' +
        'CAO, A.OP_TIPO, A.OP_QTD, A.OP_DT_PEDIDO,'
      
        '       A.OP_DT_ENTREGA, A.OP_STATUS, A.OP_COMPRAS, A.OP_COD, A.O' +
        'P_PRODUTO, A.OP_DEPARTAMENTO '
      'FROM  ORDEM_PRODUCAO A')
    Left = 48
    Top = 136
    object q_ordemproducaoOP_VENDAS: TIntegerField
      FieldName = 'OP_VENDAS'
      Origin = '"ORDEM_PRODUCAO"."OP_VENDAS"'
    end
    object q_ordemproducaoOP_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'OP_EMPRESA'
      Origin = '"ORDEM_PRODUCAO"."OP_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ordemproducaoOP_FICHATECNICA: TIntegerField
      DisplayLabel = 'Ficha_Tecnica'
      FieldName = 'OP_FICHATECNICA'
      Origin = '"ORDEM_PRODUCAO"."OP_FICHATECNICA"'
    end
    object q_ordemproducaoOP_DESCRICAO: TIBStringField
      DisplayLabel = 'Descricao'
      FieldName = 'OP_DESCRICAO'
      Origin = '"ORDEM_PRODUCAO"."OP_DESCRICAO"'
      Size = 50
    end
    object q_ordemproducaoOP_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'OP_TIPO'
      Origin = '"ORDEM_PRODUCAO"."OP_TIPO"'
      Size = 30
    end
    object q_ordemproducaoOP_QTD: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'OP_QTD'
      Origin = '"ORDEM_PRODUCAO"."OP_QTD"'
    end
    object q_ordemproducaoOP_DT_PEDIDO: TDateField
      DisplayLabel = 'dt_pedido'
      FieldName = 'OP_DT_PEDIDO'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_PEDIDO"'
    end
    object q_ordemproducaoOP_DT_ENTREGA: TDateField
      DisplayLabel = 'dt_entrega'
      FieldName = 'OP_DT_ENTREGA'
      Origin = '"ORDEM_PRODUCAO"."OP_DT_ENTREGA"'
    end
    object q_ordemproducaoOP_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'OP_STATUS'
      Origin = '"ORDEM_PRODUCAO"."OP_STATUS"'
      Size = 1
    end
    object q_ordemproducaoOP_COMPRAS: TIntegerField
      FieldName = 'OP_COMPRAS'
      Origin = '"ORDEM_PRODUCAO"."OP_COMPRAS"'
    end
    object q_ordemproducaoOP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem'
      FieldName = 'OP_COD'
      Origin = '"ORDEM_PRODUCAO"."OP_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_ordemproducaoOP_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'OP_PRODUTO'
      Origin = '"ORDEM_PRODUCAO"."OP_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object q_ordemproducaoOP_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
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
    ReportOptions.LastChange = 42332.612195787000000000
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
      object frxDBOrdempordataOP_PRODUTO: TfrxMemoView
        Left = 268.346630000000000000
        Top = 75.811070000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        DataField = 'OP_PRODUTO'
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        Memo.UTF8W = (
          '[frxDBOrdempordata."OP_PRODUTO"]')
      end
    end
  end
end
