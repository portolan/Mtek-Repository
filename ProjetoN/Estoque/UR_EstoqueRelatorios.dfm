object EstoqueRelatorios: TEstoqueRelatorios
  OldCreateOrder = False
  Height = 304
  Width = 597
  object query: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
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
        'presa = em_empresa')
    Left = 144
    Top = 128
    object queryEM_EMPRESA: TIntegerField
      FieldName = 'EM_EMPRESA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryEM_PRODUTO: TIBStringField
      FieldName = 'EM_PRODUTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object queryEM_BLOCO: TIntegerField
      FieldName = 'EM_BLOCO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryEM_PRATELEIRA: TIntegerField
      FieldName = 'EM_PRATELEIRA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRATELEIRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryEM_ESTOQUE: TIntegerField
      FieldName = 'EM_ESTOQUE'
      Origin = '"ESTOQ_MOVIMENTO"."EM_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryEM_CODIGO: TIntegerField
      FieldName = 'EM_CODIGO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryEM_TIPO: TIBStringField
      FieldName = 'EM_TIPO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_TIPO"'
      Required = True
      Size = 2
    end
    object queryEM_QTD: TIBBCDField
      FieldName = 'EM_QTD'
      Origin = '"ESTOQ_MOVIMENTO"."EM_QTD"'
      Precision = 18
      Size = 2
    end
    object queryEM_DATA: TDateTimeField
      FieldName = 'EM_DATA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DATA"'
    end
    object queryEM_OBS: TIBStringField
      FieldName = 'EM_OBS'
      Origin = '"ESTOQ_MOVIMENTO"."EM_OBS"'
      Size = 100
    end
    object queryEM_VALOR_FINANCEIRO: TIBBCDField
      FieldName = 'EM_VALOR_FINANCEIRO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_VALOR_FINANCEIRO"'
      Precision = 18
      Size = 2
    end
    object queryEM_PEDIDOCOMPRAORIGEM: TIntegerField
      FieldName = 'EM_PEDIDOCOMPRAORIGEM'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PEDIDOCOMPRAORIGEM"'
    end
    object queryPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
    object queryEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object queryBLOC_DESCRICAO: TIBStringField
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Required = True
      Size = 60
    end
    object queryPRAT_DESCRICAO: TIBStringField
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Required = True
      Size = 60
    end
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = query
    BCDToCurrency = False
    Left = 144
    Top = 80
  end
  object frxReport: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    EngineOptions.UseFileCache = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42321.724752534700000000
    ReportOptions.LastChange = 42325.005645462960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 136
    Datasets = <
      item
        DataSet = frxDB
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
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_RAZAO"]')
        end
        object frxDBDataset1BLOC_DESCRICAO: TfrxMemoView
          Left = 222.992270000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."BLOC_DESCRICAO"]')
        end
        object frxDBDataset1PRAT_DESCRICAO: TfrxMemoView
          Left = 325.039580000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRAT_DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PRAT_DESCRICAO"]')
        end
        object frxDBDataset1PRO_DESCRICAO: TfrxMemoView
          Left = 411.968770000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Cursor = crHourGlass
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_DESCRICAO"]')
        end
        object frxDBDataset1EM_DATA: TfrxMemoView
          Left = -15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'EM_DATA'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EM_DATA"]')
        end
        object frxDBDataset1EM_QTD: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'EM_QTD'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EM_QTD"]')
        end
      end
      object SysMemo1: TfrxSysMemoView
        Left = 226.771800000000000000
        Top = 461.102660000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
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
end
