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
      PaperWidth = 254.000000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 16
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ASDAS: TfrxReportTitle
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 884.410020000000000000
        object Memo10: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Relat'#243'rio PCP-Ordens de producoes')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 162.519790000000000000
        Width = 884.410020000000000000
        DataSet = frxDBOrdemproducao
        DataSetName = 'frxDBOp'
        RowCount = 0
        object frxDBOpOP_STATUS: TfrxMemoView
          Left = 582.047620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_PEDIDO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DT_PEDIDO"]')
        end
        object frxDBOpOP_COD: TfrxMemoView
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_COD'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_COD"]')
        end
        object frxDBOpOP_EMPRESA: TfrxMemoView
          Left = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_EMPRESA'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_EMPRESA"]')
        end
        object frxDBOpOP_DEPARTAMENTO: TfrxMemoView
          Left = 181.417440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DEPARTAMENTO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DEPARTAMENTO"]')
        end
        object frxDBOpOP_PRODUTO1: TfrxMemoView
          Left = 272.126160000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'OP_PRODUTO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_PRODUTO"]')
        end
        object frxDBOpOP_DT_PEDIDO: TfrxMemoView
          Left = 351.496290000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'OP_TIPO'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_TIPO"]')
        end
        object frxDBOpOP_DT_ENTREGA: TfrxMemoView
          Left = 668.976810000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_ENTREGA'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_DT_ENTREGA"]')
        end
        object frxDBOpOP_QTD: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_QTD'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_QTD"]')
        end
        object frxDBOpOP_STATUS1: TfrxMemoView
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'OP_STATUS'
          DataSet = frxDBOrdemproducao
          DataSetName = 'frxDBOp'
          Memo.UTF8W = (
            '[frxDBOp."OP_STATUS"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 884.410020000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo da Ordem')
        end
        object Memo2: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Departamento')
        end
        object Memo4: TfrxMemoView
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Tipo Ordem')
        end
        object Memo6: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quantidade')
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data do pedido')
        end
        object Memo8: TfrxMemoView
          Left = 691.653990000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data Entrega')
        end
        object Memo9: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Status')
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
      PaperWidth = 254.000000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 16
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clBtnFace
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 884.410020000000000000
        DataSet = frxDBOrdempordata
        DataSetName = 'frxDBOrdempordata'
        RowCount = 0
        object frxDBOrdempordataOP_EMPRESA: TfrxMemoView
          Left = -3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_EMPRESA'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_EMPRESA"]')
        end
        object frxDBOrdempordataOP_DEPARTAMENTO: TfrxMemoView
          Left = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DEPARTAMENTO'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_DEPARTAMENTO"]')
        end
        object frxDBOrdempordataOP_COD: TfrxMemoView
          Left = 192.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_COD'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_COD"]')
        end
        object frxDBOrdempordataOP_COD1: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_COD'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_COD"]')
        end
        object frxDBOrdempordataOP_QTD: TfrxMemoView
          Left = 370.393940000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_QTD'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_QTD"]')
        end
        object frxDBOrdempordataOP_TIPO: TfrxMemoView
          Left = 468.661720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'OP_TIPO'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_TIPO"]')
        end
        object frxDBOrdempordataOP_DT_PEDIDO: TfrxMemoView
          Left = 585.827150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_PEDIDO'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_DT_PEDIDO"]')
        end
        object frxDBOrdempordataOP_DT_ENTREGA: TfrxMemoView
          Left = 695.433520000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OP_DT_ENTREGA'
          DataSet = frxDBOrdempordata
          DataSetName = 'frxDBOrdempordata'
          Memo.UTF8W = (
            '[frxDBOrdempordata."OP_DT_ENTREGA"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 102.047310000000000000
        Width = 884.410020000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo2: TfrxMemoView
          Left = 90.708720000000000000
          Top = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Departamento')
        end
        object Memo3: TfrxMemoView
          Left = 192.756030000000000000
          Top = 22.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ordem Nr')
        end
        object Memo4: TfrxMemoView
          Left = 279.685220000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          Left = 370.393940000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quantidade')
        end
        object Memo6: TfrxMemoView
          Left = 461.102660000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Tipo da Ordem')
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data do Pedido')
        end
        object Memo8: TfrxMemoView
          Left = 687.874460000000000000
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data da Entrega')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 884.410020000000000000
        object dtFinal: TfrxMemoView
          Left = 714.331170000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dtFinal]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 612.283860000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Final')
          ParentFont = False
        end
      end
      object Memo9: TfrxMemoView
        Left = 351.496290000000000000
        Top = 11.338590000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          'Relatorio de Ordem por data')
      end
      object dtInicial: TfrxMemoView
        Left = 714.331170000000000000
        Top = 3.779530000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          '[dtInicial]')
      end
      object Memo10: TfrxMemoView
        Left = 608.504330000000000000
        Top = 3.779530000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'Data Inicial')
        ParentFont = False
      end
    end
  end
  object q_fichatecnica: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from ficha_tecnica')
    Left = 288
    Top = 136
    object q_fichatecnicaFT_PRODUTO2: TIBStringField
      FieldName = 'FT_PRODUTO'
      Origin = '"FICHA_TECNICA"."FT_PRODUTO"'
      Required = True
      Size = 30
    end
    object q_fichatecnicaFT_UNIDADE2: TIntegerField
      FieldName = 'FT_UNIDADE'
      Origin = '"FICHA_TECNICA"."FT_UNIDADE"'
    end
    object q_fichatecnicaFT_CUSTO_UNITARIO2: TIBBCDField
      FieldName = 'FT_CUSTO_UNITARIO'
      Origin = '"FICHA_TECNICA"."FT_CUSTO_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object q_fichatecnicaFT_MAO_DE_OBRA2: TIBBCDField
      FieldName = 'FT_MAO_DE_OBRA'
      Origin = '"FICHA_TECNICA"."FT_MAO_DE_OBRA"'
      Precision = 18
      Size = 4
    end
    object q_fichatecnicaFT_QUANTIDADE2: TIntegerField
      FieldName = 'FT_QUANTIDADE'
      Origin = '"FICHA_TECNICA"."FT_QUANTIDADE"'
    end
    object q_fichatecnicaFT_CUSTO_TOTAL2: TIBBCDField
      FieldName = 'FT_CUSTO_TOTAL'
      Origin = '"FICHA_TECNICA"."FT_CUSTO_TOTAL"'
      Precision = 18
      Size = 4
    end
    object q_fichatecnicaFT_TEMPO_PRODUCAO2: TDateTimeField
      FieldName = 'FT_TEMPO_PRODUCAO'
      Origin = '"FICHA_TECNICA"."FT_TEMPO_PRODUCAO"'
    end
    object q_fichatecnicaFT_EMPRESA2: TIntegerField
      FieldName = 'FT_EMPRESA'
      Origin = '"FICHA_TECNICA"."FT_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_fichatecnicaFT_COD: TIntegerField
      FieldName = 'FT_COD'
      Origin = '"FICHA_TECNICA"."FT_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object frxDBFichatecnica: TfrxDBDataset
    UserName = 'frxDBfichatecnica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FT_PRODUTO=FT_PRODUTO'
      'FT_UNIDADE=FT_UNIDADE'
      'FT_CUSTO_UNITARIO=FT_CUSTO_UNITARIO'
      'FT_MAO_DE_OBRA=FT_MAO_DE_OBRA'
      'FT_QUANTIDADE=FT_QUANTIDADE'
      'FT_CUSTO_TOTAL=FT_CUSTO_TOTAL'
      'FT_TEMPO_PRODUCAO=FT_TEMPO_PRODUCAO'
      'FT_EMPRESA=FT_EMPRESA'
      'FT_COD=FT_COD')
    DataSet = q_fichatecnica
    BCDToCurrency = False
    Left = 288
    Top = 80
  end
  object frxFichatecnica: TfrxReport
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
    Left = 288
    Top = 24
    Datasets = <
      item
        DataSet = frxDBFichatecnica
        DataSetName = 'frxDBfichatecnica'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 254.000000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 16
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clBtnFace
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 884.410020000000000000
      end
      object Memo9: TfrxMemoView
        Left = 343.937230000000000000
        Top = 7.559060000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          'Relatorio de Ficha T'#233'cnica')
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 173.858380000000000000
        Width = 884.410020000000000000
        DataSet = frxDBFichatecnica
        DataSetName = 'frxDBfichatecnica'
        RowCount = 0
        object frxDBfichatecnicaFT_COD: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FT_COD'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_COD"]')
        end
        object frxDBfichatecnicaFT_EMPRESA: TfrxMemoView
          Left = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FT_EMPRESA'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_EMPRESA"]')
        end
        object frxDBfichatecnicaFT_PRODUTO: TfrxMemoView
          Left = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'FT_PRODUTO'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_PRODUTO"]')
        end
        object frxDBfichatecnicaFT_QUANTIDADE: TfrxMemoView
          Left = 309.921460000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FT_QUANTIDADE'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_QUANTIDADE"]')
        end
        object frxDBfichatecnicaFT_CUSTO_UNITARIO: TfrxMemoView
          Left = 400.630180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FT_CUSTO_UNITARIO'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_CUSTO_UNITARIO"]')
        end
        object frxDBfichatecnicaFT_MAO_DE_OBRA: TfrxMemoView
          Left = 514.016080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'FT_MAO_DE_OBRA'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_MAO_DE_OBRA"]')
        end
        object frxDBfichatecnicaFT_UNIDADE: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FT_UNIDADE'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_UNIDADE"]')
        end
        object frxDBfichatecnicaFT_CUSTO_TOTAL: TfrxMemoView
          Left = 725.669760000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'FT_CUSTO_TOTAL'
          DataSet = frxDBFichatecnica
          DataSetName = 'frxDBfichatecnica'
          Memo.UTF8W = (
            '[frxDBfichatecnica."FT_CUSTO_TOTAL"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 102.047310000000000000
        Width = 884.410020000000000000
        object Memo1: TfrxMemoView
          Left = -3.779530000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'c'#243'digo da ficha')
        end
        object Memo2: TfrxMemoView
          Left = 102.047310000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo3: TfrxMemoView
          Left = 200.315090000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'produto')
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'quantidade')
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'custo unitario')
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'mao de obra')
        end
        object Memo7: TfrxMemoView
          Left = 634.961040000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'unidade')
        end
        object Memo8: TfrxMemoView
          Left = 718.110700000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Custo total')
        end
      end
    end
  end
  object frxDBprodandamento: TfrxDBDataset
    UserName = 'frxDBProdandamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PROD_ORDEM=PROD_ORDEM'
      'PROD_DESCRICAO=PROD_DESCRICAO'
      'PROD_TIPO=PROD_TIPO'
      'PROD_DT_INICIO=PROD_DT_INICIO'
      'PROD_DT_TERMINO=PROD_DT_TERMINO'
      'PROD_QTD_PRODUZIDA=PROD_QTD_PRODUZIDA'
      'PROD_STATUS=PROD_STATUS'
      'PROD_EMPRESA=PROD_EMPRESA'
      'PROD_COD=PROD_COD'
      'PROD_PRODUTO=PROD_PRODUTO')
    DataSet = q_prodandamento
    BCDToCurrency = False
    Left = 408
    Top = 80
  end
  object frxproducaoandamento: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42332.743645243100000000
    ReportOptions.LastChange = 42332.756919039400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 24
    Datasets = <
      item
        DataSet = frxDBprodandamento
        DataSetName = 'frxDBProdandamento'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 254.000000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 16
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 113.385900000000000000
        Width = 884.410020000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo da ordem')
        end
        object Memo2: TfrxMemoView
          Left = 117.165430000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'c'#243'digo da'
            ' producao')
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'empresa')
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'produto')
        end
        object Memo5: TfrxMemoView
          Left = 374.173470000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'prod_descricao')
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'tipo da producao')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 884.410020000000000000
        object Memo9: TfrxMemoView
          Left = 275.905690000000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Relat'#243'rio Produc'#245'es em Andamento')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 162.519790000000000000
        Width = 884.410020000000000000
        DataSet = frxDBprodandamento
        DataSetName = 'frxDBProdandamento'
        RowCount = 0
        object frxDBProdandamentoPROD_COD: TfrxMemoView
          Left = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_COD'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_COD"]')
        end
        object frxDBProdandamentoPROD_ORDEM: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_ORDEM'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_ORDEM"]')
        end
        object frxDBProdandamentoPROD_EMPRESA: TfrxMemoView
          Left = 192.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_EMPRESA'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_EMPRESA"]')
        end
        object frxDBProdandamentoPROD_PRODUTO: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_PRODUTO'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_PRODUTO"]')
        end
        object frxDBProdandamentoPROD_DESCRICAO: TfrxMemoView
          Left = 374.173470000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_DESCRICAO'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_DESCRICAO"]')
        end
        object frxDBProdandamentoPROD_TIPO: TfrxMemoView
          Left = 498.897960000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_TIPO'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_TIPO"]')
        end
        object frxDBProdandamentoPROD_DT_INICIO: TfrxMemoView
          Left = 627.401980000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_DT_INICIO'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_DT_INICIO"]')
        end
        object frxDBProdandamentoPROD_DT_TERMINO: TfrxMemoView
          Left = 733.228820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_DT_TERMINO'
          DataSet = frxDBprodandamento
          DataSetName = 'frxDBProdandamento'
          Memo.UTF8W = (
            '[frxDBProdandamento."PROD_DT_TERMINO"]')
        end
      end
      object Memo7: TfrxMemoView
        Left = 627.401980000000000000
        Top = 102.047310000000000000
        Width = 113.385900000000000000
        Height = 41.574830000000000000
        Memo.UTF8W = (
          'Data inicial'
          'producao')
      end
      object Memo8: TfrxMemoView
        Left = 733.228820000000000000
        Top = 102.047310000000000000
        Width = 113.385900000000000000
        Height = 41.574830000000000000
        Memo.UTF8W = (
          'Data final'
          'producao')
      end
    end
  end
  object q_prodandamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from producao e'
      'where e.prod_status='#39'P'#39)
    Left = 408
    Top = 136
    object q_prodandamentoPROD_ORDEM: TIntegerField
      FieldName = 'PROD_ORDEM'
      Origin = '"PRODUCAO"."PROD_ORDEM"'
      Required = True
    end
    object q_prodandamentoPROD_DESCRICAO: TIBStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = '"PRODUCAO"."PROD_DESCRICAO"'
      Size = 30
    end
    object q_prodandamentoPROD_TIPO: TIBStringField
      FieldName = 'PROD_TIPO'
      Origin = '"PRODUCAO"."PROD_TIPO"'
      Size = 30
    end
    object q_prodandamentoPROD_DT_INICIO: TDateField
      FieldName = 'PROD_DT_INICIO'
      Origin = '"PRODUCAO"."PROD_DT_INICIO"'
    end
    object q_prodandamentoPROD_DT_TERMINO: TDateField
      FieldName = 'PROD_DT_TERMINO'
      Origin = '"PRODUCAO"."PROD_DT_TERMINO"'
    end
    object q_prodandamentoPROD_QTD_PRODUZIDA: TIntegerField
      FieldName = 'PROD_QTD_PRODUZIDA'
      Origin = '"PRODUCAO"."PROD_QTD_PRODUZIDA"'
    end
    object q_prodandamentoPROD_STATUS: TIBStringField
      FieldName = 'PROD_STATUS'
      Origin = '"PRODUCAO"."PROD_STATUS"'
      Size = 30
    end
    object q_prodandamentoPROD_EMPRESA: TIntegerField
      FieldName = 'PROD_EMPRESA'
      Origin = '"PRODUCAO"."PROD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_prodandamentoPROD_COD: TIntegerField
      FieldName = 'PROD_COD'
      Origin = '"PRODUCAO"."PROD_COD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_prodandamentoPROD_PRODUTO: TIBStringField
      FieldName = 'PROD_PRODUTO'
      Origin = '"PRODUCAO"."PROD_PRODUTO"'
      Required = True
      Size = 30
    end
  end
end
