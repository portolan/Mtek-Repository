object EstoqueRelatorios: TEstoqueRelatorios
  OldCreateOrder = False
  Height = 304
  Width = 597
  object frxReportBloco: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42312.919971284700000000
    ReportOptions.LastChange = 42312.996348298600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDatasetBloco
        DataSetName = 'Bloco'
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
      object rtTitulo: TfrxReportTitle
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Relat'#243'rio de Blocos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetBloco
        DataSetName = 'Bloco'
        RowCount = 0
        object BlocoBLOC_EMPRESA: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_EMPRESA'
          DataSet = frxDBDatasetBloco
          DataSetName = 'Bloco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Bloco."BLOC_EMPRESA"]')
          ParentFont = False
        end
        object BlocoBLOC_CODIGO: TfrxMemoView
          Align = baLeft
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_CODIGO'
          DataSet = frxDBDatasetBloco
          DataSetName = 'Bloco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Bloco."BLOC_CODIGO"]')
          ParentFont = False
        end
        object BlocoBLOC_DESCRICAO: TfrxMemoView
          Align = baLeft
          Left = 249.448980000000000000
          Top = 3.779530000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_DESCRICAO'
          DataSet = frxDBDatasetBloco
          DataSetName = 'Bloco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Bloco."BLOC_DESCRICAO"]')
          ParentFont = False
        end
        object BlocoBLOC_OBS: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'BLOC_OBS'
          DataSet = frxDBDatasetBloco
          DataSetName = 'Bloco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Bloco."BLOC_OBS"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetBloco: TfrxDBDataset
    UserName = 'Bloco'
    CloseDataSource = False
    DataSet = DM_Estoque.Bloco
    BCDToCurrency = False
    Left = 256
    Top = 104
  end
end
