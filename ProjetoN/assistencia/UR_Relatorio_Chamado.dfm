object UR_Relatorio: TUR_Relatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 268
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxChamado: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42320.812314919000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 16
    Datasets = <
      item
        DataSet = frxDBChamado
        DataSetName = 'frxDBChamado'
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Chamado')
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBChamado
        DataSetName = 'frxDBChamado'
        RowCount = 0
        object frxDBChamadoCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_FUNCIONARIO: TfrxMemoView
          Align = baWidth
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_FUNCIONARIO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_FUNCIONARIO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_PROPRIETARIO: TfrxMemoView
          Align = baWidth
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PROPRIETARIO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_PROPRIETARIO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_PRIORIDADE: TfrxMemoView
          Align = baWidth
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_STATUS: TfrxMemoView
          Align = baRight
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_TIPO_ERRO: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_TIPO_ERRO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamado."CHA_TIPO_ERRO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Funcionario')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Proprietario')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Prioridade')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tipo de Erro')
          ParentFont = False
        end
      end
    end
  end
  object frxDBChamado: TfrxDBDataset
    UserName = 'frxDBChamado'
    CloseDataSource = False
    DataSource = DM_Servico.DS_Relatorio_Chamado
    BCDToCurrency = False
    Left = 104
    Top = 16
  end
end
