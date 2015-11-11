object DM_financeiro: TDM_financeiro
  OldCreateOrder = False
  Height = 271
  Width = 415
  object contasbancarias: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 40
    Top = 16
  end
  object D_contasbancarias: TDataSource
    Left = 40
    Top = 80
  end
  object U_contasbancarias: TIBUpdateSQL
    Left = 40
    Top = 152
  end
end
