object FEstoqueAjuda: TFEstoqueAjuda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estoque - Ajuda'
  ClientHeight = 298
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 77
    Height = 13
    Caption = 'Erros Comuns'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 27
    Width = 438
    Height = 13
    Caption = 
      'N'#227'o se pode excluir uma prateleira ou bloco se tiver algum produ' +
      'to cadastrado no estoque.'
  end
  object Label3: TLabel
    Left = 40
    Top = 46
    Width = 367
    Height = 13
    Caption = 
      'N'#227'o se pode excluir um produto do estoque se houver algum movime' +
      'nta'#231#227'o.'
  end
  object Label4: TLabel
    Left = 40
    Top = 65
    Width = 337
    Height = 13
    Caption = 
      'N'#227'o se pode excluir uma categoria se tiver algum produto cadastr' +
      'ado.'
  end
  object Label5: TLabel
    Left = 40
    Top = 84
    Width = 315
    Height = 13
    Caption = 'N'#227'o se pode excluir uma marca se tiver algum produt cadastrado.'
  end
  object Label6: TLabel
    Left = 133
    Top = 261
    Width = 314
    Height = 13
    Caption = 'Conforme surgirem novidades no Sistema, surgir'#227'o novas regras.'
  end
  object Label7: TLabel
    Left = 135
    Top = 280
    Width = 312
    Height = 13
    Caption = 'A equipe de suporte agradece sua aten'#231#227'o By : Willian M. Freire.'
  end
  object Label8: TLabel
    Left = 8
    Top = 136
    Width = 165
    Height = 13
    Caption = 'Lista de Atalhos de relat'#243'rios'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 22
    Top = 155
    Width = 169
    Height = 13
    Caption = '1 - Produtos com estoque Negativo'
  end
  object Label10: TLabel
    Left = 238
    Top = 155
    Width = 129
    Height = 13
    Caption = '2 - Movimenta'#231#227'o por data'
  end
  object Label11: TLabel
    Left = 406
    Top = 155
    Width = 100
    Height = 13
    Caption = '3 - Produto por Valor'
  end
  object Label12: TLabel
    Left = 22
    Top = 174
    Width = 69
    Height = 13
    Caption = 'pro - Produtos'
  end
  object Label13: TLabel
    Left = 238
    Top = 174
    Width = 64
    Height = 13
    Caption = 'est - Estoque'
  end
  object Label14: TLabel
    Left = 406
    Top = 174
    Width = 104
    Height = 13
    Caption = 'mov - Movimenta'#231#245'es'
  end
  object Label15: TLabel
    Left = 406
    Top = 193
    Width = 76
    Height = 13
    Caption = 'prat - Prateleira'
  end
  object Label16: TLabel
    Left = 238
    Top = 193
    Width = 54
    Height = 13
    Caption = 'bloc - Bloco'
  end
  object Label17: TLabel
    Left = 22
    Top = 193
    Width = 62
    Height = 13
    Caption = 'marc - Marca'
  end
end
