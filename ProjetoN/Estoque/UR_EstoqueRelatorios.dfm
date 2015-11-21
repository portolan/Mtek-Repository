object EstoqueRelatorios: TEstoqueRelatorios
  OldCreateOrder = False
  Height = 304
  Width = 597
  object qMovimentoPorData: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select c.*, pro_descricao, emp_razao, bloc_descricao, prat_descr' +
        'icao from ESTOQ_MOVIMENTO c'
      
        'inner join produtos on em_produto = pro_codigo and em_empresa = ' +
        'pro_empresa'
      'inner join empresa on em_empresa = emp_cod'
      
        'inner join bloco on bloc_codigo = em_bloco and bloc_empresa = em' +
        '_empresa'
      
        'inner join prateleira on prat_codigo = em_prateleira and prat_em' +
        'presa = em_empresa'
      'where em_data between :dtinicial and :dtfinal')
    Left = 48
    Top = 120
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
    object qMovimentoPorDataEM_EMPRESA: TIntegerField
      FieldName = 'EM_EMPRESA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMovimentoPorDataEM_PRODUTO: TIBStringField
      FieldName = 'EM_PRODUTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object qMovimentoPorDataEM_BLOCO: TIntegerField
      FieldName = 'EM_BLOCO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMovimentoPorDataEM_PRATELEIRA: TIntegerField
      FieldName = 'EM_PRATELEIRA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRATELEIRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMovimentoPorDataEM_ESTOQUE: TIntegerField
      FieldName = 'EM_ESTOQUE'
      Origin = '"ESTOQ_MOVIMENTO"."EM_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMovimentoPorDataEM_CODIGO: TIntegerField
      FieldName = 'EM_CODIGO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMovimentoPorDataEM_TIPO: TIBStringField
      FieldName = 'EM_TIPO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_TIPO"'
      Required = True
      Size = 2
    end
    object qMovimentoPorDataEM_QTD: TIBBCDField
      FieldName = 'EM_QTD'
      Origin = '"ESTOQ_MOVIMENTO"."EM_QTD"'
      Precision = 18
      Size = 2
    end
    object qMovimentoPorDataEM_DATA: TDateTimeField
      FieldName = 'EM_DATA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DATA"'
    end
    object qMovimentoPorDataEM_OBS: TIBStringField
      FieldName = 'EM_OBS'
      Origin = '"ESTOQ_MOVIMENTO"."EM_OBS"'
      Size = 100
    end
    object qMovimentoPorDataEM_VALOR_FINANCEIRO: TIBBCDField
      FieldName = 'EM_VALOR_FINANCEIRO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_VALOR_FINANCEIRO"'
      Precision = 18
      Size = 2
    end
    object qMovimentoPorDataEM_PEDIDOCOMPRAORIGEM: TIntegerField
      FieldName = 'EM_PEDIDOCOMPRAORIGEM'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PEDIDOCOMPRAORIGEM"'
    end
    object qMovimentoPorDataPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
    object qMovimentoPorDataEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object qMovimentoPorDataBLOC_DESCRICAO: TIBStringField
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Required = True
      Size = 60
    end
    object qMovimentoPorDataPRAT_DESCRICAO: TIBStringField
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Required = True
      Size = 60
    end
  end
  object frxDBMovimentoPorData: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qMovimentoPorData
    BCDToCurrency = False
    Left = 48
    Top = 56
  end
  object frxMovimentoPorData: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    EngineOptions.UseFileCache = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.PictureCacheInFile = True
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42321.724752534700000000
    ReportOptions.LastChange = 42328.920582997690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 8
    Datasets = <
      item
        DataSet = frxDBMovimentoPorData
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'dtInicial'
        Value = Null
      end
      item
        Name = 'dtFinal'
        Value = Null
      end>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Data/Hora')
        end
        object Memo2: TfrxMemoView
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Bloco')
        end
        object Memo4: TfrxMemoView
          Left = 321.260050000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Prateleira')
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 608.504330000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quantidade')
        end
        object dtInicial: TfrxMemoView
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dtInicial]')
        end
        object dtFinal: TfrxMemoView
          Left = 634.961040000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dtFinal] coco')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Movimento Por Data')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 548.031850000000000000
          Top = 11.338590000000000000
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
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Top = 30.236240000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMovimentoPorData
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_RAZAO"]')
          ParentFont = False
        end
        object frxDBDataset1BLOC_DESCRICAO: TfrxMemoView
          Left = 222.992270000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_DESCRICAO'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."BLOC_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1PRAT_DESCRICAO: TfrxMemoView
          Left = 325.039580000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRAT_DESCRICAO'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."PRAT_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1PRO_DESCRICAO: TfrxMemoView
          Left = 411.968770000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Cursor = crHourGlass
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1EM_DATA: TfrxMemoView
          Left = -15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'EM_DATA'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."EM_DATA"]')
          ParentFont = False
        end
        object frxDBDataset1EM_QTD: TfrxMemoView
          Left = 612.283860000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'EM_QTD'
          DataSet = frxDBMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."EM_QTD"]')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 376
    Top = 72
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 312
    Top = 168
  end
  object frxRichObject1: TfrxRichObject
    Left = 464
    Top = 152
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 424
    Top = 224
  end
  object frxCrypt1: TfrxCrypt
    Left = 528
    Top = 72
  end
  object Query: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 256
    Top = 48
  end
  object frxProdutoPorPreco: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    EngineOptions.UseFileCache = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.PictureCacheInFile = True
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42321.724752534700000000
    ReportOptions.LastChange = 42328.010095497700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 8
    Datasets = <
      item
        DataSet = frxDBProdutoPorPreco
        DataSetName = 'frxDBProdutoPorPreco'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'maiorque'
        Value = Null
      end
      item
        Name = 'menorque'
        Value = Null
      end>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Data/Hora')
        end
        object Memo2: TfrxMemoView
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 56.692950000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo4: TfrxMemoView
          Left = 619.842920000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Valor')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produto por valor')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 548.031850000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Maior que')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Menor que')
          ParentFont = False
        end
        object maiorque: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[maiorque]')
        end
        object menorque: TfrxMemoView
          Left = 627.401980000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[menorque]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBProdutoPorPreco
        DataSetName = 'frxDBProdutoPorPreco'
        RowCount = 0
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_EMPRESA'
          DataSet = frxDBProdutoPorPreco
          DataSetName = 'frxDBProdutoPorPreco'
          Memo.UTF8W = (
            '[frxDBProdutoPorPreco."PRO_EMPRESA"]')
        end
        object frxDBDataset1BLOC_DESCRICAO: TfrxMemoView
          Left = 222.992270000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDBProdutoPorPreco
          DataSetName = 'frxDBProdutoPorPreco'
          Memo.UTF8W = (
            '[frxDBProdutoPorPreco."PRO_DESCRICAO"]')
        end
        object frxDBDataset1PRAT_DESCRICAO: TfrxMemoView
          Left = 623.622450000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_VLRVENDA'
          DataSet = frxDBProdutoPorPreco
          DataSetName = 'frxDBProdutoPorPreco'
          Memo.UTF8W = (
            '[frxDBProdutoPorPreco."PRO_VLRVENDA"]')
        end
        object frxDBDataset1EM_DATA: TfrxMemoView
          Left = -15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_DTCADASTRO'
          DataSet = frxDBProdutoPorPreco
          DataSetName = 'frxDBProdutoPorPreco'
          Memo.UTF8W = (
            '[frxDBProdutoPorPreco."PRO_DTCADASTRO"]')
        end
      end
    end
  end
  object frxDBProdutoPorPreco: TfrxDBDataset
    UserName = 'frxDBProdutoPorPreco'
    CloseDataSource = False
    DataSet = qProdutoPorPreco
    BCDToCurrency = False
    Left = 176
    Top = 56
  end
  object qProdutoPorPreco: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select c.* from produtos c where'
      'c.pro_vlrvenda between :maiorque and :menorque')
    Left = 176
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'maiorque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'menorque'
        ParamType = ptUnknown
      end>
    object qProdutoPorPrecoPRO_EMPRESA: TIntegerField
      FieldName = 'PRO_EMPRESA'
      Origin = '"PRODUTOS"."PRO_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdutoPorPrecoPRO_CODIGO: TIBStringField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object qProdutoPorPrecoPRO_CODREF: TIBStringField
      FieldName = 'PRO_CODREF'
      Origin = '"PRODUTOS"."PRO_CODREF"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_CODBARRAS: TIBStringField
      FieldName = 'PRO_CODBARRAS'
      Origin = '"PRODUTOS"."PRO_CODBARRAS"'
      Size = 60
    end
    object qProdutoPorPrecoPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 5
    end
    object qProdutoPorPrecoPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object qProdutoPorPrecoPRO_CLASSFISCAL: TIBStringField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_CSTCSOSN: TIBStringField
      FieldName = 'PRO_CSTCSOSN'
      Origin = '"PRODUTOS"."PRO_CSTCSOSN"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_NCMSH: TIBStringField
      FieldName = 'PRO_NCMSH'
      Origin = '"PRODUTOS"."PRO_NCMSH"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_EXTIPI: TIBStringField
      FieldName = 'PRO_EXTIPI'
      Origin = '"PRODUTOS"."PRO_EXTIPI"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_SITTRIB: TIBStringField
      FieldName = 'PRO_SITTRIB'
      Origin = '"PRODUTOS"."PRO_SITTRIB"'
      Size = 30
    end
    object qProdutoPorPrecoPRO_PIS: TIBStringField
      FieldName = 'PRO_PIS'
      Origin = '"PRODUTOS"."PRO_PIS"'
    end
    object qProdutoPorPrecoPRO_COFINS: TIBStringField
      FieldName = 'PRO_COFINS'
      Origin = '"PRODUTOS"."PRO_COFINS"'
      Size = 18
    end
    object qProdutoPorPrecoPRO_CSTPIS: TIBStringField
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
      Size = 18
    end
    object qProdutoPorPrecoPRO_ESTATUAL: TIBStringField
      FieldName = 'PRO_ESTATUAL'
      Origin = '"PRODUTOS"."PRO_ESTATUAL"'
    end
    object qProdutoPorPrecoPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
    object qProdutoPorPrecoPRO_UNID: TIntegerField
      FieldName = 'PRO_UNID'
      Origin = '"PRODUTOS"."PRO_UNID"'
    end
    object qProdutoPorPrecoPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
    end
    object qProdutoPorPrecoPRO_MOEDA: TIBStringField
      FieldName = 'PRO_MOEDA'
      Origin = '"PRODUTOS"."PRO_MOEDA"'
      Size = 10
    end
    object qProdutoPorPrecoPRO_CATEGORIA: TIntegerField
      FieldName = 'PRO_CATEGORIA'
      Origin = '"PRODUTOS"."PRO_CATEGORIA"'
      Required = True
    end
    object qProdutoPorPrecoPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_CUSTOMEDIO: TIBBCDField
      FieldName = 'PRO_CUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_CUSTOMEDIO"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_VALORIZACAO: TIBBCDField
      FieldName = 'PRO_VALORIZACAO'
      Origin = '"PRODUTOS"."PRO_VALORIZACAO"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_VLRFRETE: TIBBCDField
      FieldName = 'PRO_VLRFRETE'
      Origin = '"PRODUTOS"."PRO_VLRFRETE"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_PERCENCARG: TIBBCDField
      FieldName = 'PRO_PERCENCARG'
      Origin = '"PRODUTOS"."PRO_PERCENCARG"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_VLRENCARG: TIBBCDField
      FieldName = 'PRO_VLRENCARG'
      Origin = '"PRODUTOS"."PRO_VLRENCARG"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_PERCMARGLUCR: TIBBCDField
      FieldName = 'PRO_PERCMARGLUCR'
      Origin = '"PRODUTOS"."PRO_PERCMARGLUCR"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_VLRMARGLUCR: TIBBCDField
      FieldName = 'PRO_VLRMARGLUCR'
      Origin = '"PRODUTOS"."PRO_VLRMARGLUCR"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_VLRVENDA: TIBBCDField
      FieldName = 'PRO_VLRVENDA'
      Origin = '"PRODUTOS"."PRO_VLRVENDA"'
      Precision = 18
      Size = 2
    end
    object qProdutoPorPrecoPRO_OBS: TIBStringField
      FieldName = 'PRO_OBS'
      Origin = '"PRODUTOS"."PRO_OBS"'
      Size = 100
    end
    object qProdutoPorPrecoPRO_IMG: TBlobField
      FieldName = 'PRO_IMG'
      Origin = '"PRODUTOS"."PRO_IMG"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qProdutoPorPrecoPRO_GRUPO: TIBStringField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      FixedChar = True
      Size = 1
    end
  end
end
