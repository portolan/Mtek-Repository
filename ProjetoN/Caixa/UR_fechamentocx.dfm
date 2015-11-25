object REL_fechamentocx: TREL_fechamentocx
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Fechamento Caixa'
  ClientHeight = 201
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lb_inicialcx: TLabel
    Left = 23
    Top = 80
    Width = 58
    Height = 14
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_finalcx: TLabel
    Left = 175
    Top = 80
    Width = 52
    Height = 14
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbn_empresa: TLabel
    Left = 23
    Top = 26
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 23
    Top = 100
    Width = 129
    Height = 21
    Date = 42318.985177812500000000
    Time = 42318.985177812500000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 175
    Top = 100
    Width = 129
    Height = 21
    Date = 42318.985325868050000000
    Time = 42318.985325868050000000
    TabOrder = 1
  end
  object btn_relfechamcaixa: TButton
    Left = 96
    Top = 144
    Width = 145
    Height = 49
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 2
    OnClick = btn_relfechamcaixaClick
  end
  object edit_empresa: TEdit
    Left = 23
    Top = 45
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object frx_fechamento: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42333.811644641200000000
    ReportOptions.LastChange = 42333.861490335700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 8
    Datasets = <
      item
        DataSet = frxDB_fechamento
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_fechamento
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DESCRICAO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_fechamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
        end
        object frxDBDataset1DATA: TfrxMemoView
          Left = 230.551330000000000000
          Top = 11.338590000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frxDB_fechamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DATA"]')
        end
        object frxDBDataset1VALOR: TfrxMemoView
          Left = 449.764070000000000000
          Top = 11.338590000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDB_fechamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR"]')
        end
      end
    end
  end
  object IBQ_fechamento: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from REL_FECHAMENTOCAIXA(:codigoemp,:datainicial);')
    Left = 272
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigoemp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'datainicial'
        ParamType = ptInput
      end>
    object IBQ_fechamentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"REL_FECHAMENTOCAIXA"."DESCRICAO"'
      Size = 100
    end
    object IBQ_fechamentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"REL_FECHAMENTOCAIXA"."DATA"'
    end
    object IBQ_fechamentoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"REL_FECHAMENTOCAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
  end
  object frxDB_fechamento: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DESCRICAO=DESCRICAO'
      'DATA=DATA'
      'VALOR=VALOR')
    DataSet = IBQ_fechamento
    BCDToCurrency = False
    Left = 280
    Top = 144
  end
end
