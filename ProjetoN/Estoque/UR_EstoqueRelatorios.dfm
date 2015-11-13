object EstoqueRelatorios: TEstoqueRelatorios
  OldCreateOrder = False
  Height = 304
  Width = 597
  object ibqMovimentoPorData: TIBQuery
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
    object ibqMovimentoPorDataEM_EMPRESA: TIntegerField
      FieldName = 'EM_EMPRESA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqMovimentoPorDataEM_PRODUTO: TIBStringField
      FieldName = 'EM_PRODUTO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object ibqMovimentoPorDataEM_BLOCO: TIntegerField
      FieldName = 'EM_BLOCO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_BLOCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqMovimentoPorDataEM_PRATELEIRA: TIntegerField
      FieldName = 'EM_PRATELEIRA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PRATELEIRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqMovimentoPorDataEM_ESTOQUE: TIntegerField
      FieldName = 'EM_ESTOQUE'
      Origin = '"ESTOQ_MOVIMENTO"."EM_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqMovimentoPorDataEM_CODIGO: TIntegerField
      FieldName = 'EM_CODIGO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqMovimentoPorDataEM_TIPO: TIBStringField
      FieldName = 'EM_TIPO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_TIPO"'
      Required = True
      Size = 2
    end
    object ibqMovimentoPorDataEM_QTD: TIBBCDField
      FieldName = 'EM_QTD'
      Origin = '"ESTOQ_MOVIMENTO"."EM_QTD"'
      Precision = 18
      Size = 2
    end
    object ibqMovimentoPorDataEM_DATA: TDateTimeField
      FieldName = 'EM_DATA'
      Origin = '"ESTOQ_MOVIMENTO"."EM_DATA"'
    end
    object ibqMovimentoPorDataEM_OBS: TIBStringField
      FieldName = 'EM_OBS'
      Origin = '"ESTOQ_MOVIMENTO"."EM_OBS"'
      Size = 100
    end
    object ibqMovimentoPorDataEM_VALOR_FINANCEIRO: TIBBCDField
      FieldName = 'EM_VALOR_FINANCEIRO'
      Origin = '"ESTOQ_MOVIMENTO"."EM_VALOR_FINANCEIRO"'
      Precision = 18
      Size = 2
    end
    object ibqMovimentoPorDataEM_PEDIDOCOMPRAORIGEM: TIntegerField
      FieldName = 'EM_PEDIDOCOMPRAORIGEM'
      Origin = '"ESTOQ_MOVIMENTO"."EM_PEDIDOCOMPRAORIGEM"'
    end
    object ibqMovimentoPorDataPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
    object ibqMovimentoPorDataEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object ibqMovimentoPorDataBLOC_DESCRICAO: TIBStringField
      FieldName = 'BLOC_DESCRICAO'
      Origin = '"BLOCO"."BLOC_DESCRICAO"'
      Required = True
      Size = 60
    end
    object ibqMovimentoPorDataPRAT_DESCRICAO: TIBStringField
      FieldName = 'PRAT_DESCRICAO'
      Origin = '"PRATELEIRA"."PRAT_DESCRICAO"'
      Required = True
      Size = 60
    end
  end
  object frdbMovimentoPorData: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ibqMovimentoPorData
    BCDToCurrency = False
    Left = 144
    Top = 80
  end
  object frxMovimentoPorData: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42321.724752534700000000
    ReportOptions.LastChange = 42321.724752534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 24
    Datasets = <
      item
        DataSet = frdbMovimentoPorData
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Data/Hora')
        end
        object Memo2: TfrxMemoView
          Left = 128.504020000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Empresa')
        end
        object Memo3: TfrxMemoView
          Left = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Bloco')
        end
        object Memo4: TfrxMemoView
          Left = 325.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Prateleira')
        end
        object Memo5: TfrxMemoView
          Left = 411.968770000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 608.504330000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quantidade')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = frdbMovimentoPorData
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frdbMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_RAZAO"]')
        end
        object frxDBDataset1BLOC_DESCRICAO: TfrxMemoView
          Left = 222.992270000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_DESCRICAO'
          DataSet = frdbMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."BLOC_DESCRICAO"]')
        end
        object frxDBDataset1PRAT_DESCRICAO: TfrxMemoView
          Left = 325.039580000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRAT_DESCRICAO'
          DataSet = frdbMovimentoPorData
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
          DataSet = frdbMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_DESCRICAO"]')
        end
        object frxDBDataset1EM_DATA: TfrxMemoView
          Left = -15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'EM_DATA'
          DataSet = frdbMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EM_DATA"]')
        end
        object frxDBDataset1EM_QTD: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'EM_QTD'
          DataSet = frdbMovimentoPorData
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."EM_QTD"]')
        end
      end
    end
  end
end
