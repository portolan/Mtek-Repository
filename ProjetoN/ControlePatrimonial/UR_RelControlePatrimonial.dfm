object R_RelatorioControlePatrimonial: TR_RelatorioControlePatrimonial
  OldCreateOrder = False
  Height = 206
  Width = 607
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
        object frxDBTIPOBNI_CODIGO: TfrxMemoView
          Left = 56.692950000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_CODIGO'
          DataSet = frxDBBensImobilizados
          DataSetName = 'frxDBTIPO'
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_CODIGO"]')
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
      'BNI_STATUS=BNI_STATUS'
      'BNI_CODIGO=BNI_CODIGO'
      'BNI_TEMPO_RESIDUAL=BNI_TEMPO_RESIDUAL'
      'BNI_TEMPO_DEPRECIACAO=BNI_TEMPO_DEPRECIACAO')
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
      '       A.BNI_STATUS,'
      '       A.BNI_TEMPO_RESIDUAL,'
      '       A.BNI_TEMPO_DEPRECIACAO'
      '  FROM BENS_IMOBILIZADOS A'
      ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR'
      ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO'
      ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_CODIGO'
      
        ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO ' +
        '= E.EDC_CODIGO'
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
    object IBBensImobilizadosBNI_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object IBBensImobilizadosBNI_TEMPO_RESIDUAL: TIntegerField
      FieldName = 'BNI_TEMPO_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_RESIDUAL"'
    end
    object IBBensImobilizadosBNI_TEMPO_DEPRECIACAO: TIntegerField
      FieldName = 'BNI_TEMPO_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_DEPRECIACAO"'
    end
  end
  object frxBensImobilizadosAnalitico: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42337.714029143520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 336
    Top = 93
    Datasets = <
      item
        DataSet = frxDBBensImobilizadosAnalitico
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
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBBensImobilizadosAnalitico
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 56.692950000000010000
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
          Left = 408.189240000000100000
          Width = 68.031540000000010000
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
          Width = 90.708720000000000000
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
          Left = 476.220780000000100000
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
          Left = 593.386210000000000000
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
          Left = 691.653990000000000000
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
          Left = 789.921770000000000000
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
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 888.189550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Dta. Aquisi'#231#227'o')
          ParentFont = False
        end
        object frxDBTIPOBNI_EMPRESA: TfrxMemoView
          Top = 18.897650000000030000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'BNI_EMPRESA'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_EMPRESA"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_DESCRICAO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897649999999970000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_DESCRICAO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_NUM_SERIE: TfrxMemoView
          Left = 317.480520000000000000
          Top = 18.897649999999970000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NUM_SERIE'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NUM_SERIE"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_NR_NOTA: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Top = 18.897649999999970000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataField = 'BNI_NR_NOTA'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NR_NOTA"]')
          ParentFont = False
        end
        object frxDBTIPONOME: TfrxMemoView
          Align = baLeft
          Left = 476.220780000000000000
          Top = 18.897649999999970000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."NOME"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_STATUS: TfrxMemoView
          Left = 982.677800000000000000
          Top = 18.897649999999970000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_STATUS'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_STATUS"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_CODIGO: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897649999999970000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_CODIGO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_CODIGO"]')
          ParentFont = False
        end
        object frxDBTIPOTIPO: TfrxMemoView
          Align = baLeft
          Left = 593.386210000000000000
          Top = 18.897649999999970000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."TIPO"]')
          ParentFont = False
        end
        object frxDBTIPOLOCALIZACAO: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Top = 18.897649999999970000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LOCALIZACAO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."LOCALIZACAO"]')
          ParentFont = False
        end
        object frxDBTIPOESTADO_CONSERVACAO: TfrxMemoView
          Align = baLeft
          Left = 789.921770000000000000
          Top = 18.897649999999970000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO_CONSERVACAO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."ESTADO_CONSERVACAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_DATA_AQUISICAO: TfrxMemoView
          Align = baWidth
          Left = 888.189550000000000000
          Top = 18.897649999999970000
          Width = 94.488249999999950000
          Height = 18.897650000000000000
          DataField = 'BNI_DATA_AQUISICAO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DATA_AQUISICAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574829999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Aquisi'#231#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 287.244280000000000000
          Top = 41.574829999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Residual')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 204.094620000000000000
          Top = 41.574829999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Agregado')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 370.393940000000000000
          Top = 41.574829999999990000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Base')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 427.086890000000000000
          Top = 41.574829999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Perc. Deprecia'#231#227'o')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 41.574829999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Atual')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 616.063390000000000000
          Top = 41.574829999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Dep. Mensal')
          ParentFont = False
        end
        object frxDBTIPOBNI_VLR_AQUISICAO: TfrxMemoView
          Left = 120.944960000000000000
          Top = 64.252009999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_AQUISICAO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_AQUISICAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_VLR_AGREGADO: TfrxMemoView
          Left = 204.094620000000000000
          Top = 64.252009999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_AGREGADO'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_AGREGADO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_VLR_RESIDUAL: TfrxMemoView
          Left = 287.244280000000000000
          Top = 64.252009999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_RESIDUAL'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_RESIDUAL"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 370.393940000000000000
          Top = 64.252009999999990000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[(<frxDBTIPO."BNI_VLR_AQUISICAO">+<frxDBTIPO."BNI_VLR_AGREGADO">' +
              ')-<frxDBTIPO."BNI_VLR_RESIDUAL">]')
          ParentFont = False
        end
        object frxDBTIPOBNI_DEPRECIACAO: TfrxMemoView
          Left = 427.086890000000000000
          Top = 64.252009999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DEPRECIACAO"] %')
          ParentFont = False
        end
        object frxDBTIPOBNI_VLR_ATUAL: TfrxMemoView
          Left = 532.913730000000000000
          Top = 64.252009999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_ATUAL'
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_ATUAL"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 616.063390000000000000
          Top = 64.252009999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[((((<frxDBTIPO."BNI_VLR_AQUISICAO">+<frxDBTIPO."BNI_VLR_AGREGAD' +
              'O">)-<frxDBTIPO."BNI_VLR_RESIDUAL">) * <frxDBTIPO."BNI_DEPRECIAC' +
              'AO">) / 100) / 12]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 718.110700000000000000
          Top = 41.574829999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Vlr. Dep. Anual')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 718.110700000000000000
          Top = 64.252009999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[((((<frxDBTIPO."BNI_VLR_AQUISICAO">+<frxDBTIPO."BNI_VLR_AGREGAD' +
              'O">)-<frxDBTIPO."BNI_VLR_RESIDUAL">) * <frxDBTIPO."BNI_DEPRECIAC' +
              'AO">) / 100) ]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 820.158010000000000000
          Top = 41.574829999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Tempo Dep.')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 820.158010000000000000
          Top = 64.252009999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_TEMPO_DEPRECIACAO"] Anos')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 922.205320000000000000
          Top = 41.574829999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clHighlightText
          Memo.UTF8W = (
            'Tempo Residual')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 922.205320000000000000
          Top = 64.252009999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBensImobilizadosAnalitico
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_TEMPO_RESIDUAL"] Anos')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 778.583180000000100000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#243'dulo Controle Patrimonial - ERP')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBensImobilizadosAnalitico: TfrxDBDataset
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
      'BNI_STATUS=BNI_STATUS'
      'BNI_TEMPO_DEPRECIACAO=BNI_TEMPO_DEPRECIACAO'
      'BNI_TEMPO_RESIDUAL=BNI_TEMPO_RESIDUAL')
    DataSet = IBBensImobilizadosAnalitico
    BCDToCurrency = False
    Left = 400
    Top = 93
  end
  object IBBensImobilizadosAnalitico: TIBQuery
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
      '       A.BNI_STATUS,'
      '       A.BNI_TEMPO_DEPRECIACAO,'
      '       A.BNI_TEMPO_RESIDUAL'
      '  FROM BENS_IMOBILIZADOS A'
      ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR'
      ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO'
      ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_CODIGO'
      
        ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO ' +
        '= E.EDC_CODIGO'
      ' WHERE A.BNI_EMPRESA = -1 AND'
      '       A.BNI_CODIGO = -1 AND'
      '       A.BNI_NUM_SERIE = -1   ')
    Left = 464
    Top = 93
    object IBBensImobilizadosAnaliticoBNI_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'BNI_EMPRESA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBensImobilizadosAnaliticoBNI_CODIGO: TIBStringField
      DisplayLabel = 'Cod. Produto'
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object IBBensImobilizadosAnaliticoBNI_NUM_SERIE: TIntegerField
      DisplayLabel = 'Num. Serie'
      FieldName = 'BNI_NUM_SERIE'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NUM_SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBBensImobilizadosAnaliticoBNI_NR_NOTA: TIntegerField
      DisplayLabel = 'Nr. Nota'
      FieldName = 'BNI_NR_NOTA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NR_NOTA"'
      Required = True
    end
    object IBBensImobilizadosAnaliticoBNI_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'BNI_FORNECEDOR'
      Origin = '"BENS_IMOBILIZADOS"."BNI_FORNECEDOR"'
      Required = True
    end
    object IBBensImobilizadosAnaliticoNOME: TIBStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IBBensImobilizadosAnaliticoBNI_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BNI_DESCRICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosAnaliticoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"TIPO_DE_BENS"."TPB_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosAnaliticoLOCALIZACAO: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'LOCALIZACAO'
      Origin = '"LOCALIZACAO"."LOC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosAnaliticoESTADO_CONSERVACAO: TIBStringField
      DisplayLabel = 'Estado de Conserva'#231#227'o'
      FieldName = 'ESTADO_CONSERVACAO'
      Origin = '"ESTADO_DE_CONSERVACAO"."EDC_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBBensImobilizadosAnaliticoBNI_DATA_AQUISICAO: TDateField
      DisplayLabel = 'Data Aquisi'#231#227'o'
      FieldName = 'BNI_DATA_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DATA_AQUISICAO"'
      Required = True
    end
    object IBBensImobilizadosAnaliticoBNI_VLR_AQUISICAO: TIBBCDField
      DisplayLabel = 'Valor Aquisi'#231#227'o'
      FieldName = 'BNI_VLR_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AQUISICAO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosAnaliticoBNI_VLR_RESIDUAL: TIBBCDField
      DisplayLabel = 'Valor Residual'
      FieldName = 'BNI_VLR_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_RESIDUAL"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosAnaliticoBNI_VLR_AGREGADO: TIBBCDField
      DisplayLabel = 'Valor Agregado'
      FieldName = 'BNI_VLR_AGREGADO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AGREGADO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosAnaliticoBNI_VLR_ATUAL: TIBBCDField
      DisplayLabel = 'Valor Atual'
      FieldName = 'BNI_VLR_ATUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_ATUAL"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosAnaliticoBNI_DEPRECIACAO: TIBBCDField
      DisplayLabel = 'Perc. Deprecia'#231#227'o'
      FieldName = 'BNI_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DEPRECIACAO"'
      Precision = 18
      Size = 2
    end
    object IBBensImobilizadosAnaliticoBNI_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'BNI_STATUS'
      Origin = '"BENS_IMOBILIZADOS"."BNI_STATUS"'
      Size = 1
    end
    object IBBensImobilizadosAnaliticoBNI_TEMPO_DEPRECIACAO: TIntegerField
      DisplayLabel = 'Tempo Deprecia'#231#227'o'
      FieldName = 'BNI_TEMPO_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_DEPRECIACAO"'
    end
    object IBBensImobilizadosAnaliticoBNI_TEMPO_RESIDUAL: TIntegerField
      DisplayLabel = 'Tempo Residual'
      FieldName = 'BNI_TEMPO_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_RESIDUAL"'
    end
  end
  object frxManutencao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42337.714029143500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 336
    Top = 149
    Datasets = <
      item
        DataSet = frxDBManutencao
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
        Height = 3.779530000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 294.803340000000000000
        Top = 204.094620000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBManutencao
        DataSetName = 'frxDBTIPO'
        RowCount = 0
        StartNewPage = True
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 18.897649999999970000
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
          Top = 18.897649999999970000
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
          Left = 960.000620000000100000
          Top = 18.897649999999970000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr. Depreciado')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 117.165430000000000000
          Top = 18.897649999999970000
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
          Left = 408.189240000000100000
          Top = 18.897649999999970000
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
          Top = 18.897649999999970000
          Width = 90.708720000000000000
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
          Left = 476.220780000000100000
          Top = 18.897649999999970000
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
            'Fornecedor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 544.252320000000100000
          Top = 18.897649999999970000
          Width = 49.133890000000000000
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
          Left = 593.386210000000000000
          Top = 18.897649999999970000
          Width = 71.811070000000000000
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
          Left = 665.197280000000000000
          Top = 18.897649999999970000
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
            'Est. Cons.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 733.228819999999900000
          Top = 18.897649999999970000
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
            'Dta. Aquisi'#231#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 816.378480000000000000
          Top = 18.897649999999970000
          Width = 71.811070000000000000
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
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 888.189550000000000000
          Top = 18.897649999999970000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr. Base')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            'BEN IMOBILIZADO')
          ParentFont = False
        end
        object frxDBTIPOBNI_EMPRESA: TfrxMemoView
          Top = 45.354359999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_EMPRESA'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_EMPRESA"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_DESCRICAO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 45.354359999999990000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_DESCRICAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_NUM_SERIE: TfrxMemoView
          Left = 317.480520000000000000
          Top = 45.354359999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NUM_SERIE'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NUM_SERIE"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_NR_NOTA: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Top = 45.354359999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_NR_NOTA'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_NR_NOTA"]')
          ParentFont = False
        end
        object frxDBTIPONOME: TfrxMemoView
          Align = baLeft
          Left = 476.220780000000000000
          Top = 45.354359999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_FORNECEDOR'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_FORNECEDOR"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_STATUS: TfrxMemoView
          Align = baWidth
          Left = 960.000620000000000000
          Top = 45.354359999999990000
          Width = 86.929190000000060000
          Height = 18.897650000000000000
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[((<frxDBTIPO."BNI_VLR_AQUISICAO">+<frxDBTIPO."BNI_VLR_AGREGADO"' +
              '>) - <frxDBTIPO."BNI_VLR_RESIDUAL">) - <frxDBTIPO."BNI_VLR_ATUAL' +
              '"> ]')
          ParentFont = False
        end
        object frxDBTIPOBNI_CODIGO: TfrxMemoView
          Left = 56.692950000000000000
          Top = 45.354359999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_CODIGO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_CODIGO"]')
          ParentFont = False
        end
        object frxDBTIPOTIPO: TfrxMemoView
          Align = baLeft
          Left = 544.252319999999900000
          Top = 45.354359999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_TIPO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_TIPO"]')
          ParentFont = False
        end
        object frxDBTIPOLOCALIZACAO: TfrxMemoView
          Align = baLeft
          Left = 593.386209999999900000
          Top = 45.354359999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_LOCALIZACAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_LOCALIZACAO"]')
          ParentFont = False
        end
        object frxDBTIPOESTADO_CONSERVACAO: TfrxMemoView
          Align = baLeft
          Left = 665.197279999999900000
          Top = 45.354359999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_ESTADO_CONSERVACAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_ESTADO_CONSERVACAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_DATA_AQUISICAO: TfrxMemoView
          Left = 733.228820000000000000
          Top = 45.354359999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_DATA_AQUISICAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_DATA_AQUISICAO"]')
          ParentFont = False
        end
        object frxDBTIPOBNI_VLR_ATUAL: TfrxMemoView
          Left = 816.378480000000000000
          Top = 45.354359999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'BNI_VLR_ATUAL'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTIPO."BNI_VLR_ATUAL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 888.189550000000000000
          Top = 45.354359999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[(<frxDBTIPO."BNI_VLR_AQUISICAO">+<frxDBTIPO."BNI_VLR_AGREGADO">' +
              ') - <frxDBTIPO."BNI_VLR_RESIDUAL">]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 86.929189999998780000
          Width = 79.370130000000000000
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
        object Memo17: TfrxMemoView
          Align = baWidth
          Top = 68.031539999998780000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            'MANUTEN'#199#195'O')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Top = 86.929189999998780000
          Width = 249.448980000000000000
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
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 593.386210000000000000
          Top = 86.929189999998780000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr Componente')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 706.772110000000000000
          Top = 86.929189999998780000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr Manuten'#231#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 820.158010000000000000
          Top = 86.929189999998780000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr Total')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 933.543910000000000000
          Top = 86.929189999998780000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Agrega Custo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 328.819110000000000000
          Top = 86.929189999998780000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Num Serie')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 86.929189999998780000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Ben Imobilizado')
          ParentFont = False
        end
        object frxDBTIPOMAN_CODIGO: TfrxMemoView
          Align = baLeft
          Top = 105.826839999999700000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_CODIGO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_CODIGO"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_DESCRICAO: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Top = 105.826839999999700000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_DESCRICAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_VLR_COMPONENTE: TfrxMemoView
          Align = baLeft
          Left = 593.386210000000000000
          Top = 105.826839999999700000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_VLR_COMPONENTE'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_VLR_COMPONENTE"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_VLR_MANUTENCAO: TfrxMemoView
          Align = baLeft
          Left = 706.772110000000000000
          Top = 105.826839999999700000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_VLR_MANUTENCAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_VLR_MANUTENCAO"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_VLR_TOTAL: TfrxMemoView
          Align = baLeft
          Left = 820.158010000000000000
          Top = 105.826839999999700000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_VLR_TOTAL'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_VLR_TOTAL"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_AGREGA_CUSTO: TfrxMemoView
          Align = baLeft
          Left = 933.543910000000000000
          Top = 105.826839999999700000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_AGREGA_CUSTO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_AGREGA_CUSTO"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_NUM_SERIE: TfrxMemoView
          Align = baLeft
          Left = 328.819110000000000000
          Top = 105.826839999999700000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_NUM_SERIE'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_NUM_SERIE"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_BEN: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 105.826839999999700000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'MAN_BEN'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."MAN_BEN"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 90.708720000000000000
          Top = 204.094620000000000000
          Width = 79.370130000000000000
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
        object Memo27: TfrxMemoView
          Align = baWidth
          Top = 185.196970000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPONENTE')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 170.078850000000000000
          Top = 204.094620000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Manuten'#231#227'o')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 570.709030000000000000
          Top = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 657.638220000000000000
          Top = 204.094620000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 332.598640000000000000
          Top = 204.094620000000000000
          Width = 113.385900000000000000
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
        object Memo34: TfrxMemoView
          Left = 445.984540000000000000
          Top = 204.094620000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Vlr. Componente')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 771.024120000000000000
          Top = 204.094620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'C'#243'd. Mov. Est. Sa'#237'da')
          ParentFont = False
        end
        object frxDBTIPOCOM_EMPRESA: TfrxMemoView
          Left = 90.708720000000000000
          Top = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COM_EMPRESA'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_EMPRESA"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_MANUTENCAO: TfrxMemoView
          Left = 170.078850000000000000
          Top = 222.992270000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'COM_MANUTENCAO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_MANUTENCAO"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_CODIGO: TfrxMemoView
          Left = 332.598640000000000000
          Top = 222.992270000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'COM_CODIGO'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_CODIGO"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_VLR_COMPONENTE: TfrxMemoView
          Left = 445.984540000000000000
          Top = 222.992270000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'COM_VLR_COMPONENTE'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_VLR_COMPONENTE"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_QTD: TfrxMemoView
          Left = 570.709030000000000000
          Top = 222.992270000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'COM_QTD'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_QTD"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_VLR_TOTAL: TfrxMemoView
          Left = 657.638220000000000000
          Top = 222.992270000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'COM_VLR_TOTAL'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_VLR_TOTAL"]')
          ParentFont = False
        end
        object frxDBTIPOCOM_MOV_ESTOQUE: TfrxMemoView
          Left = 771.024120000000000000
          Top = 222.992270000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'COM_MOV_ESTOQUE'
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBTIPO."COM_MOV_ESTOQUE"]')
          ParentFont = False
        end
        object frxDBTIPOMAN_OBSERVACAO: TfrxMemoView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 1046.929810000000000000
          Height = 52.913420000000000000
          DataSet = frxDBManutencao
          DataSetName = 'frxDBTIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#227'o Manuten'#231#227'o:'
            '[frxDBTIPO."MAN_OBSERVACAO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baWidth
          Top = 241.889920000000000000
          Width = 1046.929810000000000000
          Height = 52.913420000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#227'o Componente'
            '[frxDBTIPO."COM_OBSERVACAO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBManutencao: TfrxDBDataset
    UserName = 'frxDBTIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BNI_EMPRESA=BNI_EMPRESA'
      'BNI_NUM_SERIE=BNI_NUM_SERIE'
      'BNI_NR_NOTA=BNI_NR_NOTA'
      'BNI_FORNECEDOR=BNI_FORNECEDOR'
      'BNI_DESCRICAO=BNI_DESCRICAO'
      'BNI_TIPO=BNI_TIPO'
      'BNI_LOCALIZACAO=BNI_LOCALIZACAO'
      'BNI_ESTADO_CONSERVACAO=BNI_ESTADO_CONSERVACAO'
      'BNI_MANUTENCAO=BNI_MANUTENCAO'
      'BNI_DATA_AQUISICAO=BNI_DATA_AQUISICAO'
      'BNI_VLR_AQUISICAO=BNI_VLR_AQUISICAO'
      'BNI_VLR_RESIDUAL=BNI_VLR_RESIDUAL'
      'BNI_VLR_AGREGADO=BNI_VLR_AGREGADO'
      'BNI_VLR_ATUAL=BNI_VLR_ATUAL'
      'BNI_DEPRECIACAO=BNI_DEPRECIACAO'
      'BNI_OBSERVACAO=BNI_OBSERVACAO'
      'BNI_STATUS=BNI_STATUS'
      'BNI_CODIGO=BNI_CODIGO'
      'BNI_TEMPO_DEPRECIACAO=BNI_TEMPO_DEPRECIACAO'
      'BNI_TEMPO_RESIDUAL=BNI_TEMPO_RESIDUAL'
      'MAN_EMPRESA=MAN_EMPRESA'
      'MAN_CODIGO=MAN_CODIGO'
      'MAN_DESCRICAO=MAN_DESCRICAO'
      'MAN_OBSERVACAO=MAN_OBSERVACAO'
      'MAN_VLR_COMPONENTE=MAN_VLR_COMPONENTE'
      'MAN_VLR_MANUTENCAO=MAN_VLR_MANUTENCAO'
      'MAN_VLR_TOTAL=MAN_VLR_TOTAL'
      'MAN_AGREGA_CUSTO=MAN_AGREGA_CUSTO'
      'MAN_NUM_SERIE=MAN_NUM_SERIE'
      'MAN_BEN=MAN_BEN'
      'COM_EMPRESA=COM_EMPRESA'
      'COM_MANUTENCAO=COM_MANUTENCAO'
      'COM_CODIGO=COM_CODIGO'
      'COM_OBSERVACAO=COM_OBSERVACAO'
      'COM_VLR_COMPONENTE=COM_VLR_COMPONENTE'
      'COM_QTD=COM_QTD'
      'COM_VLR_TOTAL=COM_VLR_TOTAL'
      'COM_MOV_ESTOQUE=COM_MOV_ESTOQUE')
    DataSet = IBManutencao
    BCDToCurrency = False
    Left = 400
    Top = 149
  end
  object IBManutencao: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      '  FROM BENS_IMOBILIZADOS A'
      
        ' LEFT JOIN MANUTENCAO B ON A.BNI_EMPRESA = B.MAN_EMPRESA AND A.B' +
        'NI_CODIGO = B.MAN_BEN AND A.BNI_NUM_SERIE = B.MAN_NUM_SERIE'
      
        ' LEFT JOIN COMPONENTE C ON B.MAN_EMPRESA = C.COM_EMPRESA AND B.M' +
        'AN_CODIGO = C.COM_MANUTENCAO'
      ' WHERE A.BNI_EMPRESA = :EMPRESA AND'
      '       A.BNI_NUM_SERIE = :NUMSERIE AND'
      '       A.BNI_NR_NOTA = :NRNOTA AND'
      '       A.BNI_FORNECEDOR = :FORNECEDOR   ')
    Left = 464
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMSERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRNOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORNECEDOR'
        ParamType = ptUnknown
      end>
    object IBManutencaoBNI_EMPRESA: TIntegerField
      FieldName = 'BNI_EMPRESA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBManutencaoBNI_NUM_SERIE: TIntegerField
      FieldName = 'BNI_NUM_SERIE'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NUM_SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBManutencaoBNI_NR_NOTA: TIntegerField
      FieldName = 'BNI_NR_NOTA'
      Origin = '"BENS_IMOBILIZADOS"."BNI_NR_NOTA"'
      Required = True
    end
    object IBManutencaoBNI_FORNECEDOR: TIntegerField
      FieldName = 'BNI_FORNECEDOR'
      Origin = '"BENS_IMOBILIZADOS"."BNI_FORNECEDOR"'
      Required = True
    end
    object IBManutencaoBNI_DESCRICAO: TIBStringField
      FieldName = 'BNI_DESCRICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBManutencaoBNI_TIPO: TIntegerField
      FieldName = 'BNI_TIPO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TIPO"'
      Required = True
    end
    object IBManutencaoBNI_LOCALIZACAO: TIntegerField
      FieldName = 'BNI_LOCALIZACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_LOCALIZACAO"'
      Required = True
    end
    object IBManutencaoBNI_ESTADO_CONSERVACAO: TIntegerField
      FieldName = 'BNI_ESTADO_CONSERVACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_ESTADO_CONSERVACAO"'
      Required = True
    end
    object IBManutencaoBNI_DATA_AQUISICAO: TDateField
      FieldName = 'BNI_DATA_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DATA_AQUISICAO"'
      Required = True
    end
    object IBManutencaoBNI_VLR_AQUISICAO: TIBBCDField
      FieldName = 'BNI_VLR_AQUISICAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AQUISICAO"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoBNI_VLR_RESIDUAL: TIBBCDField
      FieldName = 'BNI_VLR_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_RESIDUAL"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoBNI_VLR_AGREGADO: TIBBCDField
      FieldName = 'BNI_VLR_AGREGADO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_AGREGADO"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoBNI_VLR_ATUAL: TIBBCDField
      FieldName = 'BNI_VLR_ATUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_VLR_ATUAL"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoBNI_DEPRECIACAO: TIBBCDField
      FieldName = 'BNI_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_DEPRECIACAO"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoBNI_OBSERVACAO: TBlobField
      FieldName = 'BNI_OBSERVACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBManutencaoBNI_STATUS: TIBStringField
      FieldName = 'BNI_STATUS'
      Origin = '"BENS_IMOBILIZADOS"."BNI_STATUS"'
      Size = 1
    end
    object IBManutencaoBNI_CODIGO: TIBStringField
      FieldName = 'BNI_CODIGO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object IBManutencaoBNI_TEMPO_DEPRECIACAO: TIntegerField
      FieldName = 'BNI_TEMPO_DEPRECIACAO'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_DEPRECIACAO"'
    end
    object IBManutencaoBNI_TEMPO_RESIDUAL: TIntegerField
      FieldName = 'BNI_TEMPO_RESIDUAL'
      Origin = '"BENS_IMOBILIZADOS"."BNI_TEMPO_RESIDUAL"'
    end
    object IBManutencaoMAN_EMPRESA: TIntegerField
      FieldName = 'MAN_EMPRESA'
      Origin = '"MANUTENCAO"."MAN_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBManutencaoMAN_CODIGO: TIntegerField
      FieldName = 'MAN_CODIGO'
      Origin = '"MANUTENCAO"."MAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBManutencaoMAN_DESCRICAO: TIBStringField
      FieldName = 'MAN_DESCRICAO'
      Origin = '"MANUTENCAO"."MAN_DESCRICAO"'
      Required = True
      Size = 100
    end
    object IBManutencaoMAN_OBSERVACAO: TBlobField
      FieldName = 'MAN_OBSERVACAO'
      Origin = '"MANUTENCAO"."MAN_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBManutencaoMAN_VLR_COMPONENTE: TIBBCDField
      FieldName = 'MAN_VLR_COMPONENTE'
      Origin = '"MANUTENCAO"."MAN_VLR_COMPONENTE"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoMAN_VLR_MANUTENCAO: TIBBCDField
      FieldName = 'MAN_VLR_MANUTENCAO'
      Origin = '"MANUTENCAO"."MAN_VLR_MANUTENCAO"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoMAN_VLR_TOTAL: TIBBCDField
      FieldName = 'MAN_VLR_TOTAL'
      Origin = '"MANUTENCAO"."MAN_VLR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoMAN_AGREGA_CUSTO: TIBStringField
      FieldName = 'MAN_AGREGA_CUSTO'
      Origin = '"MANUTENCAO"."MAN_AGREGA_CUSTO"'
      Size = 1
    end
    object IBManutencaoMAN_NUM_SERIE: TIntegerField
      FieldName = 'MAN_NUM_SERIE'
      Origin = '"MANUTENCAO"."MAN_NUM_SERIE"'
      Required = True
    end
    object IBManutencaoMAN_BEN: TIBStringField
      FieldName = 'MAN_BEN'
      Origin = '"MANUTENCAO"."MAN_BEN"'
      Required = True
      Size = 30
    end
    object IBManutencaoCOM_EMPRESA: TIntegerField
      FieldName = 'COM_EMPRESA'
      Origin = '"COMPONENTE"."COM_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBManutencaoCOM_MANUTENCAO: TIntegerField
      FieldName = 'COM_MANUTENCAO'
      Origin = '"COMPONENTE"."COM_MANUTENCAO"'
      Required = True
    end
    object IBManutencaoCOM_CODIGO: TIBStringField
      FieldName = 'COM_CODIGO'
      Origin = '"COMPONENTE"."COM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object IBManutencaoCOM_OBSERVACAO: TBlobField
      FieldName = 'COM_OBSERVACAO'
      Origin = '"COMPONENTE"."COM_OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBManutencaoCOM_VLR_COMPONENTE: TFloatField
      FieldName = 'COM_VLR_COMPONENTE'
      Origin = '"COMPONENTE"."COM_VLR_COMPONENTE"'
    end
    object IBManutencaoCOM_QTD: TIBBCDField
      FieldName = 'COM_QTD'
      Origin = '"COMPONENTE"."COM_QTD"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoCOM_VLR_TOTAL: TIBBCDField
      FieldName = 'COM_VLR_TOTAL'
      Origin = '"COMPONENTE"."COM_VLR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBManutencaoCOM_MOV_ESTOQUE: TIntegerField
      FieldName = 'COM_MOV_ESTOQUE'
      Origin = '"COMPONENTE"."COM_MOV_ESTOQUE"'
    end
  end
end
