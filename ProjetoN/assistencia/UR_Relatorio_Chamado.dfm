object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    ReportOptions.LastChange = 42313.893854953710000000
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
        Height = 506.457020000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = frxDBChamado
        DataSetName = 'frxDBChamado'
        RowCount = 0
        object frxDBChamadoCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Top = 22.677180000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_EMPRESA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_EMPRESA'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_EMPRESA"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_DEPARTAMENTO: TfrxMemoView
          Align = baWidth
          Left = 83.149660000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DEPARTAMENTO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_DEPARTAMENTO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_FUNCIONARIO: TfrxMemoView
          Align = baLeft
          Top = 166.299320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_FUNCIONARIO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_FUNCIONARIO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_PROPRIETARIO: TfrxMemoView
          Left = 192.756030000000000000
          Top = 166.299320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PROPRIETARIO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_PROPRIETARIO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 162.519790000000000000
          Top = 109.606370000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_DATA_SAIDA: TfrxMemoView
          Left = 385.512060000000000000
          Top = 166.299320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_SAIDA'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_DATA_SAIDA"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_PRIORIDADE: TfrxMemoView
          Align = baLeft
          Top = 222.992270000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_STATUS: TfrxMemoView
          Left = 566.929500000000000000
          Top = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_STATUS1: TfrxMemoView
          Align = baRight
          Left = 597.165740000000000000
          Top = 109.606370000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_TIPO_ERRO: TfrxMemoView
          Left = 257.008040000000000000
          Top = 222.992270000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_TIPO_ERRO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_TIPO_ERRO"]')
          ParentFont = False
        end
        object frxDBChamadoCHA_DESCRICAO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 279.685220000000000000
          Width = 702.992580000000000000
          Height = 222.992270000000000000
          DataField = 'CHA_DESCRICAO'
          DataSet = frxDBChamado
          DataSetName = 'frxDBChamado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBChamado."CHA_DESCRICAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 245.669450000000000000
          Top = 41.574830000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Departamento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 597.165740000000000000
          Top = 79.370130000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Funcionario')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 196.535560000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Proprietario')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 389.291590000000000000
          Top = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de Saida')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Top = 200.315090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Prioridade')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 264.567100000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de erro')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 570.709030000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 257.008040000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Align = baWidth
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Chamados do Dia')
        ParentFont = False
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
