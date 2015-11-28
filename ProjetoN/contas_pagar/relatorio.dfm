object relcontasp: Trelcontasp
  Left = 0
  Top = 0
  ActiveControl = Button1
  Caption = 'Relat'#243'rio'
  ClientHeight = 151
  ClientWidth = 430
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
    Left = 25
    Top = 16
    Width = 46
    Height = 13
    Caption = 'EMPRESA'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 68
    Height = 13
    Caption = 'DATA INICIAL'
  end
  object Label3: TLabel
    Left = 12
    Top = 99
    Width = 59
    Height = 13
    Caption = 'DATA FINAL'
  end
  object Button1: TButton
    Left = 280
    Top = 73
    Width = 115
    Height = 44
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 81
    Top = 8
    Width = 77
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 81
    Top = 48
    Width = 120
    Height = 21
    Date = 42336.516184016200000000
    Time = 42336.516184016200000000
    TabOrder = 2
  end
  object DateTimePicker2: TDateTimePicker
    Left = 81
    Top = 91
    Width = 120
    Height = 21
    Date = 42336.516665868050000000
    Time = 42336.516665868050000000
    TabOrder = 3
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = relatorio
    BCDToCurrency = False
    Left = 369
    Top = 8
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
    ReportOptions.LastChange = 42336.512904838000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 8
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
          Left = 574.488560000000000000
          Width = 143.622140000000000000
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
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'TTP_CODIGO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."TTP_CODIGO"]')
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          Left = 64.252010000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'TTP_DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."TTP_DESCRICAO"]')
        end
        object frxDBDataset1STATUS: TfrxMemoView
          Left = 313.700990000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'TTP_SITUACAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."TTP_SITUACAO"]')
        end
        object frxDBDataset1PESSOA: TfrxMemoView
          Left = 343.937230000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PESS_NOME"]')
        end
        object frxDBDataset1VALOR: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TTP_VL_TOTAL'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[frxDBDataset1."TTP_VL_TOTAL"]')
        end
        object frxDBDataset1VENCIMENTO: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TTP_DT_VENCIMENTO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."TTP_DT_VENCIMENTO"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620435C27
            64334449474F5C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          Left = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620444553
            4352495C2763375C2763334F5C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Left = 302.362400000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620535441
            5455535C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          Left = 351.496290000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620504553
            534F415C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Rich5: TfrxRichView
          Left = 563.149970000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362056454E
            43494D454E544F5C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Rich6: TfrxRichView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31303234307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362056414C
            4F525C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object relatorio: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.ttp_codigo,'
      '          a.ttp_descricao,'
      '          a.ttp_situacao,'
      '          b.pess_nome,'
      '          a.ttp_vl_total,'
      '          a.ttp_dt_vencimento'
      ''
      'from titulosp a'
      'inner join pessoas b on b.pess_codigo=a.ttp_pes_codigo'
      'where a.ttp_situacao='#39'A'#39'  and a.ttp_emp_codigo=:empresa '
      'and a.ttp_dt_vencimento between :dataInicial and :dataFinal')
    Left = 208
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataInicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFinal'
        ParamType = ptInput
      end>
    object relatorioTTP_CODIGO: TIntegerField
      FieldName = 'TTP_CODIGO'
      Origin = '"TITULOSP"."TTP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object relatorioTTP_DESCRICAO: TIBStringField
      FieldName = 'TTP_DESCRICAO'
      Origin = '"TITULOSP"."TTP_DESCRICAO"'
      Size = 100
    end
    object relatorioTTP_SITUACAO: TIBStringField
      FieldName = 'TTP_SITUACAO'
      Origin = '"TITULOSP"."TTP_SITUACAO"'
      Size = 1
    end
    object relatorioPESS_NOME: TIBStringField
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object relatorioTTP_VL_TOTAL: TIBBCDField
      FieldName = 'TTP_VL_TOTAL'
      Origin = '"TITULOSP"."TTP_VL_TOTAL"'
      Precision = 18
      Size = 2
    end
    object relatorioTTP_DT_VENCIMENTO: TDateField
      FieldName = 'TTP_DT_VENCIMENTO'
      Origin = '"TITULOSP"."TTP_DT_VENCIMENTO"'
    end
  end
end
