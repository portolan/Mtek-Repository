object dmBanco: TdmBanco
  OldCreateOrder = False
  Height = 181
  Width = 197
  object TBanco: TIBTransaction
    Left = 80
    Top = 88
  end
  object Banco: TIBDatabase
    DatabaseName = 'C:\Users\Matheus\Desktop\PEDIDOS\PEDIDOS.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TBanco
    ServerType = 'IBServer'
    Left = 80
    Top = 32
  end
end
