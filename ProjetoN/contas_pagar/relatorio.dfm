object relcontasp: Trelcontasp
  Left = 0
  Top = 0
  ActiveControl = Button1
  Caption = 'Relat'#243'rio'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object Label2: TLabel
    Left = 14
    Top = 68
    Width = 51
    Height = 13
    Caption = 'Data inicial'
  end
  object Label3: TLabel
    Left = 19
    Top = 109
    Width = 46
    Height = 13
    Caption = 'Data final'
  end
  object Button1: TButton
    Left = 304
    Top = 128
    Width = 115
    Height = 44
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 71
    Top = 66
    Width = 122
    Height = 21
    Date = 42319.885829166670000000
    Time = 42319.885829166670000000
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 71
    Top = 107
    Width = 122
    Height = 21
    Date = 42319.885927951390000000
    Time = 42319.885927951390000000
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 71
    Top = 21
    Width = 58
    Height = 21
    TabOrder = 3
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = relatorio
    BCDToCurrency = False
    Left = 360
    Top = 16
  end
  object frxContasperiodo: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42318.562514340300000000
    ReportOptions.LastChange = 42324.889102638890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 16
    Datasets = <
      item
        DataSet = frxDB
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
      ColumnWidth = 31.666666666666700000
      BackPictureStretched = False
      object RelatorioPeriodo: TfrxReportTitle
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 105.826840000000000000
          Top = 41.574830000000000000
          Width = 506.457020000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO CONTAS A PAGAR POR PER'#205'ODO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FINANCEIRO - CONTAS A PAGAR')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740570000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CODIGO"]')
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          Left = 60.472480000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
        end
        object frxDBDataset1STATUS: TfrxMemoView
          Left = 313.700990000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
        end
        object frxDBDataset1PESSOA: TfrxMemoView
          Left = 343.937230000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'PESSOA'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PESSOA"]')
        end
        object frxDBDataset1VALOR: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR"]')
        end
        object frxDBDataset1VENCIMENTO: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."VENCIMENTO"]')
        end
      end
    end
  end
  object relatorio: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from relcontasp (:emp, :dt_inicial, :dt_final)')
    Left = 304
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_final'
        ParamType = ptInput
      end>
    object relatorioVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"RELCONTASP"."VENCIMENTO"'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/0000;1;'
    end
    object relatorioVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"RELCONTASP"."VALOR"'
      Precision = 18
      Size = 2
    end
    object relatorioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"RELCONTASP"."CODIGO"'
    end
    object relatorioDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"RELCONTASP"."DESCRICAO"'
      Size = 320
    end
    object relatorioPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"RELCONTASP"."PESSOA"'
      Size = 320
    end
    object relatorioSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"RELCONTASP"."STATUS"'
      Size = 4
    end
    object relatorioTOTALREL: TIBBCDField
      FieldName = 'TOTALREL'
      Origin = '"RELCONTASP"."TOTALREL"'
      Precision = 18
      Size = 2
    end
  end
end
