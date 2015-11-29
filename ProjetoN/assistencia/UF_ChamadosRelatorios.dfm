object F_ChamadosRelatorios: TF_ChamadosRelatorios
  Left = 0
  Top = 0
  Caption = 'Relatorios'
  ClientHeight = 258
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 233
    Height = 129
    Caption = 'Chamados por Data'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 161
      Top = 96
      Width = 70
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 41
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 41
      Top = 59
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object editDtInicial: TMaskEdit
      Left = 100
      Top = 29
      Width = 78
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object editDtFinal: TMaskEdit
      Left = 100
      Top = 56
      Width = 78
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Chamados: TGroupBox
    Left = 0
    Top = 135
    Width = 193
    Height = 126
    Caption = 'Chamados  do Dia'
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 41
      Top = 56
      Width = 97
      Height = 22
      Caption = 'Chamados do Dia'
      OnClick = SpeedButton2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 239
    Top = 0
    Width = 226
    Height = 129
    Caption = 'Tipo de Erro'
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 136
      Top = 96
      Width = 65
      Height = 22
      Caption = 'Gerar'
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 12
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Tipo de Erro'
    end
    object Edit1: TEdit
      Left = 76
      Top = 37
      Width = 61
      Height = 21
      TabOrder = 0
      OnClick = Edit1Click
    end
  end
  object frxDBChamadoData: TfrxDBDataset
    UserName = 'frxDBChamadoData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CHA_CODIGO=CHA_CODIGO'
      'CHA_EMPRESA=CHA_EMPRESA'
      'CHA_DEPARTAMENTO=CHA_DEPARTAMENTO'
      'CHA_FUNCIONARIO=CHA_FUNCIONARIO'
      'CHA_PROPRIETARIO=CHA_PROPRIETARIO'
      'CHA_DESCRICAO=CHA_DESCRICAO'
      'CHA_PRIORIDADE=CHA_PRIORIDADE'
      'CHA_STATUS=CHA_STATUS'
      'CHA_DATA_ENTRADA=CHA_DATA_ENTRADA'
      'CHA_TIPO_ERRO=CHA_TIPO_ERRO'
      'CHA_DATA_SAIDA=CHA_DATA_SAIDA'
      'EMP_RAZAO=EMP_RAZAO'
      'DEP_NOME=DEP_NOME'
      'PESS_NOME=PESS_NOME'
      'PESS_NOME1=PESS_NOME1'
      'TER_DESCRICAO=TER_DESCRICAO')
    DataSet = IB_ChamadoData
    BCDToCurrency = False
    Left = 280
    Top = 64
  end
  object IB_ChamadoDia: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao,'
      '             c.dep_nome,'
      '             D.pess_nome,'
      '             e.pess_nome,'
      '             f.ter_descricao'
      'FROM CHAMADOS A'
      'INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod'
      'INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD'
      '                          AND A.CHA_EMPRESA = C.DEP_EMPRESAR'
      'INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo'
      'inner join pessoas E on a.cha_proprietario = e.pess_codigo'
      'inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo'
      'where a.cha_data_entrada = current_date')
    Left = 400
    Top = 152
    object IB_ChamadoDiaCHA_CODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CHA_CODIGO'
      Origin = '"CHAMADOS"."CHA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDiaCHA_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CHA_EMPRESA'
      Origin = '"CHAMADOS"."CHA_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDiaCHA_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CHA_DEPARTAMENTO'
      Origin = '"CHAMADOS"."CHA_DEPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDiaCHA_FUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcionario'
      FieldName = 'CHA_FUNCIONARIO'
      Origin = '"CHAMADOS"."CHA_FUNCIONARIO"'
    end
    object IB_ChamadoDiaCHA_PROPRIETARIO: TIntegerField
      DisplayLabel = 'Proprietario'
      FieldName = 'CHA_PROPRIETARIO'
      Origin = '"CHAMADOS"."CHA_PROPRIETARIO"'
    end
    object IB_ChamadoDiaCHA_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 100
    end
    object IB_ChamadoDiaCHA_PRIORIDADE: TIBStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
    end
    object IB_ChamadoDiaCHA_STATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
      Size = 15
    end
    object IB_ChamadoDiaCHA_DATA_ENTRADA: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
    end
    object IB_ChamadoDiaCHA_TIPO_ERRO: TIntegerField
      DisplayLabel = 'Tipo de Erro'
      FieldName = 'CHA_TIPO_ERRO'
      Origin = '"CHAMADOS"."CHA_TIPO_ERRO"'
      Required = True
    end
    object IB_ChamadoDiaCHA_DATA_SAIDA: TDateField
      DisplayLabel = 'Data de Saida'
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_ChamadoDiaEMP_RAZAO: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object IB_ChamadoDiaDEP_NOME: TIBStringField
      DisplayLabel = 'Departamento'
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object IB_ChamadoDiaPESS_NOME: TIBStringField
      DisplayLabel = 'Proprietario'
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_ChamadoDiaPESS_NOME1: TIBStringField
      DisplayLabel = 'Funcionario'
      FieldName = 'PESS_NOME1'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_ChamadoDiaTER_DESCRICAO: TIBStringField
      DisplayLabel = 'Tipo de Erro'
      FieldName = 'TER_DESCRICAO'
      Origin = '"TIPOS_ERROS"."TER_DESCRICAO"'
      Required = True
    end
  end
  object frxDBChamadoDia: TfrxDBDataset
    UserName = 'frxDBChamadoDia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CHA_CODIGO=CHA_CODIGO'
      'CHA_EMPRESA=CHA_EMPRESA'
      'CHA_DEPARTAMENTO=CHA_DEPARTAMENTO'
      'CHA_FUNCIONARIO=CHA_FUNCIONARIO'
      'CHA_PROPRIETARIO=CHA_PROPRIETARIO'
      'CHA_DESCRICAO=CHA_DESCRICAO'
      'CHA_PRIORIDADE=CHA_PRIORIDADE'
      'CHA_STATUS=CHA_STATUS'
      'CHA_DATA_ENTRADA=CHA_DATA_ENTRADA'
      'CHA_TIPO_ERRO=CHA_TIPO_ERRO'
      'CHA_DATA_SAIDA=CHA_DATA_SAIDA'
      'EMP_RAZAO=EMP_RAZAO'
      'DEP_NOME=DEP_NOME'
      'PESS_NOME=PESS_NOME'
      'PESS_NOME1=PESS_NOME1'
      'TER_DESCRICAO=TER_DESCRICAO')
    DataSet = IB_ChamadoDia
    BCDToCurrency = False
    Left = 288
    Top = 152
  end
  object IB_ChamadoData: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao,'
      '             c.dep_nome,'
      '             D.pess_nome,'
      '             e.pess_nome,'
      '             f.ter_descricao'
      'FROM CHAMADOS A'
      'INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod'
      'INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD'
      '                          AND A.CHA_EMPRESA = C.DEP_EMPRESAR'
      'INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo'
      'inner join pessoas E on a.cha_proprietario = e.pess_codigo'
      'inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo'
      'where a.cha_data_entrada between :dtinicial and :dtfinal')
    Left = 400
    Top = 64
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
    object IB_ChamadoDataCHA_CODIGO: TIntegerField
      FieldName = 'CHA_CODIGO'
      Origin = '"CHAMADOS"."CHA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDataCHA_EMPRESA: TIntegerField
      FieldName = 'CHA_EMPRESA'
      Origin = '"CHAMADOS"."CHA_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDataCHA_DEPARTAMENTO: TIntegerField
      FieldName = 'CHA_DEPARTAMENTO'
      Origin = '"CHAMADOS"."CHA_DEPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_ChamadoDataCHA_FUNCIONARIO: TIntegerField
      FieldName = 'CHA_FUNCIONARIO'
      Origin = '"CHAMADOS"."CHA_FUNCIONARIO"'
    end
    object IB_ChamadoDataCHA_PROPRIETARIO: TIntegerField
      FieldName = 'CHA_PROPRIETARIO'
      Origin = '"CHAMADOS"."CHA_PROPRIETARIO"'
    end
    object IB_ChamadoDataCHA_DESCRICAO: TIBStringField
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 100
    end
    object IB_ChamadoDataCHA_PRIORIDADE: TIBStringField
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
    end
    object IB_ChamadoDataCHA_STATUS: TIBStringField
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
      Size = 15
    end
    object IB_ChamadoDataCHA_DATA_ENTRADA: TDateField
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
    end
    object IB_ChamadoDataCHA_TIPO_ERRO: TIntegerField
      FieldName = 'CHA_TIPO_ERRO'
      Origin = '"CHAMADOS"."CHA_TIPO_ERRO"'
      Required = True
    end
    object IB_ChamadoDataCHA_DATA_SAIDA: TDateField
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_ChamadoDataEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Size = 60
    end
    object IB_ChamadoDataDEP_NOME: TIBStringField
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object IB_ChamadoDataPESS_NOME: TIBStringField
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_ChamadoDataPESS_NOME1: TIBStringField
      FieldName = 'PESS_NOME1'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_ChamadoDataTER_DESCRICAO: TIBStringField
      FieldName = 'TER_DESCRICAO'
      Origin = '"TIPOS_ERROS"."TER_DESCRICAO"'
      Required = True
    end
  end
  object frxChamadoData: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42333.867145798610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 64
    Datasets = <
      item
        DataSet = frxDBChamadoData
        DataSetName = 'frxDBChamadoData'
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
            'Chamados por Data')
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
          Width = 79.370130000000000000
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
          Left = 128.504020000000000000
          Width = 79.370130000000000000
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
          Left = 642.520100000000000000
          Width = 75.590600000000000000
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
          Left = 563.149970000000000000
          Width = 79.370130000000000000
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
          Left = 374.173470000000000000
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
          Align = baWidth
          Left = 476.220780000000000000
          Width = 86.929190000000000000
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
          Width = 71.811070000000000000
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
          Left = 279.685220000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
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
        DataSet = frxDBChamadoData
        DataSetName = 'frxDBChamadoData'
        RowCount = 0
        object frxDBChamadoDataCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBChamadoDataPESS_NOME1: TfrxMemoView
          Align = baWidth
          Left = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME1'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."PESS_NOME1"]')
          ParentFont = False
        end
        object frxDBChamadoDataEMP_RAZAO: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."EMP_RAZAO"]')
          ParentFont = False
        end
        object frxDBChamadoDataCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 374.173470000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBChamadoDataTER_DESCRICAO: TfrxMemoView
          Align = baWidth
          Left = 476.220780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'TER_DESCRICAO'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."TER_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBChamadoDataCHA_PRIORIDADE: TfrxMemoView
          Align = baWidth
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBChamadoDataCHA_STATUS: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBChamadoDataPESS_NOME11: TfrxMemoView
          Align = baWidth
          Left = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."PESS_NOME"]')
          ParentFont = False
        end
        object frxDBChamadoDataDEP_NOME: TfrxMemoView
          Align = baWidth
          Left = 279.685220000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DEP_NOME'
          DataSet = frxDBChamadoData
          DataSetName = 'frxDBChamadoData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoData."DEP_NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object frxChamadoDia: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.806204733800000000
    ReportOptions.LastChange = 42332.558201504600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 152
    Datasets = <
      item
        DataSet = frxDBChamadoDia
        DataSetName = 'frxDBChamadoDia'
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
            'Chamados do Dia')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBChamadoDia
        DataSetName = 'frxDBChamadoDia'
        RowCount = 0
        object frxDBChamadoDiaCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBChamadoDiaPESS_NOME: TfrxMemoView
          Align = baWidth
          Left = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."PESS_NOME"]')
          ParentFont = False
        end
        object frxDBChamadoDiaPESS_NOME1: TfrxMemoView
          Align = baWidth
          Left = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME1'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."PESS_NOME1"]')
          ParentFont = False
        end
        object frxDBChamadoDiaEMP_RAZAO: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."EMP_RAZAO"]')
          ParentFont = False
        end
        object frxDBChamadoDiaCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 381.732530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBChamadoDiaTER_DESCRICAO: TfrxMemoView
          Align = baWidth
          Left = 483.779840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'TER_DESCRICAO'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."TER_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBChamadoDiaCHA_PRIORIDADE: TfrxMemoView
          Align = baWidth
          Left = 566.929500000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBChamadoDiaCHA_STATUS: TfrxMemoView
          Align = baLeft
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBChamadoDiaDEP_NOME: TfrxMemoView
          Align = baWidth
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'DEP_NOME'
          DataSet = frxDBChamadoDia
          DataSetName = 'frxDBChamadoDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBChamadoDia."DEP_NOME"]')
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
          Align = baWidth
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
    end
  end
  object frxTipoErro: TfrxReport
    Version = '5.1.5'
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
    Left = 176
    Top = 224
    Datasets = <
      item
        DataSet = frxDBTipoErro
        DataSetName = 'frxDBTipoErro'
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
            'Chamados pertecentes ao erro:')
          ParentFont = False
        end
        object frxDBTipoErroTER_DESCRICAO1: TfrxMemoView
          Left = 453.543600000000000000
          Top = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TER_DESCRICAO'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTipoErro."TER_DESCRICAO"]')
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
        DataSet = frxDBTipoErro
        DataSetName = 'frxDBTipoErro'
        RowCount = 0
        object frxDBTipoErroCHA_CODIGO: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_CODIGO'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."CHA_CODIGO"]')
          ParentFont = False
        end
        object frxDBTipoErroPESS_NOME: TfrxMemoView
          Align = baWidth
          Left = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."PESS_NOME"]')
          ParentFont = False
        end
        object frxDBTipoErroPESS_NOME1: TfrxMemoView
          Align = baWidth
          Left = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PESS_NOME1'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."PESS_NOME1"]')
          ParentFont = False
        end
        object frxDBTipoErroEMP_RAZAO: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."EMP_RAZAO"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_DATA_ENTRADA: TfrxMemoView
          Align = baWidth
          Left = 381.732530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_DATA_ENTRADA'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."CHA_DATA_ENTRADA"]')
          ParentFont = False
        end
        object frxDBTipoErroTER_DESCRICAO: TfrxMemoView
          Left = 483.779840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'TER_DESCRICAO'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."TER_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_PRIORIDADE: TfrxMemoView
          Align = baWidth
          Left = 566.929500000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_PRIORIDADE'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."CHA_PRIORIDADE"]')
          ParentFont = False
        end
        object frxDBTipoErroCHA_STATUS: TfrxMemoView
          Align = baRight
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'CHA_STATUS'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."CHA_STATUS"]')
          ParentFont = False
        end
        object frxDBTipoErroDEP_NOME: TfrxMemoView
          Align = baWidth
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'DEP_NOME'
          DataSet = frxDBTipoErro
          DataSetName = 'frxDBTipoErro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBTipoErro."DEP_NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBTipoErro: TfrxDBDataset
    UserName = 'frxDBTipoErro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CHA_CODIGO=CHA_CODIGO'
      'CHA_EMPRESA=CHA_EMPRESA'
      'CHA_DEPARTAMENTO=CHA_DEPARTAMENTO'
      'CHA_FUNCIONARIO=CHA_FUNCIONARIO'
      'CHA_PROPRIETARIO=CHA_PROPRIETARIO'
      'CHA_DESCRICAO=CHA_DESCRICAO'
      'CHA_PRIORIDADE=CHA_PRIORIDADE'
      'CHA_STATUS=CHA_STATUS'
      'CHA_DATA_ENTRADA=CHA_DATA_ENTRADA'
      'CHA_TIPO_ERRO=CHA_TIPO_ERRO'
      'CHA_DATA_SAIDA=CHA_DATA_SAIDA'
      'EMP_RAZAO=EMP_RAZAO'
      'DEP_NOME=DEP_NOME'
      'PESS_NOME=PESS_NOME'
      'PESS_NOME1=PESS_NOME1'
      'TER_DESCRICAO=TER_DESCRICAO')
    DataSet = IB_TipoErro
    BCDToCurrency = False
    Left = 288
    Top = 224
  end
  object IB_TipoErro: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '      B.emp_razao,'
      '      c.dep_nome,'
      '      D.pess_nome,'
      '      e.pess_nome,'
      '      f.ter_descricao'
      'FROM CHAMADOS A'
      'INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod'
      'INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD'
      '                          AND A.CHA_EMPRESA = C.DEP_EMPRESAR'
      'INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo'
      'inner join pessoas E on a.cha_proprietario = e.pess_codigo'
      'inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo'
      'where f.ter_codigo = :erro')
    Left = 400
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'erro'
        ParamType = ptUnknown
      end>
    object IB_TipoErroCHA_CODIGO: TIntegerField
      FieldName = 'CHA_CODIGO'
      Origin = '"CHAMADOS"."CHA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_TipoErroCHA_EMPRESA: TIntegerField
      FieldName = 'CHA_EMPRESA'
      Origin = '"CHAMADOS"."CHA_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_TipoErroCHA_DEPARTAMENTO: TIntegerField
      FieldName = 'CHA_DEPARTAMENTO'
      Origin = '"CHAMADOS"."CHA_DEPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_TipoErroCHA_FUNCIONARIO: TIntegerField
      FieldName = 'CHA_FUNCIONARIO'
      Origin = '"CHAMADOS"."CHA_FUNCIONARIO"'
      Required = True
    end
    object IB_TipoErroCHA_PROPRIETARIO: TIntegerField
      FieldName = 'CHA_PROPRIETARIO'
      Origin = '"CHAMADOS"."CHA_PROPRIETARIO"'
      Required = True
    end
    object IB_TipoErroCHA_DESCRICAO: TIBStringField
      FieldName = 'CHA_DESCRICAO'
      Origin = '"CHAMADOS"."CHA_DESCRICAO"'
      Size = 100
    end
    object IB_TipoErroCHA_PRIORIDADE: TIBStringField
      FieldName = 'CHA_PRIORIDADE'
      Origin = '"CHAMADOS"."CHA_PRIORIDADE"'
    end
    object IB_TipoErroCHA_STATUS: TIBStringField
      FieldName = 'CHA_STATUS'
      Origin = '"CHAMADOS"."CHA_STATUS"'
      Size = 15
    end
    object IB_TipoErroCHA_DATA_ENTRADA: TDateField
      FieldName = 'CHA_DATA_ENTRADA'
      Origin = '"CHAMADOS"."CHA_DATA_ENTRADA"'
    end
    object IB_TipoErroCHA_TIPO_ERRO: TIntegerField
      FieldName = 'CHA_TIPO_ERRO'
      Origin = '"CHAMADOS"."CHA_TIPO_ERRO"'
      Required = True
    end
    object IB_TipoErroCHA_DATA_SAIDA: TDateField
      FieldName = 'CHA_DATA_SAIDA'
      Origin = '"CHAMADOS"."CHA_DATA_SAIDA"'
    end
    object IB_TipoErroEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Required = True
      Size = 60
    end
    object IB_TipoErroDEP_NOME: TIBStringField
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object IB_TipoErroPESS_NOME: TIBStringField
      FieldName = 'PESS_NOME'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_TipoErroPESS_NOME1: TIBStringField
      FieldName = 'PESS_NOME1'
      Origin = '"PESSOAS"."PESS_NOME"'
      Size = 100
    end
    object IB_TipoErroTER_DESCRICAO: TIBStringField
      FieldName = 'TER_DESCRICAO'
      Origin = '"TIPOS_ERROS"."TER_DESCRICAO"'
      Required = True
    end
  end
end
