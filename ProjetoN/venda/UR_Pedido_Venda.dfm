object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 303
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxDBPedidoData: TfrxDBDataset
    UserName = 'frxDBPedidoData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_NUMERO=PED_NUMERO'
      'PED_PESSOA=PED_PESSOA'
      'PED_SEQUENCIA=PED_SEQUENCIA'
      'PED_SITUACAO=PED_SITUACAO'
      'PED_EMPRESA=PED_EMPRESA'
      'PED_DEPOSITO=PED_DEPOSITO'
      'PED_PRODUTO=PED_PRODUTO'
      'PED_DESCRICAO=PED_DESCRICAO'
      'PED_UNIDADE=PED_UNIDADE'
      'PED_QUANTIDADE=PED_QUANTIDADE'
      'PED_LISTA_PRECO=PED_LISTA_PRECO'
      'PED_DESCONTO=PED_DESCONTO'
      'PED_QTD_DISPONIVEL=PED_QTD_DISPONIVEL'
      'PED_VLRUNITARIO=PED_VLRUNITARIO'
      'PED_VLRTOTAL=PED_VLRTOTAL'
      'PED_REAJUSTE=PED_REAJUSTE'
      'PED_DTPEDIDO=PED_DTPEDIDO'
      'PED_DTENTRADA=PED_DTENTRADA'
      'PED_DTPRAZOENTREGA=PED_DTPRAZOENTREGA'
      'PED_ORDEMVENDA=PED_ORDEMVENDA'
      'PED_NOTAFISCAL=PED_NOTAFISCAL'
      'EMP_RAZAO=EMP_RAZAO'
      'DEP_NOME=DEP_NOME'
      'PRO_DESCRICAO=PRO_DESCRICAO')
    DataSet = IB_PedidoData
    BCDToCurrency = False
    Left = 200
    Top = 32
  end
  object IB_PedidoData: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT A.*,'
      '             B.emp_razao,'
      '             C.dep_nome,'
      '             D.pro_descricao'
      '      FROM PEDIDOVENDA A'
      'INNER JOIN DEPARTAMENTO C ON A.ped_deposito = C.DEP_COD'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR   '
      'INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA'
      '                      AND A.PED_PRODUTO = D.PRO_CODIGO'
      'INNER join EMPRESA B ON A.ped_empresa = B.emp_cod'
      
        '                                   AND A.PED_EMPRESA = C.DEP_EMP' +
        'RESAR'
      'where a.ped_dtentrada between :dtinicial and :dtfinal'
      ''
      '')
    Left = 320
    Top = 32
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
    object IB_PedidoDataPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = '"PEDIDOVENDA"."PED_NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_PedidoDataPED_PESSOA: TIBStringField
      FieldName = 'PED_PESSOA'
      Origin = '"PEDIDOVENDA"."PED_PESSOA"'
      Required = True
      Size = 60
    end
    object IB_PedidoDataPED_SEQUENCIA: TIntegerField
      FieldName = 'PED_SEQUENCIA'
      Origin = '"PEDIDOVENDA"."PED_SEQUENCIA"'
    end
    object IB_PedidoDataPED_SITUACAO: TIBStringField
      FieldName = 'PED_SITUACAO'
      Origin = '"PEDIDOVENDA"."PED_SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object IB_PedidoDataPED_EMPRESA: TIntegerField
      FieldName = 'PED_EMPRESA'
      Origin = '"PEDIDOVENDA"."PED_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IB_PedidoDataPED_DEPOSITO: TIntegerField
      FieldName = 'PED_DEPOSITO'
      Origin = '"PEDIDOVENDA"."PED_DEPOSITO"'
      Required = True
    end
    object IB_PedidoDataPED_PRODUTO: TIntegerField
      FieldName = 'PED_PRODUTO'
      Origin = '"PEDIDOVENDA"."PED_PRODUTO"'
      Required = True
    end
    object IB_PedidoDataPED_DESCRICAO: TIBStringField
      FieldName = 'PED_DESCRICAO'
      Origin = '"PEDIDOVENDA"."PED_DESCRICAO"'
      Size = 60
    end
    object IB_PedidoDataPED_UNIDADE: TIntegerField
      FieldName = 'PED_UNIDADE'
      Origin = '"PEDIDOVENDA"."PED_UNIDADE"'
    end
    object IB_PedidoDataPED_QUANTIDADE: TIBBCDField
      FieldName = 'PED_QUANTIDADE'
      Origin = '"PEDIDOVENDA"."PED_QUANTIDADE"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_LISTA_PRECO: TIBBCDField
      FieldName = 'PED_LISTA_PRECO'
      Origin = '"PEDIDOVENDA"."PED_LISTA_PRECO"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_DESCONTO: TIBBCDField
      FieldName = 'PED_DESCONTO'
      Origin = '"PEDIDOVENDA"."PED_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_QTD_DISPONIVEL: TIBBCDField
      FieldName = 'PED_QTD_DISPONIVEL'
      Origin = '"PEDIDOVENDA"."PED_QTD_DISPONIVEL"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_VLRUNITARIO: TIBBCDField
      FieldName = 'PED_VLRUNITARIO'
      Origin = '"PEDIDOVENDA"."PED_VLRUNITARIO"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_VLRTOTAL: TIBBCDField
      FieldName = 'PED_VLRTOTAL'
      Origin = '"PEDIDOVENDA"."PED_VLRTOTAL"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_REAJUSTE: TIBBCDField
      FieldName = 'PED_REAJUSTE'
      Origin = '"PEDIDOVENDA"."PED_REAJUSTE"'
      Precision = 18
      Size = 2
    end
    object IB_PedidoDataPED_DTPEDIDO: TDateField
      FieldName = 'PED_DTPEDIDO'
      Origin = '"PEDIDOVENDA"."PED_DTPEDIDO"'
    end
    object IB_PedidoDataPED_DTENTRADA: TDateField
      FieldName = 'PED_DTENTRADA'
      Origin = '"PEDIDOVENDA"."PED_DTENTRADA"'
    end
    object IB_PedidoDataPED_DTPRAZOENTREGA: TDateField
      FieldName = 'PED_DTPRAZOENTREGA'
      Origin = '"PEDIDOVENDA"."PED_DTPRAZOENTREGA"'
    end
    object IB_PedidoDataPED_ORDEMVENDA: TIntegerField
      FieldName = 'PED_ORDEMVENDA'
      Origin = '"PEDIDOVENDA"."PED_ORDEMVENDA"'
      Required = True
    end
    object IB_PedidoDataPED_NOTAFISCAL: TIntegerField
      FieldName = 'PED_NOTAFISCAL'
      Origin = '"PEDIDOVENDA"."PED_NOTAFISCAL"'
    end
    object IB_PedidoDataEMP_RAZAO: TIBStringField
      FieldName = 'EMP_RAZAO'
      Origin = '"EMPRESA"."EMP_RAZAO"'
      Required = True
      Size = 60
    end
    object IB_PedidoDataDEP_NOME: TIBStringField
      FieldName = 'DEP_NOME'
      Origin = '"DEPARTAMENTO"."DEP_NOME"'
      Required = True
      Size = 40
    end
    object IB_PedidoDataPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Required = True
      Size = 60
    end
  end
  object frxRelatorio: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42336.865006666700000000
    ReportOptions.LastChange = 42336.900733460700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 32
    Datasets = <
      item
        DataSet = frxDBPedidoData
        DataSetName = 'frxDBPedidoData'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBPedidoData
        DataSetName = 'frxDBPedidoData'
        RowCount = 0
        object frxDBPedidoDataPED_NUMERO: TfrxMemoView
          Left = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PED_NUMERO'
          DataSet = frxDBPedidoData
          DataSetName = 'frxDBPedidoData'
          Memo.UTF8W = (
            '[frxDBPedidoData."PED_NUMERO"]')
        end
        object frxDBPedidoDataPRO_DESCRICAO: TfrxMemoView
          Left = 362.834880000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_DESCRICAO'
          DataSet = frxDBPedidoData
          DataSetName = 'frxDBPedidoData'
          Memo.UTF8W = (
            '[frxDBPedidoData."PRO_DESCRICAO"]')
        end
        object frxDBPedidoDataPED_PESSOA: TfrxMemoView
          Left = 124.724490000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PED_PESSOA'
          DataSet = frxDBPedidoData
          DataSetName = 'frxDBPedidoData'
          Memo.UTF8W = (
            '[frxDBPedidoData."PED_PESSOA"]')
        end
      end
    end
  end
end
