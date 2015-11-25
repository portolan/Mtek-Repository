object R_RelatorioContabil: TR_RelatorioContabil
  Left = 0
  Top = 0
  Caption = 'R_RelatorioContabil'
  ClientHeight = 364
  ClientWidth = 532
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
      'begin'
      ''
      'end.')
    Left = 72
    Top = 37
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
            'Relatorio Tipos de Erro')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 638.740570000000000000
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
        object Memo9: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TESTE')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Funcion'#225'rio')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 566.929500000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Prioridade')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 381.732530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Tipo de Erro')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Departamento')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLANC_DIAS
        DataSetName = 'frxDBLANC_DIAS'
        RowCount = 0
        object frxDBTipoErroCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBTipoErroPESS_NOME: TfrxMemoView
          Align = baWidth
          Left = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."PESS_NOME"]')
          ParentFont = False
        end
        object frxDBTipoErroPESS_NOME1: TfrxMemoView
          Align = baWidth
          Left = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME1'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."PESS_NOME1"]')
          ParentFont = False
        end
        object frxDBTipoErroEMP_RAZAO: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."EMP_RAZAO"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 381.732530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBTipoErroTER_DESCRICAO: TfrxMemoView
          Left = 483.779840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'TER_DESCRICAO'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."TER_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_PRIORIDADE: TfrxMemoView
          Align = baWidth
          Left = 566.929500000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_STATUS: TfrxMemoView
          Align = baRight
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBTipoErroDEP_NOME: TfrxMemoView
          Align = baWidth
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'DEP_NOME'
          DataSet = frxDBLANC_DIAS
          DataSetName = 'frxDBLANC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBLANC_DIAS."DEP_NOME"]')
          ParentFont = False
        end
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
    Left = 184
    Top = 37
  end
  object IB_LANC_DIAS: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
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
    Left = 296
    Top = 37
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
end
