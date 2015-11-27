object R_RelatorioContabil: TR_RelatorioContabil
  Left = 0
  Top = 0
  Caption = 'R_RelatorioContabil'
  ClientHeight = 364
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxLANC_DIAS: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42332.561738969900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '')
    Left = 40
    Top = 29
    Datasets = <
      item
        DataSet = frxDBLANC_DIAS
        DataSetName = 'frxDBLANC_DIAS'
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
            'Relatorio de Lan'#231'amentos por Per'#237'odo')
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
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'N'#186' Lote')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'N'#186' Lan'#231'amento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 226.771800000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 268.346630000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Conta D'#233'bito')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 366.614410000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Conta Cr'#233'dito')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 464.882190000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLANC_DIAS
        DataSetName = 'frxDBLANC_DIAS'
        RowCount = 0
        object frxDBLANC_DIASLANC_VALOR: TfrxMemoView
          Left = 604.724800000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_VALOR"]')
        end
        object frxDBLANC_DIASLANC_TIPO: TfrxMemoView
          Left = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_TIPO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_TIPO"]')
        end
        object frxDBLANC_DIASLANC_DEBITO: TfrxMemoView
          Left = 268.346630000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_DEBITO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_DEBITO"]')
        end
        object frxDBLANC_DIASLANC_CREDITO: TfrxMemoView
          Left = 370.393940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_CREDITO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_CREDITO"]')
        end
        object frxDBLANC_DIASLANC_HISTORICO: TfrxMemoView
          Left = 461.102660000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_HISTORICO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_HISTORICO"]')
        end
        object frxDBLANC_DIASLANC_NR_LOTE: TfrxMemoView
          Left = 79.370130000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_NR_LOTE'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_NR_LOTE"]')
        end
        object frxDBLANC_DIASLANC_NR_LANCAMENTO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_NR_LANCAMENTO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_NR_LANCAMENTO"]')
        end
        object frxDBLANC_DIASLANC_DT_LANCAMENTO: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'LANC_DT_LANCAMENTO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."LANC_DT_LANCAMENTO"]')
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
          'M'#243'dulo Contabilidade - ERP')
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
  object frxDBLANC_DIAS: TfrxDBDataset
    UserName = 'frxDBLANC_DIAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LANC_NR_LOTE=LANC_NR_LOTE'
      'LANC_NR_LANCAMENTO=LANC_NR_LANCAMENTO'
      'LANC_DT_LANCAMENTO=LANC_DT_LANCAMENTO'
      'LANC_DEBITO=LANC_DEBITO'
      'LANC_CREDITO=LANC_CREDITO'
      'LANC_HISTORICO=LANC_HISTORICO'
      'LANC_VALOR=LANC_VALOR'
      'LANC_TIPO=LANC_TIPO')
    DataSet = IB_LANC_DIAS
    BCDToCurrency = False
    Left = 128
    Top = 29
  end
  object IB_LANC_DIAS: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.lanc_nr_lote,'
      '       a.lanc_nr_lancamento,'
      '       a.lanc_dt_lancamento,'
      '       a.lanc_debito,'
      '       a.lanc_credito,'
      '       a.lanc_historico,'
      '       a.lanc_valor,'
      '       a.lanc_tipo from lancamentos a'
      
        '       where a.lanc_dt_lancamento between :dtinicial and :dtfina' +
        'l')
    Left = 216
    Top = 29
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
    object IB_LANC_DIASLANC_NR_LOTE: TIntegerField
      FieldName = 'LANC_NR_LOTE'
      Origin = '"LANCAMENTOS"."LANC_NR_LOTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_LANC_DIASLANC_NR_LANCAMENTO: TIntegerField
      FieldName = 'LANC_NR_LANCAMENTO'
      Origin = '"LANCAMENTOS"."LANC_NR_LANCAMENTO"'
      Required = True
    end
    object IB_LANC_DIASLANC_DT_LANCAMENTO: TDateField
      FieldName = 'LANC_DT_LANCAMENTO'
      Origin = '"LANCAMENTOS"."LANC_DT_LANCAMENTO"'
      Required = True
    end
    object IB_LANC_DIASLANC_DEBITO: TIBStringField
      FieldName = 'LANC_DEBITO'
      Origin = '"LANCAMENTOS"."LANC_DEBITO"'
      Size = 8
    end
    object IB_LANC_DIASLANC_CREDITO: TIBStringField
      FieldName = 'LANC_CREDITO'
      Origin = '"LANCAMENTOS"."LANC_CREDITO"'
      Size = 8
    end
    object IB_LANC_DIASLANC_HISTORICO: TIBStringField
      FieldName = 'LANC_HISTORICO'
      Origin = '"LANCAMENTOS"."LANC_HISTORICO"'
      Required = True
      Size = 100
    end
    object IB_LANC_DIASLANC_VALOR: TIBBCDField
      FieldName = 'LANC_VALOR'
      Origin = '"LANCAMENTOS"."LANC_VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
    object IB_LANC_DIASLANC_TIPO: TIBStringField
      FieldName = 'LANC_TIPO'
      Origin = '"LANCAMENTOS"."LANC_TIPO"'
      Required = True
      Size = 1
    end
  end
  object frxRazaoS: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42334.936665925900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 29
    Datasets = <
      item
        DataSet = frxDBRazaoS
        DataSetName = 'frxDBLANC_DIAS'
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
        object Date: TfrxMemoView
          Left = 627.401980000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Saldo por Empresa')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 540.472790000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'SALDO TOTAL')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 170.078850000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'NOME DA EMPRESA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 52376
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 234.330860000000000000
        ParentFont = False
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRazaoS
        DataSetName = 'frxDBLANC_DIAS'
        RowCount = 0
        object frxDBLANC_DIASEMP_CNPJ: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_CNPJ'
          DataSet = frxDBRazaoS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."EMP_CNPJ"]')
        end
        object frxDBLANC_DIASEMP_RAZAO: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBRazaoS
          DataSetName = 'frxDBLANC_DIAS'
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."EMP_RAZAO"]')
        end
        object frxDBLANC_DIASSUM: TfrxMemoView
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRazaoS
          DataSetName = 'frxDBLANC_DIAS'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."SUM"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 476.220780000000000000
        Width = 718.110700000000000000
      end
      object Memo5: TfrxMemoView
        Align = baCenter
        Left = 253.228510000000000000
        Top = 468.661720000000000000
        Width = 211.653680000000000000
        Height = 30.236240000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Memo.UTF8W = (
          'M'#243'dulo de Contabilidade - ERP')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 627.401980000000000000
        Top = 468.661720000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
    end
  end
  object frxDBRazaoS: TfrxDBDataset
    UserName = 'frxDBLANC_DIAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUM=SUM'
      'EMP_CNPJ=EMP_CNPJ'
      'EMP_RAZAO=EMP_RAZAO')
    DataSet = IB_RazaoS
    BCDToCurrency = False
    Left = 472
    Top = 29
  end
  object IB_RazaoS: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select sum(a.LANC_VALOR),b.emp_cnpj, b.emp_razao  from lancament' +
        'os a'
      'inner join empresa b on a.lanc_emp  = b.emp_cod'
      'where a.lanc_emp = :CODEMPRESA'
      'group by 2,3')
    Left = 560
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMPRESA'
        ParamType = ptUnknown
      end>
    object IB_RazaoSSUM: TIBBCDField
      FieldName = 'SUM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IB_RazaoSEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = '"EMPRESA"."EMP_CNPJ"'
      Required = True
      Size = 14
    end
    object IB_RazaoSEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Required = True
      Size = 60
    end
  end
end
