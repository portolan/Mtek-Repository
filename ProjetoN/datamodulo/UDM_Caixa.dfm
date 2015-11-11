object DM_Caixa: TDM_Caixa
  OldCreateOrder = False
  Height = 206
  Width = 316
  object Caixa: TIBQuery
    Database = dmBanco.Banco
    Transaction = dmBanco.TBanco
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UpdateObject = UCaixa
    Left = 40
    Top = 32
  end
  object UCaixa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from CX_CONTROLECAIXA '
      'where'
      '  CX_CODEMPRESA = :CX_CODEMPRESA and'
      '  CX_IDCAIXA = :CX_IDCAIXA')
    ModifySQL.Strings = (
      'update CX_CONTROLECAIXA'
      'set'
      '  CX_CODEMPRESA = :CX_CODEMPRESA,'
      '  CX_DATAFINAL = :CX_DATAFINAL,'
      '  CX_DATAINICIAL = :CX_DATAINICIAL,'
      '  CX_IDCAIXA = :CX_IDCAIXA,'
      '  CX_SALDOANTERIOR = :CX_SALDOANTERIOR,'
      '  CX_SALDOTOTAL = :CX_SALDOTOTAL,'
      '  CX_TOTALENTRADA = :CX_TOTALENTRADA,'
      '  CX_TOTALSAIDA = :CX_TOTALSAIDA'
      'where'
      '  CX_CODEMPRESA = :OLD_CX_CODEMPRESA and'
      '  CX_IDCAIXA = :OLD_CX_IDCAIXA')
    InsertSQL.Strings = (
      'insert into CX_CONTROLECAIXA'
      
        '  (CX_CODEMPRESA, CX_DATAFINAL, CX_DATAINICIAL, CX_IDCAIXA, CX_S' +
        'ALDOANTERIOR, '
      '   CX_SALDOTOTAL, CX_TOTALENTRADA, CX_TOTALSAIDA)'
      'values'
      
        '  (:CX_CODEMPRESA, :CX_DATAFINAL, :CX_DATAINICIAL, :CX_IDCAIXA, ' +
        ':CX_SALDOANTERIOR, '
      '   :CX_SALDOTOTAL, :CX_TOTALENTRADA, :CX_TOTALSAIDA)')
    DeleteSQL.Strings = (
      'delete from CX_CONTROLECAIXA'
      'where'
      '  CX_CODEMPRESA = :OLD_CX_CODEMPRESA and'
      '  CX_IDCAIXA = :OLD_CX_IDCAIXA')
    Left = 120
    Top = 48
  end
  object DS_Caixa: TDataSource
    DataSet = Caixa
    Left = 184
    Top = 96
  end
end
