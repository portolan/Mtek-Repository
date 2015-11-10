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
    ReportOptions.LastChange = 42317.884900972230000000
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
      object MD_Chamados: TfrxMasterData
        FillType = ftBrush
        Height = 937.323440000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = frxDBChamado
        DataSetName = 'frxDBChamado'
        RowCount = 0
        object frxDBChamadoCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Memo.UTF8W = (
            '[frxDBChamado."CHA_CODIGO"]')
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Codigo')
        end
      end
    end
  end
  object frxDBChamado: TfrxDBDataset
    UserName = 'frxDBChamado'
    CloseDataSource = False
    DataSet = DM_Servico.IB_Chamado
    BCDToCurrency = False
    Left = 104
    Top = 16
  end
end
