object dmBanco: TdmBanco
  OldCreateOrder = False
  Height = 181
  Width = 197
  object TBanco: TIBTransaction
    Active = True
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 80
    Top = 88
  end
  object Banco: TIBDatabase
    Connected = True
    DatabaseName = '\\localhost\C:\Users\Danilo de Canini\Desktop\BD\DATABASE.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ASCII')
    LoginPrompt = False
    DefaultTransaction = TBanco
    ServerType = 'IBServer'
    Left = 80
    Top = 32
  end
end
