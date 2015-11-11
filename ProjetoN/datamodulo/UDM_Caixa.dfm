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
    Left = 120
    Top = 48
  end
  object DS_Caixa: TDataSource
    DataSet = Caixa
    Left = 184
    Top = 96
  end
end
