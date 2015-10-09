object DM_Banco: TDM_Banco
  OldCreateOrder = False
  Height = 131
  Width = 85
  object Banco: TIBDatabase
    DatabaseName = 
      'C:\Users\Willian\Desktop\Projeto Pipin'#227'o\Projeto ERP\trunk\Proje' +
      'toN\BD\DATABASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = TBanco
    ServerType = 'IBServer'
    Left = 24
    Top = 8
  end
  object TBanco: TIBTransaction
    DefaultDatabase = Banco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 24
    Top = 64
  end
end
