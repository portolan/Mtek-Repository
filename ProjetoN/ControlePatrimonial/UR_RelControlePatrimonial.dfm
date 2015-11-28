object R_RelatorioControlePatrimonial: TR_RelatorioControlePatrimonial
  Left = 0
  Top = 0
  Caption = 'R_RelatorioControlePatrimonial'
  ClientHeight = 202
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Active = True
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
end
