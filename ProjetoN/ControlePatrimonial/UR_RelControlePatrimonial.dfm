object R_RelatorioControlePatrimonial: TR_RelatorioControlePatrimonial
  OldCreateOrder = False
  Height = 444
  Width = 657
  object frxTIPO: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42336.636974236120000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 40
    Top = 29
    Datasets = <
      item
        DataSet = frxDBTIPO
        DataSetName = 'frxDBTIPO'
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
      object RB_Titulo: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipos de Patrim'#244'nios')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 117.165430000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBTIPO
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object frxDBTIPOTPB_CODIGO: TfrxMemoView
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'TPB_CODIGO'
          DataSet = frxDBTIPO
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."TPB_CODIGO"]')
        end
        object frxDBTIPOTPB_DESCRICAO: TfrxMemoView
          Left = 117.165430000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'TPB_DESCRICAO'
          DataSet = frxDBTIPO
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."TPB_DESCRICAO"]')
        end
        object frxDBTIPOTPB_STATUS: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TPB_STATUS'
          DataSet = frxDBTIPO
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."TPB_STATUS"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
      end
      object Memo10: TfrxMemoView
        Align = baCenter
        Left = 224.882035000000000000
        Top = 245.669450000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo Controle Patrimonial - ERP')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 631.181510000000000000
        Top = 253.228510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBTIPO: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TPB_CODIGO=TPB_CODIGO'
      'TPB_DESCRICAO=TPB_DESCRICAO'
      'TPB_STATUS=TPB_STATUS')
    DataSet = IB_TIPO
    BCDToCurrency = False
    Left = 104
    Top = 29
  end
  object IB_TIPO: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM TIPO_DE_BENS A'
      ' WHERE A.TPB_CODIGO = -1   ')
    Left = 168
    Top = 29
    object IB_TIPOTPB_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPB_CODIGO'
      Origin = '"TIPO_DE_BENS"."TPB_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_TIPOTPB_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPB_DESCRICAO'
      Origin = '"TIPO_DE_BENS"."TPB_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IB_TIPOTPB_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'TPB_STATUS'
      Origin = '"TIPO_DE_BENS"."TPB_STATUS"'
      Size = 1
    end
  end
  object IB_LOCALIZACAO: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM LOCALIZACAO A'
      ' WHERE A.LOC_CODIGO = -1')
    Left = 200
    Top = 85
    object IB_LOCALIZACAOLOC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LOC_CODIGO'
      Origin = '"LOCALIZACAO"."LOC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_LOCALIZACAOLOC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LOC_DESCRICAO'
      Origin = '"LOCALIZACAO"."LOC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IB_LOCALIZACAOLOC_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'LOC_STATUS'
      Origin = '"LOCALIZACAO"."LOC_STATUS"'
      Size = 1
    end
  end
  object frxLocalizacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42336.645426979160000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 40
    Top = 85
    Datasets = <
      item
        DataSet = frxDBLocalizacao
        DataSetName = 'frxDBTIPO'
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
      object RB_Titulo: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Localiza'#231#227'o dos Patrim'#244'nios')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 574.488559999999900000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 653.858689999999900000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLocalizacao
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object frxDBTIPOLOC_CODIGO: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'LOC_CODIGO'
          DataSet = frxDBLocalizacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."LOC_CODIGO"]')
        end
        object frxDBTIPOLOC_DESCRICAO: TfrxMemoView
          Left = 79.370130000000000000
          Width = 574.488559999999900000
          Height = 18.897650000000000000
          DataField = 'LOC_DESCRICAO'
          DataSet = frxDBLocalizacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."LOC_DESCRICAO"]')
        end
        object frxDBTIPOLOC_STATUS: TfrxMemoView
          Left = 653.858689999999900000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'LOC_STATUS'
          DataSet = frxDBLocalizacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."LOC_STATUS"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
      end
      object Memo10: TfrxMemoView
        Align = baCenter
        Left = 224.882035000000000000
        Top = 245.669450000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo Controle Patrimonial - ERP')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 631.181510000000000000
        Top = 253.228510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBLocalizacao: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LOC_CODIGO=LOC_CODIGO'
      'LOC_DESCRICAO=LOC_DESCRICAO'
      'LOC_STATUS=LOC_STATUS')
    DataSet = IB_LOCALIZACAO
    BCDToCurrency = False
    Left = 120
    Top = 85
  end
  object frxEstadoConservacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42336.645426979160000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 40
    Top = 141
    Datasets = <
      item
        DataSet = frxDBEstadoConservacao
        DataSetName = 'frxDBTIPO'
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
      object RB_Titulo: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipos de Estado de Conserva'#231#227'o dos Patrim'#244'nios')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 574.488559999999900000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 653.858689999999900000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBEstadoConservacao
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object frxDBTIPOLOC_DESCRICAO: TfrxMemoView
          Left = 79.370130000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'EDC_DESCRICAO'
          DataSet = frxDBEstadoConservacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."EDC_DESCRICAO"]')
        end
        object frxDBTIPOLOC_STATUS: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'EDC_STATUS'
          DataSet = frxDBEstadoConservacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."EDC_STATUS"]')
        end
        object frxDBTIPOEDC_CODIGO: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EDC_CODIGO'
          DataSet = frxDBEstadoConservacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."EDC_CODIGO"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
      end
      object Memo10: TfrxMemoView
        Align = baCenter
        Left = 224.882035000000000000
        Top = 245.669450000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo Controle Patrimonial - ERP')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 631.181510000000000000
        Top = 253.228510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBEstadoConservacao: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EDC_CODIGO=EDC_CODIGO'
      'EDC_DESCRICAO=EDC_DESCRICAO'
      'EDC_STATUS=EDC_STATUS')
    DataSet = IB_EstadoConservacao
    BCDToCurrency = False
    Left = 136
    Top = 141
  end
  object IB_EstadoConservacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM ESTADO_DE_CONSERVACAO A'
      ' WHERE A.EDC_CODIGO = -1')
    Left = 216
    Top = 141
    object IB_EstadoConservacaoEDC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EDC_CODIGO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_EstadoConservacaoEDC_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EDC_DESCRICAO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IB_EstadoConservacaoEDC_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'EDC_STATUS'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_STATUS"'
      Size = 1
    end
  end
  object frxBensImobilizados: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42336.721026088000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 336
    Top = 29
    Datasets = <
      item
        DataSet = frxDBBensImobilizados
        DataSetName = 'frxDBTIPO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object RB_Titulo: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bens Imobilizados')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 56.692950000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 117.165430000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 419.527830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Nota Fiscal')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 317.480520000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Num. Serie')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 487.559370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 604.724800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 702.992580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 801.260360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Est. Conserva'#231#227'o')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 899.528140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr. Atual')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBBensImobilizados
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object frxDBTIPOBNI_EMPRESA: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_EMPRESA'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_EMPRESA"]')
        end
        object frxDBTIPOBNI_CODIGO: TfrxMemoView
          Left = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_CODIGO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_CODIGO"]')
        end
        object frxDBTIPOBNI_DESCRICAO: TfrxMemoView
          Left = 117.165430000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_DESCRICAO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DESCRICAO"]')
        end
        object frxDBTIPOBNI_NUM_SERIE: TfrxMemoView
          Left = 317.480520000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NUM_SERIE'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NUM_SERIE"]')
        end
        object frxDBTIPOBNI_NR_NOTA: TfrxMemoView
          Left = 419.527830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NR_NOTA'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NR_NOTA"]')
        end
        object frxDBTIPONOME: TfrxMemoView
          Left = 487.559370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."NOME"]')
        end
        object frxDBTIPOTIPO: TfrxMemoView
          Left = 604.724800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."TIPO"]')
        end
        object frxDBTIPOLOCALIZACAO: TfrxMemoView
          Left = 702.992580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LOCALIZACAO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."LOCALIZACAO"]')
        end
        object frxDBTIPOESTADO_CONSERVACAO: TfrxMemoView
          Left = 801.260360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO_CONSERVACAO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."ESTADO_CONSERVACAO"]')
        end
        object frxDBTIPOBNI_VLR_ATUAL: TfrxMemoView
          Left = 899.528140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_ATUAL'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_ATUAL"]')
        end
        object frxDBTIPOBNI_STATUS: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_STATUS'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_STATUS"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 1046.929810000000000000
      end
      object Memo10: TfrxMemoView
        Align = baCenter
        Left = 389.291590000000100000
        Top = 245.669450000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo Controle Patrimonial - ERP')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 631.181510000000000000
        Top = 253.228510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBBensImobilizados: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BNI_EMPRESA=BNI_EMPRESA'
      'BNI_CODIGO=BNI_CODIGO'
      'BNI_NUM_SERIE=BNI_NUM_SERIE'
      'BNI_NR_NOTA=BNI_NR_NOTA'
      'BNI_FORNECEDOR=BNI_FORNECEDOR'
      'NOME=NOME'
      'BNI_DESCRICAO=BNI_DESCRICAO'
      'TIPO=TIPO'
      'LOCALIZACAO=LOCALIZACAO'
      'ESTADO_CONSERVACAO=ESTADO_CONSERVACAO'
      'BNI_MANUTENCAO=BNI_MANUTENCAO'
      'BNI_DATA_AQUISICAO=BNI_DATA_AQUISICAO'
      'BNI_VLR_AQUISICAO=BNI_VLR_AQUISICAO'
      'BNI_VLR_RESIDUAL=BNI_VLR_RESIDUAL'
      'BNI_VLR_AGREGADO=BNI_VLR_AGREGADO'
      'BNI_VLR_ATUAL=BNI_VLR_ATUAL'
      'BNI_DEPRECIACAO=BNI_DEPRECIACAO'
      'BNI_STATUS=BNI_STATUS')
    DataSet = IBBensImobilizados
    BCDToCurrency = False
    Left = 400
    Top = 29
  end
  object IBBensImobilizados: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.BNI_EMPRESA,'
      '       A.BNI_CODIGO,'
      '       A.BNI_NUM_SERIE,'
      '       A.BNI_NR_NOTA,'
      '       A.BNI_FORNECEDOR,'
      '       B.PESS_NOME AS NOME,'
      '       A.BNI_DESCRICAO,'
      '       C.TPB_DESCRICAO AS TIPO,'
      '       D.LOC_DESCRICAO AS LOCALIZACAO,'
      '       E.EDC_DESCRICAO AS ESTADO_CONSERVACAO,'
      '       A.BNI_MANUTENCAO,'
      '       A.BNI_DATA_AQUISICAO,'
      '       A.BNI_VLR_AQUISICAO,'
      '       A.BNI_VLR_RESIDUAL,'
      '       A.BNI_VLR_AGREGADO,'
      '       A.BNI_VLR_ATUAL,'
      '       A.BNI_DEPRECIACAO,'
      '       A.BNI_STATUS'
      '  FROM BENS_IMOBILIZADOS A'
      ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR'
      ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO'
      ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_DESCRICAO'
      
        ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO ' +
        '= E.EDC_DESCRICAO'
      ' WHERE A.BNI_EMPRESA = -1 AND'
      '       A.BNI_CODIGO = -1 AND'
      '       A.BNI_NUM_SERIE = -1   ')
    Left = 464
    Top = 29
    object IBBensImobilizadosBNI_EMPRESA: TIntegerField
      FieldName = 'BNI_EMPRESA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBensImobilizadosBNI_CODIGO: TIntegerField
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBensImobilizadosBNI_NUM_SERIE: TIntegerField
      FieldName = 'BNI_NUM_SERIE'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NUM_SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBensImobilizadosBNI_NR_NOTA: TIntegerField
      FieldName = 'BNI_NR_NOTA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NR_NOTA"'
      Required = True
    end
    object IBBensImobilizadosBNI_FORNECEDOR: TIntegerField
      FieldName = 'BNI_FORNECEDOR'
      Origin = '"BENS_IMOBILIZADOS"."BNI_FORNECEDOR"'
      Required = True
    end
    object IBBensImobilizadosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IBBensImobilizadosBNI_DESCRICAO: TIBStringField
      FieldName = 'BNI_DESCRICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"TIPO_DE_BENS"."TPB_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosLOCALIZACAO: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = '"LOCALIZACAO"."LOC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosESTADO_CONSERVACAO: TIBStringField
      FieldName = 'ESTADO_CONSERVACAO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosBNI_MANUTENCAO: TIntegerField
      FieldName = 'BNI_MANUTENCAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_MANUTENCAO"'
    end
    object IBBensImobilizadosBNI_DATA_AQUISICAO: TDateField
      FieldName = 'BNI_DATA_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DATA_AQUISICAO"'
      Required = True
    end
    object IBBensImobilizadosBNI_VLR_AQUISICAO: TIBBCDField
      FieldName = 'BNI_VLR_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AQUISICAO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosBNI_VLR_RESIDUAL: TIBBCDField
      FieldName = 'BNI_VLR_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_RESIDUAL"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosBNI_VLR_AGREGADO: TIBBCDField
      FieldName = 'BNI_VLR_AGREGADO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AGREGADO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosBNI_VLR_ATUAL: TIBBCDField
      FieldName = 'BNI_VLR_ATUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_ATUAL"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosBNI_DEPRECIACAO: TIBBCDField
      FieldName = 'BNI_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DEPRECIACAO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosBNI_STATUS: TIBStringField
      FieldName = 'BNI_STATUS'
      Origin = '"BENS_IMOBILIZADOS"."BNI_STATUS"'
      Size = 1
    end
  end
  object frxDepreciacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42336.721026088000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 336
    Top = 93
    Datasets = <
      item
        DataSet = frxDBDepreciacao
        DataSetName = 'frxDBTIPO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object RB_Titulo: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bens Imobilizados')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 56.692950000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 117.165430000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 419.527830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Nota Fiscal')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 317.480520000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Num. Serie')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 487.559370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 604.724800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 702.992580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 801.260360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Est. Conserva'#231#227'o')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 899.528140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr. Atual')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDepreciacao
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object frxDBTIPOBNI_EMPRESA: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_EMPRESA'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_EMPRESA"]')
        end
        object frxDBTIPOBNI_CODIGO: TfrxMemoView
          Left = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_CODIGO'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_CODIGO"]')
        end
        object frxDBTIPOBNI_DESCRICAO: TfrxMemoView
          Left = 117.165430000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_DESCRICAO'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DESCRICAO"]')
        end
        object frxDBTIPOBNI_NUM_SERIE: TfrxMemoView
          Left = 317.480520000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NUM_SERIE'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NUM_SERIE"]')
        end
        object frxDBTIPOBNI_NR_NOTA: TfrxMemoView
          Left = 419.527830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NR_NOTA'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NR_NOTA"]')
        end
        object frxDBTIPONOME: TfrxMemoView
          Left = 487.559370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."NOME"]')
        end
        object frxDBTIPOTIPO: TfrxMemoView
          Left = 604.724800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."TIPO"]')
        end
        object frxDBTIPOLOCALIZACAO: TfrxMemoView
          Left = 702.992580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LOCALIZACAO'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."LOCALIZACAO"]')
        end
        object frxDBTIPOESTADO_CONSERVACAO: TfrxMemoView
          Left = 801.260360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO_CONSERVACAO'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."ESTADO_CONSERVACAO"]')
        end
        object frxDBTIPOBNI_VLR_ATUAL: TfrxMemoView
          Left = 899.528140000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_ATUAL'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_ATUAL"]')
        end
        object frxDBTIPOBNI_STATUS: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_STATUS'
          DataSet = frxDBDepreciacao
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_STATUS"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 1046.929810000000000000
      end
      object Memo10: TfrxMemoView
        Align = baCenter
        Left = 389.291590000000100000
        Top = 245.669450000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo Controle Patrimonial - ERP')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 631.181510000000000000
        Top = 253.228510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBDepreciacao: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BNI_EMPRESA=BNI_EMPRESA'
      'BNI_CODIGO=BNI_CODIGO'
      'BNI_NUM_SERIE=BNI_NUM_SERIE'
      'BNI_NR_NOTA=BNI_NR_NOTA'
      'BNI_FORNECEDOR=BNI_FORNECEDOR'
      'NOME=NOME'
      'BNI_DESCRICAO=BNI_DESCRICAO'
      'TIPO=TIPO'
      'LOCALIZACAO=LOCALIZACAO'
      'ESTADO_CONSERVACAO=ESTADO_CONSERVACAO'
      'BNI_MANUTENCAO=BNI_MANUTENCAO'
      'BNI_DATA_AQUISICAO=BNI_DATA_AQUISICAO'
      'BNI_VLR_AQUISICAO=BNI_VLR_AQUISICAO'
      'BNI_VLR_RESIDUAL=BNI_VLR_RESIDUAL'
      'BNI_VLR_AGREGADO=BNI_VLR_AGREGADO'
      'BNI_VLR_ATUAL=BNI_VLR_ATUAL'
      'BNI_DEPRECIACAO=BNI_DEPRECIACAO'
      'BNI_STATUS=BNI_STATUS')
    DataSet = IBDepreciacao
    BCDToCurrency = False
    Left = 400
    Top = 93
  end
  object IBDepreciacao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.BNI_EMPRESA,'
      '       A.BNI_CODIGO,'
      '       A.BNI_NUM_SERIE,'
      '       A.BNI_NR_NOTA,'
      '       A.BNI_FORNECEDOR,'
      '       B.PESS_NOME AS NOME,'
      '       A.BNI_DESCRICAO,'
      '       C.TPB_DESCRICAO AS TIPO,'
      '       D.LOC_DESCRICAO AS LOCALIZACAO,'
      '       E.EDC_DESCRICAO AS ESTADO_CONSERVACAO,'
      '       A.BNI_MANUTENCAO,'
      '       A.BNI_DATA_AQUISICAO,'
      '       A.BNI_VLR_AQUISICAO,'
      '       A.BNI_VLR_RESIDUAL,'
      '       A.BNI_VLR_AGREGADO,'
      '       A.BNI_VLR_ATUAL,'
      '       A.BNI_DEPRECIACAO,'
      '       A.BNI_STATUS'
      '  FROM BENS_IMOBILIZADOS A'
      ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR'
      ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO'
      ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_DESCRICAO'
      
        ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO ' +
        '= E.EDC_DESCRICAO'
      ' WHERE A.BNI_EMPRESA = -1 AND'
      '       A.BNI_CODIGO = -1 AND'
      '       A.BNI_NUM_SERIE = -1   ')
    Left = 464
    Top = 93
    object IntegerField1: TIntegerField
      FieldName = 'BNI_EMPRESA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'BNI_NUM_SERIE'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NUM_SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'BNI_NR_NOTA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NR_NOTA"'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'BNI_FORNECEDOR'
      Origin = '"BENS_IMOBILIZADOS"."BNI_FORNECEDOR"'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IBStringField2: TIBStringField
      FieldName = 'BNI_DESCRICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBStringField3: TIBStringField
      FieldName = 'TIPO'
      Origin = '"TIPO_DE_BENS"."TPB_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBStringField4: TIBStringField
      FieldName = 'LOCALIZACAO'
      Origin = '"LOCALIZACAO"."LOC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBStringField5: TIBStringField
      FieldName = 'ESTADO_CONSERVACAO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'BNI_MANUTENCAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_MANUTENCAO"'
    end
    object DateField1: TDateField
      FieldName = 'BNI_DATA_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DATA_AQUISICAO"'
      Required = True
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'BNI_VLR_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AQUISICAO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'BNI_VLR_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_RESIDUAL"'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'BNI_VLR_AGREGADO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AGREGADO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'BNI_VLR_ATUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_ATUAL"'
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'BNI_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DEPRECIACAO"'
      Precision = 18
      Size = 2
    end
    object IBStringField6: TIBStringField
      FieldName = 'BNI_STATUS'
      Origin = '"BENS_IMOBILIZADOS"."BNI_STATUS"'
      Size = 1
    end
  end
end
